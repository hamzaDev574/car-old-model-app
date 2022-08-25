import 'package:car_app/common/utils/constants/app_textstyle.dart';
import 'package:flutter/material.dart';

class CarWidget extends StatelessWidget {
  const CarWidget({Key? key,
  required this.carImage,
  required this.CarDes,
  required this.carName,
  }) : super(key: key);
  final Image carImage;
  final String carName;
  final String CarDes;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      margin: const EdgeInsets.symmetric(vertical:20),
        duration: const Duration(milliseconds: 300),
        decoration: const BoxDecoration(
          color: Color(0xFF729882),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              topLeft: Radius.circular(40),
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20)),
        ),
        height: 150,
        width: 220,
        child: Stack(
          clipBehavior: Clip.none,
          children:    [
             Positioned(
                height: 150,
                width: 170,
                bottom: 60.0,
                child:carImage),
               const Positioned(
                height: 40,
                width: 40,
                left: 175,
                child: Image(image: AssetImage('assets/images/Like.png'))),
                Positioned(
                  top: 70,
                  left: 15,
                  child: Text(carName,style: AppTextStyle.kbold.copyWith(color: Colors.white,fontSize: 15),),),
                  Positioned(
                    top: 100,
                    left: 15,
                    child: Text(CarDes,style: AppTextStyle.ksimple.copyWith(fontSize: 10,color: Colors.white))),
             
                
          ],
        ));
  }
}
