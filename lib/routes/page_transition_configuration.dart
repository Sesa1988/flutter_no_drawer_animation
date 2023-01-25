import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PageTransitionConfiguration {
  static PageTransitionsTheme get() {
    return PageTransitionsTheme(
      builders: kIsWeb
          ? {
              for (final platform in TargetPlatform.values)
                platform: const FadeUpwardsPageTransitionsBuilder(),
            }
          : const {
              TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
              TargetPlatform.fuchsia: FadeUpwardsPageTransitionsBuilder(),
              TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
              TargetPlatform.windows: FadeUpwardsPageTransitionsBuilder(),
              TargetPlatform.macOS: CupertinoPageTransitionsBuilder(),
              TargetPlatform.linux: FadeUpwardsPageTransitionsBuilder(),
            },
    );
  }
}
