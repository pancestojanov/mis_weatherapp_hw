import 'package:flutter/material.dart';
import 'package:mis_weatherapp/controller/global_controller.dart';
import 'package:get/get.dart';
import 'package:mis_weatherapp/widgets/header_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalController globalController =
      Get.put(GlobalController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Obx(() => globalController.checkLoading().isTrue
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView(
                scrollDirection: Axis.vertical,
                children: const [
                  SizedBox(
                    height: 20,
                  ),
                  HeaderWidget(),
                ],
              )),
      ),
    );
  }
}
