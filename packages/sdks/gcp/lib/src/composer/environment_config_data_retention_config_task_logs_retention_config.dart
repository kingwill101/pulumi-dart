// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnvironmentConfigDataRetentionConfigTaskLogsRetentionConfig {
  /// Whether logs in cloud logging only is enabled or not. This field is supported for Cloud Composer environments in versions composer-2.0.32-airflow-2.1.4 and newer but not in composer-3*
  final pulumi.Input<String>? storageMode;

  /// Creates a new [EnvironmentConfigDataRetentionConfigTaskLogsRetentionConfig].
  /// [storageMode] Whether logs in cloud logging only is enabled or not. This field is supported for Cloud Composer environments in versions composer-2.0.32-airflow-2.1.4 and newer but not in composer-3*
  EnvironmentConfigDataRetentionConfigTaskLogsRetentionConfig({
    this.storageMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'storageMode': ?storageMode};
  }

  factory EnvironmentConfigDataRetentionConfigTaskLogsRetentionConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return EnvironmentConfigDataRetentionConfigTaskLogsRetentionConfig(
      storageMode: (() {
        final guardedValue = map['storageMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
