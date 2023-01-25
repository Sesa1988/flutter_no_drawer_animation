import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:no_drawer_animation/home/widgets/collection_card.dart';

class HomeCollection extends StatelessWidget {
  const HomeCollection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                const Icon(Icons.whatshot, color: Colors.red, size: 26),
                const SizedBox(width: 5),
                Text(
                  'most_searched',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'based_on_usersearches',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
          const SizedBox(height: 5),
          SizedBox(
            height: 136,
            child: _collection(context),
          )
        ],
      ),
    );
  }

  Widget _collection(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(dragDevices: {
        PointerDeviceKind.mouse,
        PointerDeviceKind.touch,
        PointerDeviceKind.trackpad,
      }),
      child: ListView.builder(
        controller: ScrollController(),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return CollectionCard(index);
        },
      ),
    );
  }
}
