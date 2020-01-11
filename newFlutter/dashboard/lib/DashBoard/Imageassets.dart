

import 'package:flutter/cupertino.dart';

class ImageAssetClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/transferfund.png');
    Image image = Image(
      image: assetImage,
      width: 50.0,
      height: 50.0,
    );
    return image;
  }
}
class ImageAssetClass2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/paybill.png');
    Image image = Image(
      image: assetImage,
      width: 50.0,
      height: 50.0,
    );
    return image;
  }
}
class ImageAssetClass3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/makepayment.png');
    Image image = Image(
      image: assetImage,
      width: 50.0,
      height: 50.0,
    );
    return image;
  }
}
class ImageAssetClass4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/recharge.png');
    Image image = Image(
      image: assetImage,
      width: 50.0,
      height: 50.0,
    );
    return image;
  }
}