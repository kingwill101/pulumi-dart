// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'start_activity_intent_response.dart';

/// Message for specifying the start activities to crawl.
class RoboStartingIntentResponse {
  /// An intent that starts the main launcher activity.
  final pulumi.Input<Map<String, dynamic>> launcherActivity;
  /// Skips the starting activity
  final pulumi.Input<Map<String, dynamic>> noActivity;
  /// An intent that starts an activity with specific details.
  final pulumi.Input<StartActivityIntentResponse> startActivity;
  /// Timeout in seconds for each intent.
  final pulumi.Input<String> timeout;

  /// Creates a new [RoboStartingIntentResponse].
  /// [launcherActivity] An intent that starts the main launcher activity.
  /// [noActivity] Skips the starting activity
  /// [startActivity] An intent that starts an activity with specific details.
  /// [timeout] Timeout in seconds for each intent.
  const RoboStartingIntentResponse({
    required this.launcherActivity,
    required this.noActivity,
    required this.startActivity,
    required this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'launcherActivity': launcherActivity,
      'noActivity': noActivity,
      'startActivity': pulumi.Input.mapInputValue<StartActivityIntentResponse, Map<String, dynamic>>(startActivity, (value) => value.toMap()),
      'timeout': timeout,
    };
  }

  factory RoboStartingIntentResponse.fromMap(Map<String, dynamic> map) {
    return RoboStartingIntentResponse(
      launcherActivity: pulumi.Input.fromValue((map['launcherActivity']! as Map).cast<String, dynamic>()),
      noActivity: pulumi.Input.fromValue((map['noActivity']! as Map).cast<String, dynamic>()),
      startActivity: pulumi.Input.fromValue(StartActivityIntentResponse.fromMap((map['startActivity']! as Map).cast<String, dynamic>())),
      timeout: pulumi.Input.fromValue(map['timeout'] as String),
    );
  }
}

