// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Define behaviors on logging.
class GoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettingsResponse {
  /// If true, DF Interaction logging is currently enabled.
  final pulumi.Input<bool> enableInteractionLogging;
  /// If true, StackDriver logging is currently enabled.
  final pulumi.Input<bool> enableStackdriverLogging;

  /// Creates a new [GoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettingsResponse].
  /// [enableInteractionLogging] If true, DF Interaction logging is currently enabled.
  /// [enableStackdriverLogging] If true, StackDriver logging is currently enabled.
  const GoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettingsResponse({
    required this.enableInteractionLogging,
    required this.enableStackdriverLogging,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableInteractionLogging': enableInteractionLogging,
      'enableStackdriverLogging': enableStackdriverLogging,
    };
  }

  factory GoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettingsResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettingsResponse(
      enableInteractionLogging: pulumi.Input.fromValue(map['enableInteractionLogging'] as bool),
      enableStackdriverLogging: pulumi.Input.fromValue(map['enableStackdriverLogging'] as bool),
    );
  }
}
