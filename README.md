# CVPR-Deep-Globe-Challenge-2018

##  Image-to-Image Translation with Conditional Adversarial Networks


![](https://i.imgur.com/UswgC3L.png)

1. Architecture Model 

![](https://i.imgur.com/R0lHnKu.png)


2.  Loss Function: 
    + The objective of a conditional GAN
 ![](https://i.imgur.com/07ePumj.png)
 
    +  Using L1 distance rather than L2 as L1 encourages less blurring
![](https://i.imgur.com/EEHvzco.png)


    + Final objective is
![](https://i.imgur.com/qfHzYm0.png)

    + By adding L1 term, we can not only make the generated image become realer, but also constrain the synthetic image to the conditional image.

3.  Network architectures

    + Generator
![](https://i.imgur.com/zzpePV7.png)
    + U-Net
![](https://i.imgur.com/wT3sNu2.png)

    + PatchGAN
Usually, the discriminator distiguish the full sized image.
But *PatchGAN* tries to classify if each N × N patch in an image is real or fake. We run this discriminator convolutationally across the image, averaging all responses to provide the ultimate output of D.

4. Experiments (for 100 epoch)

    + ![](https://i.imgur.com/ijLVn09.png)![](https://i.imgur.com/K8BIu1o.png)
    + ![](https://i.imgur.com/p7AVG1T.png)![](https://i.imgur.com/suLte1s.png)



## Unpaired Image-to-Image Translation using Cycle-Consistent Adversarial Networks

![](https://i.imgur.com/Z4u0qn5.jpg)

1. Paied v.s. Unpaired

![](https://i.imgur.com/zGl44V5.png)

2. Model 

![](https://i.imgur.com/IokNzY4.png)

3. Loss function

    + Adversarial Loss: 
![](https://i.imgur.com/WQh0Aew.png)

    + Cycle Consistency Loss:
![](https://i.imgur.com/7GV7FOE.png)

    + Full Objective: 
![](https://i.imgur.com/TSV8WmA.png)


4. Experiments

    + ![](https://i.imgur.com/seCiRtB.jpg)![](https://i.imgur.com/CtL1f1L.jpg)



    + ![](https://i.imgur.com/m9NVSzv.jpg) ![](https://i.imgur.com/SJevTYq.jpg)
    + with different loss(the generator will compute difference between syn. and g.t)

        ![](https://i.imgur.com/Kbqu3FQ.jpg) ![](https://i.imgur.com/JhjL5pf.jpg)
