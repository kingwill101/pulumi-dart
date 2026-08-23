// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Define behaviors on logging.
class GoogleCloudDialogflowCxV3beta1AdvancedSettingsLoggingSettings {
  /// If true, DF Interaction logging is currently enabled.
  final pulumi.Input<bool>? enableInteractionLogging;
  /// If true, StackDriver logging is currently enabled.
  final pulumi.Input<bool>? enableStackdriverLogging;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1AdvancedSettingsLoggingSettings].
  /// [enableInteractionLogging] If true, DF Interaction logging is currently enabled.
  /// [enableStackdriverLogging] If true, StackDriver logging is currently enabled.
  const GoogleCloudDialogflowCxV3beta1AdvancedSettingsLoggingSettings({
    this.enableInteractionLogging,
    this.enableStackdriverLogging,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableInteractionLogging': ?enableInteractionLogging,
      'enableStackdriverLogging': ?enableStackdriverLogging,
    };
  }

  factory GoogleCloudDialogflowCxV3beta1AdvancedSettingsLoggingSettings.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1AdvancedSettingsLoggingSettings(
      enableInteractionLogging: (() { final guardedValue = map['enableInteractionLogging']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableStackdriverLogging: (() { final guardedValue = map['enableStackdriverLogging']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
