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

  factory SqlServerAuditConfigSqladminV1beta4.fromMap(
    Map<String, dynamic> map,
  ) {
    return SqlServerAuditConfigSqladminV1beta4(
      bucket: (() {
        final guardedValue = map['bucket'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kind: (() {
        final guardedValue = map['kind'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      retentionInterval: (() {
        final guardedValue = map['retentionInterval'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      uploadInterval: (() {
        final guardedValue = map['uploadInterval'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
