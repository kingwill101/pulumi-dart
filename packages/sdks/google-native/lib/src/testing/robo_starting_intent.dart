// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'start_activity_intent.dart';

/// Message for specifying the start activities to crawl.
class RoboStartingIntent {
  /// An intent that starts the main launcher activity.
  final pulumi.Input<Map<String, dynamic>>? launcherActivity;

  /// Skips the starting activity
  final pulumi.Input<Map<String, dynamic>>? noActivity;

  /// An intent that starts an activity with specific details.
  final pulumi.Input<StartActivityIntent>? startActivity;

  /// Timeout in seconds for each intent.
  final pulumi.Input<String>? timeout;

  /// Creates a new [RoboStartingIntent].
  /// [launcherActivity] An intent that starts the main launcher activity.
  /// [noActivity] Skips the starting activity
  /// [startActivity] An intent that starts an activity with specific details.
  /// [timeout] Timeout in seconds for each intent.
  RoboStartingIntent({
    this.launcherActivity,
    this.noActivity,
    this.startActivity,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'launcherActivity': ?launcherActivity,
      'noActivity': ?noActivity,
      'startActivity':
          ?pulumi.Input.mapOptionalInputValue<
            StartActivityIntent,
            Map<String, dynamic>
          >(startActivity, (value) => value.toMap()),
      'timeout': ?timeout,
    };
  }

  factory RoboStartingIntent.fromMap(Map<String, dynamic> map) {
    return RoboStartingIntent(
      launcherActivity: (() {
        final guardedValue = map['launcherActivity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      noActivity: (() {
        final guardedValue = map['noActivity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      startActivity: (() {
        final guardedValue = map['startActivity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          StartActivityIntent.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      timeout: (() {
        final guardedValue = map['timeout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
