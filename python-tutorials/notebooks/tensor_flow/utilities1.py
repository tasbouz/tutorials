import itertools
import numpy as np
import matplotlib.pyplot as plt
import tensorflow as tf
from sklearn.metrics import confusion_matrix, accuracy_score, precision_score, recall_score, f1_score 


def classification_evaluation(y_test, y_pred):
    
    y_test, y_pred = tf.round(y_test), tf.round(y_pred)

    # create the confusion matrix
    cm = confusion_matrix(y_test, y_pred)

    # normalize confusion matrix
    cm_norm = cm.astype("float") / cm.sum(axis=1)[:, np.newaxis] 
    n_classes = cm.shape[0]

    # prettify confusion matrix
    fig, ax = plt.subplots(figsize=(10,10))

    cax = ax.matshow(cm, cmap=plt.cm.Blues)
    fig.colorbar(cax)

    labels = np.arange(cm.shape[0])

    ax.set(title="Confusion Matrix",
           xlabel="Predicted Label",
           ylabel="True Label",
           xticks=np.arange(n_classes),
           yticks=np.arange(n_classes),
           xticklabels=labels,
           yticklabels=labels)

    ax.xaxis.set_label_position("bottom")
    ax.xaxis.tick_bottom()
    ax.xaxis.label.set_size(20)
    ax.yaxis.label.set_size(20)
    ax.title.set_size(20)

    threshold = (cm.max() + cm.min()) / 2.

    for i, j in itertools.product(range(cm.shape[0]), range(cm.shape[1])):
        plt.text(j, i, f"{cm[i, j]} ({cm_norm[i, j]*100:.1f}%)",
                 horizontalalignment="center",
                 color="white" if cm[i, j] > threshold else "black",
                 size=15)
    
    plt.show()
    
    accuracy = round(accuracy_score(y_test, y_pred),3)
    print("Accuracy = ", accuracy)
    
    precision = round(precision_score(y_test, y_pred),3)
    print("Precision = ", precision)
    
    recall = round(recall_score(y_test, y_pred),3)
    print("Recall = ", recall)
    
    f_1_score = round(f1_score(y_test, y_pred),3)
    print("F1 Score = ", f_1_score)

