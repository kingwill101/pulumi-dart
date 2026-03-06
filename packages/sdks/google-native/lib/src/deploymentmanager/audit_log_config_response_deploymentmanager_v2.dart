// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Provides the configuration for logging a type of permissions. Example: { "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [ "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" } ] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from DATA_READ logging.
class AuditLogConfigResponseDeploymentmanagerV2 {
  /// Specifies the identities that do not cause logging for this type of permission. Follows the same format of Binding.members.
  final pulumi.Input<List<String>> exemptedMembers;
  /// The log type that this config enables.
  final pulumi.Input<String> logType;

  /// Creates a new [AuditLogConfigResponseDeploymentmanagerV2].
  /// [exemptedMembers] Specifies the identities that do not cause logging for this type of permission. Follows the same format of Binding.members.
  /// [logType] The log type that this config enables.
  const AuditLogConfigResponseDeploymentmanagerV2({
    required this.exemptedMembers,
    required this.logType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exemptedMembers': exemptedMembers,
      'logType': logType,
    };
  }

  factory AuditLogConfigResponseDeploymentmanagerV2.fromMap(Map<String, dynamic> map) {
    return AuditLogConfigResponseDeploymentmanagerV2(
      exemptedMembers: pulumi.Input.fromValue((map['exemptedMembers'] as List).cast<String>()),
      logType: pulumi.Input.fromValue(map['logType'] as String),
    );
  }
}

