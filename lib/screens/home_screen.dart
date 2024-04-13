import 'package:flutter/material.dart';
import 'package:my_app/components/asset_image_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
      children: [
        Row(
          mainAxisAlignment:MainAxisAlignment.spaceAround,
          children: [Text('Romance'), Text('Horor'), Text('Komedi')],
        ),
        
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            AssetImageWidget(
              imagePath: 'assets/images/romance1.jpeg',
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
             AssetImageWidget(
              imagePath: 'assets/images/horor1.jpeg',
              width: 100,
              height: 100,
              fit: BoxFit.cover,
             ),
              AssetImageWidget(
              imagePath: 'assets/images/komedi1.jpeg',
              width: 100,
              height: 100,
              fit: BoxFit.cover,
              )
        
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            AssetImageWidget(
              imagePath: 'assets/images/romance2.jpeg',
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
             AssetImageWidget(
              imagePath: 'assets/images/horor2.jpeg',
              width: 100,
              height: 100,
              fit: BoxFit.cover,
             ),
              AssetImageWidget(
              imagePath: 'assets/images/komedi2.jpeg',
              width: 100,
              height: 100,
              fit: BoxFit.cover,
              )
        
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            AssetImageWidget(
              imagePath: 'assets/images/romance3.jpeg',
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
             AssetImageWidget(
              imagePath: 'assets/images/horor3.jpeg',
              width: 100,
              height: 100,
              fit: BoxFit.cover,
             ),
              AssetImageWidget(
              imagePath: 'assets/images/komedi3.jpeg',
              width: 100,
              height: 100,
              fit: BoxFit.cover,
              )
        
          ],
        ),
      
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            AssetImageWidget(
              imagePath: 'assets/images/romance5.jpeg',
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
             AssetImageWidget(
              imagePath: 'assets/images/horor5.jpeg',
              width: 100,
              height: 100,
              fit: BoxFit.cover,
             ),
              AssetImageWidget(
              imagePath: 'assets/images/comedi5.jpeg',
              width: 100,
              height: 100,
              fit: BoxFit.cover,
              )
        
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            AssetImageWidget(
              imagePath: 'assets/images/romance6.jpeg',
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
             AssetImageWidget(
              imagePath: 'assets/images/horor6.jpeg',
              width: 100,
              height: 100,
              fit: BoxFit.cover,
             ),
              AssetImageWidget(
              imagePath: 'assets/images/komedi6.jpeg',
              width: 100,
              height: 100,
              fit: BoxFit.cover,
              )
        
          ],
        )
        
      ],
    ));
  }
}