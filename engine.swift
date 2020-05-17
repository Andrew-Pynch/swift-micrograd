import TensorFlow
import Foundation

// Type aliases are super useful and save a lot of time
// Especially when we are manually typing out tensors for testing purposes...
typealias F = Float
typealias T = Tensor

class Value {
    var data: F
    var grad: F
    
    init(data: F, grad: F=0) {
        self.data = data
        self.grad = grad
    }

    func _add(_ other: Value) -> Value {
        var out = Value(data: (self.data + other.data))
        
        func _backward() {
            self.grad += out.grad
            other.grad += other.grad
        }
        _backward()
        
        return out
    } 

    func _mul(_ other: Value) -> Value {
        var out = Value(data: (self.data * other.data)) 
        
        func _backward() {
            self.grad += other.data * out.grad
            other.grad += self.data * out.grad
        }
        _backward()
        
        return out
    }

    func _pow(_ other: Value) -> Value {
        var out = (Value(data: pow(self.data, other.data)))
        
        func _backward() {
            self.grad += (other.data * pow(self.data, (other.data-1))) * out.grad
        }
        _backward()
        
        return out
    }

    func _relu() -> Value {
        if self.data < 0 {
            return Value(data: 0)
        } else {
            return Value(data: self.data)
        }
    }

    func _neg() -> Value {
        self.data *= -1
        return self
    }
}
// var test = Value(data: 1.0)
// print(test.data)