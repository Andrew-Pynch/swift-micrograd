# swift-micrograd

swift implementation of Andrej Karpathy's micro grad engine

# TODO

<!-- prettier-ignore -->
| STATUS | FEATURE   | DESCRIPTION  |
|---|-----------|--------------|
| 🎉 | engine.swift/Value | Value class with +, *, **, ReLU methods (plus differentiability on all those methods) |
| 🎉 | nn.swift/Neuron | Neuron class with weights, biases, and nonlinearities |
| 🎉 | nn.swift/Layer | Layer Comprised of Neurons with Weights, Biases, and RelU nonlinearities |
| ❗ | nn.swift/MLP | Multi Layer Perceptron comprised of arbitrary layers |
| ❗ | nn.swift/Module | Torch like nn.Module class from which all networks inherit |
