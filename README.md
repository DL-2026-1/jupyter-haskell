# Reproducibility Environment – ​​Deep Learning in Haskell

This repository serves as the **reproducibility component** for Deep Learning experiments developed in Haskell. The environment automatically integrates a custom Deep Learning library with a Jupyter server configured with the **IHaskell** kernel using Docker.

## 🎯 Notebook Objectives

The primary purpose of this environment is to demonstrate the practical operation of the Deep Learning engine developed in Haskell. The main notebook showcases an **extremely simple Convolutional Neural Network (CNN)**—free from complex hyperparameters—while applying and comparing different activation functions supported by the library:
* **ReLU** (Rectified Linear Unit)
* **Leaky ReLU**
* **Tanh** (Hyperbolic Tangent)
* **Sigmoid**

---

## 🛠️ Prerequisites

Make sure you have the following tools installed on your machine:
* [Docker](https://www.docs.docker.com/get-docker/)
* [Docker Compose](https://docs.docker.com/compose/install/)

---

## 🚀 How to Start the Container (Tutorial)

1. Clone this repository to your local machine and navigate to the root folder:
   ```bash
   git clone <repository-url>
   cd <folder-name>

2. Now you can access the jupyter server on: **[localhost:8888](http://localhost:8888)**