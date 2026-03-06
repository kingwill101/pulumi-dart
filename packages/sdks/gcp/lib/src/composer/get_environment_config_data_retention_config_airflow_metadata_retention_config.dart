// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEnvironmentConfigDataRetentionConfigAirflowMetadataRetentionConfig {
  /// How many days data should be retained for. This field is supported for Cloud Composer environments in composer 3 and newer.
  final pulumi.Input<int> retentionDays;
  /// Whether database retention is enabled or not. This field is supported for Cloud Composer environments in composer 3 and newer.
  final pulumi.Input<String> retentionMode;

  /// Creates a new [GetEnvironmentConfigDataRetentionConfigAirflowMetadataRetentionConfig].
  /// [retentionDays] How many days data should be retained for. This field is supported for Cloud Composer environments in composer 3 and newer.
  /// [retentionMode] Whether database retention is enabled or not. This field is supported for Cloud Composer environments in composer 3 and newer.
  const GetEnvironmentConfigDataRetentionConfigAirflowMetadataRetentionConfig({
    required this.retentionDays,
    required this.retentionMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retentionDays': retentionDays,
      'retentionMode': retentionMode,
    };
  }

  factory GetEnvironmentConfigDataRetentionConfigAirflowMetadataRetentionConfig.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentConfigDataRetentionConfigAirflowMetadataRetentionConfig(
      retentionDays: pulumi.Input.fromValue(map['retentionDays'] as int),
      retentionMode: pulumi.Input.fromValue(map['retentionMode'] as String),
    );
  }
}

