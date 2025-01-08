import 'package:flutter/material.dart';
import 'package:liver_io/utils/constants.dart';


class TabButton extends StatelessWidget {
  final VoidCallback onTap;
  final String icon;
  final bool isSelected;
  
  const TabButton({super.key, required this.onTap, required this.isSelected, required this.icon});

  @override
  Widget build(BuildContext context) {
    return   InkWell(
              onTap: onTap,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    icon,
                    width: 15,
                    height: 15,
                    color: isSelected ? Constants.white : Constants.red,
                    ), 
                  
                ],
              ),
            );
  }
}