// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_api_audit_log_export_configuration_args_doc}
/// The set of arguments for AuditLogExportConfiguration.
/// {@endtemplate}
/// {@macro pulumi_api_audit_log_export_configuration_args_doc}
class AuditLogExportConfigurationArgs {
  /// Whether the audit log export is enabled.
  final pulumi.Input<bool> newEnabled;
  /// The new S3 configuration for audit log export.
  final pulumi.Input<dynamic> newS3Configuration;
  /// The organization name
  final pulumi.Input<String> orgName;

  /// Creates a new [AuditLogExportConfigurationArgs].
  /// [newEnabled] Whether the audit log export is enabled.
  /// [newS3Configuration] The new S3 configuration for audit log export.
  /// [orgName] The organization name
  const AuditLogExportConfigurationArgs({
    required this.newEnabled,
    required this.newS3Configuration,
    required this.orgName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'newEnabled': newEnabled,
      'newS3Configuration': newS3Configuration,
      'orgName': orgName,
    };
  }

  factory AuditLogExportConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return AuditLogExportConfigurationArgs(
      newEnabled: pulumi.Input.fromValue(map['newEnabled'] as bool),
      newS3Configuration: pulumi.Input.fromValue(map['newS3Configuration']),
      orgName: pulumi.Input.fromValue(map['orgName'] as String),
    );
  }
}
