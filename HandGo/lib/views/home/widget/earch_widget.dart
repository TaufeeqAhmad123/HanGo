
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/extantion.dart';
import 'package:flutter_application_1/widgets/my-text_field.dart';

class searchWidget extends StatelessWidget {
  const searchWidget({
    super.key,
    required TextEditingController searchController,
  }) : _searchController = searchController;

  final TextEditingController _searchController;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomTextField(
            controller: _searchController,
            hintText: 'Search',
            prefixIcon: Icons.search,
          ),
        ),
        10.hSpace,
        IconButton(
          icon: Icon(Icons.filter_list),
          onPressed: () {
            // Handle filter action
          },
        ),
      ],
    );
  }
}
