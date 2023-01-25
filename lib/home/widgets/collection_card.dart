import 'package:flutter/material.dart';
import 'package:no_drawer_animation/home/widgets/card_bottom_drawer.dart';
import 'package:no_drawer_animation/home_details/home_details.dart';

class CollectionCard extends StatelessWidget {
  final int index;

  const CollectionCard(this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140,
      child: Card(
        child: GestureDetector(
          onSecondaryTap: () => _openMenu(context, index),
          child: InkWell(
            onTap: () => Navigator.pushNamed(
              context,
              HomeDetails.routeName,
            ),
            onLongPress: () => _openMenu(context, index),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(index.toString()),
                  Text(
                    (index * 22.56).toString(),
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  _openMenu(BuildContext context, int index) {
    return showModalBottomSheet(
        context: context,
        constraints: const BoxConstraints(maxWidth: 440),
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
        ),
        builder: (context) {
          return Padding(
            padding: MediaQuery.of(context).viewInsets,
            child: SingleChildScrollView(
              child: CardBottomDrawer(index),
            ),
          );
        });
  }
}
