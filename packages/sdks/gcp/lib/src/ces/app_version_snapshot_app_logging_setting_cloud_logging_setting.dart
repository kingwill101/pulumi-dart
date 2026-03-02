// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppVersionSnapshotAppLoggingSettingCloudLoggingSetting {
  /// (Output)
  /// Whether to enable Cloud Logging for the sessions.
  final pulumi.Input<bool>? enableCloudLogging;

  /// Creates a new [AppVersionSnapshotAppLoggingSettingCloudLoggingSetting].
  /// [enableCloudLogging] (Output)
  AppVersionSnapshotAppLoggingSettingCloudLoggingSetting({
    this.enableCloudLogging,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableCloudLogging': ?enableCloudLogging,
    };
  }

  factory AppVersionSnapshotAppLoggingSettingCloudLoggingSetting.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotAppLoggingSettingCloudLoggingSetting(
      enableCloudLogging: map['enableCloudLogging'] == null ? null : (map['enableCloudLogging']! as bool).input(),
    );
  }
}

