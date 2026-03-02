// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnvironmentConfigDataRetentionConfigAirflowMetadataRetentionConfig {
  /// How many days data should be retained for. This field is supported for Cloud Composer environments in composer 3 and newer.
  final pulumi.Input<int>? retentionDays;
  /// Whether database retention is enabled or not. This field is supported for Cloud Composer environments in composer 3 and newer.
  final pulumi.Input<String>? retentionMode;

  /// Creates a new [EnvironmentConfigDataRetentionConfigAirflowMetadataRetentionConfig].
  /// [retentionDays] How many days data should be retained for. This field is supported for Cloud Composer environments in composer 3 and newer.
  /// [retentionMode] Whether database retention is enabled or not. This field is supported for Cloud Composer environments in composer 3 and newer.
  EnvironmentConfigDataRetentionConfigAirflowMetadataRetentionConfig({
    this.retentionDays,
    this.retentionMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retentionDays': ?retentionDays,
      'retentionMode': ?retentionMode,
    };
  }

  factory EnvironmentConfigDataRetentionConfigAirflowMetadataRetentionConfig.fromMap(Map<String, dynamic> map) {
    return EnvironmentConfigDataRetentionConfigAirflowMetadataRetentionConfig(
      retentionDays: map['retentionDays'] == null ? null : (map['retentionDays'] as int).input(),
      retentionMode: map['retentionMode'] == null ? null : (map['retentionMode'] as String).input(),
    );
  }
}

