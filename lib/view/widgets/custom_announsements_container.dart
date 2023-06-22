import 'package:ashtar_challenge/view/home/components/custom_title.dart';
import 'package:flutter/material.dart';
import '../home/components/announsement_item.dart';


class CustomAnnounsementsContainer extends StatelessWidget {
  const CustomAnnounsementsContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        margin: const EdgeInsets.all(8),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const CustomTitle(title: 'Announsements', subTitle: 'subTitle'),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25)
                  .copyWith(right: 15),
              child: const Column(
                children: [
                  AnnounsementItem(
                    name: 'Mr.Ahmed Mostafa',
                    degree: 'Math 101',
                    
                    text:
                        'custom input data custom input data custom input data custom input data custom input data custom input data',
                  ),
                  AnnounsementItem(
                      name: 'Mrs.Salma Ahmed',
                      degree: 'Math 101',
                      text:
                          'custom input data custom input data custom input data custom input data custom input data custom input data'),
                  AnnounsementItem(
                    name: 'Mr Ahmed Mostafa',
                    degree: 'Physics 102',
                    text:
                        'custom input data custom input data custom input data custom input data custom input data custom input data',
                  ),
                  AnnounsementItem(
                    name: 'Mr Ahmed Mostafa',
                    degree: 'Math 101',
                    text:
                        'custom input data custom input data custom input data custom input data custom input data custom input data',
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
