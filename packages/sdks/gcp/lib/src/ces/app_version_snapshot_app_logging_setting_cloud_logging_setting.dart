// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppVersionSnapshotAppLoggingSettingCloudLoggingSetting {
  /// (Output)
  /// Whether to enable Cloud Logging for the sessions.
  final pulumi.Input<bool>? enableCloudLogging;

  /// Creates a new [AppVersionSnapshotAppLoggingSettingCloudLoggingSetting].
  /// [enableCloudLogging] (Output)
  const AppVersionSnapshotAppLoggingSettingCloudLoggingSetting({
    this.enableCloudLogging,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableCloudLogging': ?enableCloudLogging,
    };
  }

  factory AppVersionSnapshotAppLoggingSettingCloudLoggingSetting.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotAppLoggingSettingCloudLoggingSetting(
      enableCloudLogging: (() { final guardedValue = map['enableCloudLogging']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

