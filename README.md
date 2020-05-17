# swift-micrograd

swift implementation of Andrej Karpathy's micro grad engine

# TODO - Swifty Refactor

I am going to do a truly swifty reimplementation of Andrej's micro grad engine by taking advantage of all the cool features
swift has to offer. The final goal will be the ability create a small MLP from scratch to fit the moons dataset

<!-- prettier-ignore -->
| STATUS | FEATURE   | DESCRIPTION  |
|---|-----------|--------------|
| 🎉 | Autodiff layer | Figure out how to use swifts auto diff mode to create a layer that can automatically compute its gradients |
| ❗ | MLP | Create Multi Layer Perceptrons of arbitrary size |

# 1:! Port

To get my feet wet, I essentially did a 1 to 1 port of andrej's python code. While this technically works,
it's really dumb because it doesn't take advantage of all the cool stuff swift has to offer

<!-- prettier-ignore -->
| STATUS | FEATURE   | DESCRIPTION  |
|---|-----------|--------------|
| 🎉 | engine.swift/Value | Value class with +, *, **, ReLU methods (plus differentiability on all those methods) |
| 🎉 | nn.swift/Neuron | Neuron class with weights, biases, and nonlinearities |
| 🎉 | nn.swift/Layer | Layer Comprised of Neurons with Weights, Biases, and RelU nonlinearities |
| ❗ | nn.swift/MLP | Multi Layer Perceptron comprised of arbitrary layers |
