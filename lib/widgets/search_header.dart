import 'package:flutter/material.dart';
import 'package:ui_demo/utils/utils.dart';

class SearchHeader extends StatelessWidget {
  const SearchHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade600.withOpacity(
        0.6,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 7,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 8,
              ),
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    20,
                  ),
                ),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.search_sharp,
                    color: Colors.grey.shade400,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Search',
                    style: commonTextStyle(
                      color: Colors.grey.shade400,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Expanded(flex: 2, child: _locationView()),
        ],
      ),
    );
  }

  Widget _locationView() => Row(
        children: [
          Icon(
            Icons.place_outlined,
            color: Colors.grey.shade400,
          ),
          Text(
            '400001',
            style: commonTextStyle(
              color: Colors.grey.shade400,
              fontSize: 14,
            ),
          ),
        ],
      );
}
