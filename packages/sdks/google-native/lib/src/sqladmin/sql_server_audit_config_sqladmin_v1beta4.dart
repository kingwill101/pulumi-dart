// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SQL Server specific audit configuration.
class SqlServerAuditConfigSqladminV1beta4 {
  /// The name of the destination bucket (e.g., gs://mybucket).
  final pulumi.Input<String>? bucket;
  /// This is always sql#sqlServerAuditConfig
  final pulumi.Input<String>? kind;
  /// How long to keep generated audit files.
  final pulumi.Input<String>? retentionInterval;
  /// How often to upload generated audit files.
  final pulumi.Input<String>? uploadInterval;

  /// Creates a new [SqlServerAuditConfigSqladminV1beta4].
  /// [bucket] The name of the destination bucket (e.g., gs://mybucket).
  /// [kind] This is always sql#sqlServerAuditConfig
  /// [retentionInterval] How long to keep generated audit files.
  /// [uploadInterval] How often to upload generated audit files.
  SqlServerAuditConfigSqladminV1beta4({
    this.bucket,
    this.kind,
    this.retentionInterval,
    this.uploadInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'kind': ?kind,
      'retentionInterval': ?retentionInterval,
      'uploadInterval': ?uploadInterval,
    };
  }

  factory SqlServerAuditConfigSqladminV1beta4.fromMap(Map<String, dynamic> map) {
    return SqlServerAuditConfigSqladminV1beta4(
      bucket: map['bucket'] == null ? null : (map['bucket'] as String).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      retentionInterval: map['retentionInterval'] == null ? null : (map['retentionInterval'] as String).input(),
      uploadInterval: map['uploadInterval'] == null ? null : (map['uploadInterval'] as String).input(),
    );
  }
}

