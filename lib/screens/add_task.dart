import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_managment/colors/app_colors.dart';
import 'package:task_managment/widgets/button_widget.dart';
import 'package:task_managment/widgets/textfiled_widget.dart';

class AddTask extends StatelessWidget {
  const AddTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController detailController = TextEditingController();
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        padding: const EdgeInsets.only(left: 20, right: 20),
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage("assets/addtask1.jpg"))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(children: [
              const SizedBox(
                height: 60,
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back,
                    color: AppColors.secondaryColor,
                  ))
            ]),
            Column(
              children: [
                TextFiledWidget(
                  textEditingController: nameController,
                  hintText: "Task name",
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFiledWidget(
                  textEditingController: detailController,
                  hintText: "Task details",
                  borderRadios: 10,
                  maxLine: 3,
                ),
                const SizedBox(
                  height: 20,
                ),
                ButtonWidget(
                    backgroundcolor: AppColors.mainColor,
                    text: "Add Task",
                    textColor: Colors.white)
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 6,
            )
          ],
        ),
      ),
    );
  }
}
