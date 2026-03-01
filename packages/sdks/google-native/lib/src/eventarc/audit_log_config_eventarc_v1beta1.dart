// ignore_for_file: unused_element, unnecessary_cast

import 'audit_log_config_log_type_eventarc_v1beta1.dart';

/// Provides the configuration for logging a type of permissions. Example: { "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [ "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" } ] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from DATA_READ logging.
class AuditLogConfigEventarcV1beta1 {
  /// Specifies the identities that do not cause logging for this type of permission. Follows the same format of Binding.members.
  final List<String>? exemptedMembers;
  /// The log type that this config enables.
  final AuditLogConfigLogTypeEventarcV1beta1? logType;

  /// Creates a new [AuditLogConfigEventarcV1beta1].
  /// [exemptedMembers] Specifies the identities that do not cause logging for this type of permission. Follows the same format of Binding.members.
  /// [logType] The log type that this config enables.
  AuditLogConfigEventarcV1beta1({
    this.exemptedMembers,
    this.logType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exemptedMembers': ?exemptedMembers,
      'logType': ?logType == null ? null : logType!.value,
    };
  }

  factory AuditLogConfigEventarcV1beta1.fromMap(Map<String, dynamic> map) {
    return AuditLogConfigEventarcV1beta1(
      exemptedMembers: map['exemptedMembers'] == null ? null : (map['exemptedMembers'] as List).cast<String>(),
      logType: map['logType'] == null ? null : AuditLogConfigLogTypeEventarcV1beta1.fromValue(map['logType'] as String),
    );
  }
}

