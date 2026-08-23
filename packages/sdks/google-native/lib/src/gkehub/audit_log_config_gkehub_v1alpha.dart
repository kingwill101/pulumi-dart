// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'audit_log_config_log_type_gkehub_v1alpha.dart';

/// Provides the configuration for logging a type of permissions. Example: { "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [ "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" } ] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from DATA_READ logging.
class AuditLogConfigGkehubV1alpha {
  /// Specifies the identities that do not cause logging for this type of permission. Follows the same format of Binding.members.
  final pulumi.Input<List<String>>? exemptedMembers;
  /// The log type that this config enables.
  final pulumi.Input<AuditLogConfigLogTypeGkehubV1alpha>? logType;

  /// Creates a new [AuditLogConfigGkehubV1alpha].
  /// [exemptedMembers] Specifies the identities that do not cause logging for this type of permission. Follows the same format of Binding.members.
  /// [logType] The log type that this config enables.
  const AuditLogConfigGkehubV1alpha({
    this.exemptedMembers,
    this.logType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exemptedMembers': ?exemptedMembers,
      'logType': ?pulumi.Input.mapOptionalInputValue<AuditLogConfigLogTypeGkehubV1alpha, String>(logType, (value) => value.wireValue),
    };
  }

  factory AuditLogConfigGkehubV1alpha.fromMap(Map<String, dynamic> map) {
    return AuditLogConfigGkehubV1alpha(
      exemptedMembers: (() { final guardedValue = map['exemptedMembers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      logType: (() { final guardedValue = map['logType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuditLogConfigLogTypeGkehubV1alpha.fromValue(guardedValue as String)); })(),
    );
  }
}
