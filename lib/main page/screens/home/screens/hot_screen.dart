import 'package:car_app/common/utils/constants/app_textstyle.dart';
import 'package:car_app/main%20page/screens/home/widgets/cars_widget.dart';
import 'package:flutter/material.dart';

class HotScreen extends StatefulWidget {
  const HotScreen({Key? key}) : super(key: key);

  @override
  State<HotScreen> createState() => _HotScreenState();
}

class _HotScreenState extends State<HotScreen> {
  List<Widget> carModelList = [
    const CarWidget(
        carImage: Image(image: AssetImage('assets/images/red.png')),
        CarDes:
            'THE FIRST GENERATION OF THE FORD THUNDERBIRD IS \n IS A TWO SEAT CONVERTABLE',
        carName: '1950S THUNDERBIRD'),
    const CarWidget(
        carImage: Image(image: AssetImage('assets/images/blue.png')),
        CarDes:
            'BUFFORI IS THE HAND BILD AUTO MOBILE \n ISPIRED BY THE 1950s COUPES',
        carName: 'BUFORI')
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              const Padding(
                  padding: EdgeInsets.symmetric(vertical: 25, horizontal: 5)),
              Text(
                'NEAR YOU',
                style: AppTextStyle.kbold,
              )
            ],
          ),
          SizedBox(
            height: 400,
            width: 220,
            child: ListView.builder(
                itemCount: carModelList.length,
                scrollDirection: Axis.vertical,
                itemBuilder: ((context, index) {
                  return SizedBox(
                    // height: 150,
                    // width: 220,
    
                    child: carModelList[index],
                  );
                })),
          ),
          Row(
          
            children: [
               const Padding(padding: EdgeInsets.only(left: 160)),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFF59271d),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
               
                onPressed: () {}, child: const Text('VIEWALL'))
            ],
          ),
           Container(
            height: 180,
            width: 220,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(20)),
              color: Colors.white,
              
            ),
            child: const ClipRRect(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(20)),
              child: Image(image:AssetImage('assets/images/add.at'),fit: BoxFit.fill,)),
          )
        ],
      ),
    );
  }
}
