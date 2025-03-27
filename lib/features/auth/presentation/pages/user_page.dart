import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/constant/const.dart';
import 'package:todo/core/widgets/loaderWidgets.dart';
import '../controllers/user_controller.dart';

class UserPage extends StatelessWidget {
  final UserController controller = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text('Users')),
      body: Obx(() {
        if (controller.isLoading.value) {
          return Center(
              child: LoaderWidget(
                  // loaderSize: 100,
                  // logoSize: 28,
                  // fontSize: 20,
                  ));
        }
        if (controller.users.isEmpty) {
          return Center(
              child: Text(
            'No users found',
            style: titleText(18),
          ));
        }
        return ListView.builder(
          itemCount: controller.users.length,
          itemBuilder: (context, index) {
            final user = controller.users[index];
            return ListTile(
              title: Text(
                user.name,
                style: titleText(16),
              ),
              subtitle: Text(
                "ID: ${user.id}",
                style: titleText(12),
              ),
            );
          },
        );
      }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: btnBgColor(),
        onPressed: () => controller.fetchUsers(),
        child: Icon(
          Icons.refresh,
          color: bgColor(),
        ),
      ),
    );
  }
}
