# FasterDNN
Deep Neural Networks(include DNN/CNN/RNN) run on mobile devices

* Model Opt: Compress/Prune model architecture/parameters
* Code  Opt: Optimize `matrix * matrix` or `matrix * vector` computation
* Hardware Opt: 

## 
| Paper  | Compression | Pruning| Software | Hardware | DNNs      | 
| :------:| :----------:|:------:|:--------:| :---: | :---:     |
| [Learning both Weights and Connections for Efficient Neural Networks](http://arxiv.org/abs/1506.02626)     | √ |  〤 | × | | DNN/CNN|
| [Deep Compression: Compressing Deep Neural Networks with Pruning, Trained Quantization and Huffman Coding](http://arxiv.org/abs/1510.00149)     | √|  √ | × | | DNN/CNN|
| [EIE: Efficient Inference Engine on Compressed Deep Neural Network](https://arxiv.org/abs/1602.01528)     | √ |   | √ | √ | DNN|
| [Improving the speed of neural networks on CPUs](http://static.googleusercontent.com/media/research.google.com/en//pubs/archive/37631.pdf)     | √ |   | √ |  | DNN|
| [RESHAPING DEEP NEURAL NETWORK FOR FAST DECODING BY NODE-PRUNING](http://ieeexplore.ieee.org/xpl/login.jsp?tp=&arnumber=6853595&url=http%3A%2F%2Fieeexplore.ieee.org%2Fiel7%2F6844297%2F6853544%2F06853595.pdf%3Farnumber%3D6853595)     |  | √ | |  | DNN|
| [PERSONALIZED SPEECH RECOGNITION ON MOBILE DEVICES](http://arxiv.org/pdf/1603.03185.pdf)    | √ |   | |  |RNN|
| [Optimizing Performance of Recurrent Neural Networks on GPUs](https://arxiv.org/abs/1604.01946)| |   | √ |  √ | RNN|
| [Restructuring of Deep Neural Network Acoustic Models with Singular Value Decomposition](http://research.microsoft.com/pubs/201364/svd_v2.pdf)     | √ |   |  |  | DNN|
| [SqueezeNet: AlexNet-level accuracy with 50x fewer parameters and <0.5MB model size](http://arxiv.org/abs/1602.07360) | √ | √   | |  | CNN|

## Automatic Speech Recognition
* [FINE CONTEXT, LOW-RANK, SOFTPLUS DEEP NEURAL NETWORKS FOR MOBILE SPEECH RECOGNITION](http://static.googleusercontent.com/media/research.google.com/en//pubs/archive/42028.pdf)
* []()

## Benchmarks
* [convnet-benchmarks](https://github.com/soumith/convnet-benchmarks)
* [deepmark](https://github.com/DeepMark/deepmark)

