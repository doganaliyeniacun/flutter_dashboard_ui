import 'package:flutter/material.dart';

import 'package:flutter_dashboard/core/constants/application_constants.dart';
import 'package:flutter_dashboard/features/views/dashboard/models/recent_files.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../compenents/dashboard_header.dart';
import '../compenents/my_fiels.dart';
import '../compenents/recent_files.dart';
import '../compenents/storage_details.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            const Header(),
            const SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      const MyFiels(),
                      const SizedBox(height: defaultPadding),
                      RecentFiles(),
                    ],
                  ),
                ),
                const SizedBox(width: defaultPadding),
                const Expanded(
                  flex: 2,
                  child: StorageDetails(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

