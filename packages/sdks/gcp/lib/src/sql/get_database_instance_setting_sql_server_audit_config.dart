// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatabaseInstanceSettingSqlServerAuditConfig {
  /// The name of the destination bucket (e.g., gs://mybucket).
  final pulumi.Input<String> bucket;
  /// How long to keep generated audit files. A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s"..
  final pulumi.Input<String> retentionInterval;
  /// How often to upload generated audit files. A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  final pulumi.Input<String> uploadInterval;

  /// Creates a new [GetDatabaseInstanceSettingSqlServerAuditConfig].
  /// [bucket] The name of the destination bucket (e.g., gs://mybucket).
  /// [retentionInterval] How long to keep generated audit files. A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s"..
  /// [uploadInterval] How often to upload generated audit files. A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  GetDatabaseInstanceSettingSqlServerAuditConfig({
    required this.bucket,
    required this.retentionInterval,
    required this.uploadInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'retentionInterval': retentionInterval,
      'uploadInterval': uploadInterval,
    };
  }

  factory GetDatabaseInstanceSettingSqlServerAuditConfig.fromMap(Map<String, dynamic> map) {
    return GetDatabaseInstanceSettingSqlServerAuditConfig(
      bucket: (map['bucket'] as String).input(),
      retentionInterval: (map['retentionInterval'] as String).input(),
      uploadInterval: (map['uploadInterval'] as String).input(),
    );
  }
}

