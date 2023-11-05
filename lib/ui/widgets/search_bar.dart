import 'package:flutter/material.dart';
import 'package:pokedex/ui/widgets/spacer.dart';

class KSearchBar extends StatelessWidget {
  const KSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      padding: const EdgeInsets.symmetric(horizontal: 18),
      decoration: ShapeDecoration(
        shape: const StadiumBorder(),
        color: Theme.of(context).secondaryHeaderColor,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(Icons.search, size: 26),
          const HSpacer(13),
          Expanded(
            child: TextFormField(
              decoration: const InputDecoration(
                isDense: true,
                hintText: 'Search Fruit facts, nutrition information',
                contentPadding: EdgeInsets.zero,
                hintStyle: TextStyle(
                  fontSize: 14,
                  // color: AppColors.grey,
                  height: 1,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
