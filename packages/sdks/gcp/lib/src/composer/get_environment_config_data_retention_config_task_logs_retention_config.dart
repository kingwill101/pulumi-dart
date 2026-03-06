// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEnvironmentConfigDataRetentionConfigTaskLogsRetentionConfig {
  /// Whether logs in cloud logging only is enabled or not. This field is supported for Cloud Composer environments in versions composer-2.0.32-airflow-2.1.4 and newer but not in composer-3*
  final pulumi.Input<String> storageMode;

  /// Creates a new [GetEnvironmentConfigDataRetentionConfigTaskLogsRetentionConfig].
  /// [storageMode] Whether logs in cloud logging only is enabled or not. This field is supported for Cloud Composer environments in versions composer-2.0.32-airflow-2.1.4 and newer but not in composer-3*
  const GetEnvironmentConfigDataRetentionConfigTaskLogsRetentionConfig({
    required this.storageMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storageMode': storageMode,
    };
  }

  factory GetEnvironmentConfigDataRetentionConfigTaskLogsRetentionConfig.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentConfigDataRetentionConfigTaskLogsRetentionConfig(
      storageMode: pulumi.Input.fromValue(map['storageMode'] as String),
    );
  }
}

