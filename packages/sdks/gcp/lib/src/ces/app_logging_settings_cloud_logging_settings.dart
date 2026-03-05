// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppLoggingSettingsCloudLoggingSettings {
  /// Whether to enable Cloud Logging for the sessions.
  final pulumi.Input<bool>? enableCloudLogging;

  /// Creates a new [AppLoggingSettingsCloudLoggingSettings].
  /// [enableCloudLogging] Whether to enable Cloud Logging for the sessions.
  AppLoggingSettingsCloudLoggingSettings({
    this.enableCloudLogging,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableCloudLogging': ?enableCloudLogging,
    };
  }

  factory AppLoggingSettingsCloudLoggingSettings.fromMap(Map<String, dynamic> map) {
    return AppLoggingSettingsCloudLoggingSettings(
      enableCloudLogging: (() { final guardedValue = map['enableCloudLogging']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

