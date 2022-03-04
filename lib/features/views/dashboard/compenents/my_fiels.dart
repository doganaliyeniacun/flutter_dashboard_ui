import 'package:flutter/material.dart';

import '../../../../core/constants/application_constants.dart';
import '../models/fiels_model.dart';
import 'file_info_card.dart';

class MyFiels extends StatelessWidget {
  const MyFiels({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "My Files",
              style: Theme.of(context).textTheme.subtitle1,
            ),
            ElevatedButton.icon(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: defaultPadding * 1.5,
                  vertical: defaultPadding,
                ),
              ),
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text("Add New"),
            ),
          ],
        ),
        const SizedBox(height: defaultPadding),
        GridView.builder(
          shrinkWrap: true,
          itemCount: demoMyFiels.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: defaultPadding,
            childAspectRatio: 1.4,
          ),
          itemBuilder: (context, index) =>
              FileInfoCard(info: demoMyFiels[index]),
        ),
      ],
    );
  }
}
