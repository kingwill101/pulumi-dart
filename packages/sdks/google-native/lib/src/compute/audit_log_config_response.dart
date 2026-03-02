// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Provides the configuration for logging a type of permissions. Example: { "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [ "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" } ] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from DATA_READ logging.
class AuditLogConfigResponse {
  /// Specifies the identities that do not cause logging for this type of permission. Follows the same format of Binding.members.
  final pulumi.Input<List<String>> exemptedMembers;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<bool> ignoreChildExemptions;
  /// The log type that this config enables.
  final pulumi.Input<String> logType;

  /// Creates a new [AuditLogConfigResponse].
  /// [exemptedMembers] Specifies the identities that do not cause logging for this type of permission. Follows the same format of Binding.members.
  /// [ignoreChildExemptions] This is deprecated and has no effect. Do not use.
  /// [logType] The log type that this config enables.
  AuditLogConfigResponse({
    required this.exemptedMembers,
    required this.ignoreChildExemptions,
    required this.logType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exemptedMembers': exemptedMembers,
      'ignoreChildExemptions': ignoreChildExemptions,
      'logType': logType,
    };
  }

  factory AuditLogConfigResponse.fromMap(Map<String, dynamic> map) {
    return AuditLogConfigResponse(
      exemptedMembers: ((map['exemptedMembers'] as List).cast<String>()).input(),
      ignoreChildExemptions: (map['ignoreChildExemptions'] as bool).input(),
      logType: (map['logType'] as String).input(),
    );
  }
}

