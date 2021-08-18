import 'package:get/get.dart';
import 'package:wallpaper/models/slide_model.dart';

class SlideController extends GetxController {
  var selectedPageIndex = 0.obs;

  List<SlideModel> homePageData = [
    SlideModel('assets/slide1.png'),
    SlideModel('assets/slide2.png'),
    SlideModel('assets/slide4.png')
  ];
}
