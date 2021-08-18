import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallpaper/data/Category_controller.dart';
import 'package:wallpaper/data/slide_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = SlideController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: Get.height * 0.3,
                  width: Get.width,
                  child: PageView.builder(
                      onPageChanged: controller.selectedPageIndex,
                      itemCount: controller.homePageData.length,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          controller.homePageData[index].imageAsset,
                          fit: BoxFit.fill,
                          height: Get.height,
                          width: Get.width,
                        );
                      }),
                ),
                Positioned(
                  bottom: 20,
                  right: 150,
                  child: Row(
                      children: List.generate(
                          controller.homePageData.length,
                          (index) => Obx(
                                () => Container(
                                  margin: EdgeInsets.all(4),
                                  height: 12,
                                  width: 12,
                                  decoration: BoxDecoration(
                                      color:
                                          controller.selectedPageIndex.value ==
                                                  index
                                              ? Colors.red
                                              : Colors.white,
                                      shape: BoxShape.circle),
                                ),
                              ))),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: CategoryController.all
                    .map(
                      (e) => Container(
                        height: Get.height * 0.04,
                        width: Get.width * 0.2,
                        child: Center(child: e.text),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: e.color,
                        ),
                      ),
                    )
                    .toList())
          ],
        ),
      ),
    );
  }
}
