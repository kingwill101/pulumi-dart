// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'audit_log_config_log_type_compute_beta.dart';

/// Provides the configuration for logging a type of permissions. Example: { "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [ "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" } ] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from DATA_READ logging.
class AuditLogConfigComputeBeta {
  /// Specifies the identities that do not cause logging for this type of permission. Follows the same format of Binding.members.
  final pulumi.Input<List<String>>? exemptedMembers;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<bool>? ignoreChildExemptions;
  /// The log type that this config enables.
  final pulumi.Input<AuditLogConfigLogTypeComputeBeta>? logType;

  /// Creates a new [AuditLogConfigComputeBeta].
  /// [exemptedMembers] Specifies the identities that do not cause logging for this type of permission. Follows the same format of Binding.members.
  /// [ignoreChildExemptions] This is deprecated and has no effect. Do not use.
  /// [logType] The log type that this config enables.
  AuditLogConfigComputeBeta({
    this.exemptedMembers,
    this.ignoreChildExemptions,
    this.logType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exemptedMembers': ?exemptedMembers,
      'ignoreChildExemptions': ?ignoreChildExemptions,
      'logType': ?pulumi.Input.mapOptionalInputValue<AuditLogConfigLogTypeComputeBeta, String>(logType, (value) => value.value),
    };
  }

  factory AuditLogConfigComputeBeta.fromMap(Map<String, dynamic> map) {
    return AuditLogConfigComputeBeta(
      exemptedMembers: map['exemptedMembers'] == null ? null : ((map['exemptedMembers'] as List).cast<String>()).input(),
      ignoreChildExemptions: map['ignoreChildExemptions'] == null ? null : (map['ignoreChildExemptions'] as bool).input(),
      logType: map['logType'] == null ? null : (AuditLogConfigLogTypeComputeBeta.fromValue(map['logType'] as String)).input(),
    );
  }
}

