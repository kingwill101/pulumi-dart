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
      'startActivity': ?pulumi.Input.mapOptionalInputValue<StartActivityIntent, Map<String, dynamic>>(startActivity, (value) => value.toMap()),
      'timeout': ?timeout,
    };
  }

  factory RoboStartingIntent.fromMap(Map<String, dynamic> map) {
    return RoboStartingIntent(
      launcherActivity: map['launcherActivity'] == null ? null : ((map['launcherActivity'] as Map).cast<String, dynamic>()).input(),
      noActivity: map['noActivity'] == null ? null : ((map['noActivity'] as Map).cast<String, dynamic>()).input(),
      startActivity: map['startActivity'] == null ? null : (StartActivityIntent.fromMap((map['startActivity'] as Map).cast<String, dynamic>())).input(),
      timeout: map['timeout'] == null ? null : (map['timeout'] as String).input(),
    );
  }
}

