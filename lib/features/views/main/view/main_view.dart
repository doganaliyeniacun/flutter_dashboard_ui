import 'package:flutter/material.dart';
import 'package:flutter_dashboard/core/responsive/responsive.dart';
import 'package:get/get.dart';
import '../../dashboard/view/dashboard_view.dart';
import '../compenents/side_menu.dart';
import '../controllers/menu_controller.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);
  final MenuController _menuController = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _menuController.scaffoldKey,
      drawer: const SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context))
              const Expanded(
                child: SideMenu(),
              ),
            const Expanded(
              flex: 5,
              child: DashboardScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
