// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SQL Server specific audit configuration.
class SqlServerAuditConfigResponse {
  /// The name of the destination bucket (e.g., gs://mybucket).
  final pulumi.Input<String> bucket;

  /// This is always sql#sqlServerAuditConfig
  final pulumi.Input<String> kind;

  /// How long to keep generated audit files.
  final pulumi.Input<String> retentionInterval;

  /// How often to upload generated audit files.
  final pulumi.Input<String> uploadInterval;

  /// Creates a new [SqlServerAuditConfigResponse].
  /// [bucket] The name of the destination bucket (e.g., gs://mybucket).
  /// [kind] This is always sql#sqlServerAuditConfig
  /// [retentionInterval] How long to keep generated audit files.
  /// [uploadInterval] How often to upload generated audit files.
  SqlServerAuditConfigResponse({
    required this.bucket,
    required this.kind,
    required this.retentionInterval,
    required this.uploadInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'kind': kind,
      'retentionInterval': retentionInterval,
      'uploadInterval': uploadInterval,
    };
  }

  factory SqlServerAuditConfigResponse.fromMap(Map<String, dynamic> map) {
    return SqlServerAuditConfigResponse(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      retentionInterval: pulumi.Input.fromValue(
        map['retentionInterval'] as String,
      ),
      uploadInterval: pulumi.Input.fromValue(map['uploadInterval'] as String),
    );
  }
}
