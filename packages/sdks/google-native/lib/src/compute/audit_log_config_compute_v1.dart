// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'audit_log_config_log_type_compute_v1.dart';

/// Provides the configuration for logging a type of permissions. Example: { "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [ "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" } ] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from DATA_READ logging.
class AuditLogConfigComputeV1 {
  /// Specifies the identities that do not cause logging for this type of permission. Follows the same format of Binding.members.
  final pulumi.Input<List<String>>? exemptedMembers;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<bool>? ignoreChildExemptions;
  /// The log type that this config enables.
  final pulumi.Input<AuditLogConfigLogTypeComputeV1>? logType;

  /// Creates a new [AuditLogConfigComputeV1].
  /// [exemptedMembers] Specifies the identities that do not cause logging for this type of permission. Follows the same format of Binding.members.
  /// [ignoreChildExemptions] This is deprecated and has no effect. Do not use.
  /// [logType] The log type that this config enables.
  const AuditLogConfigComputeV1({
    this.exemptedMembers,
    this.ignoreChildExemptions,
    this.logType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exemptedMembers': ?exemptedMembers,
      'ignoreChildExemptions': ?ignoreChildExemptions,
      'logType': ?pulumi.Input.mapOptionalInputValue<AuditLogConfigLogTypeComputeV1, String>(logType, (value) => value.wireValue),
    };
  }

  factory AuditLogConfigComputeV1.fromMap(Map<String, dynamic> map) {
    return AuditLogConfigComputeV1(
      exemptedMembers: (() { final guardedValue = map['exemptedMembers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ignoreChildExemptions: (() { final guardedValue = map['ignoreChildExemptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      logType: (() { final guardedValue = map['logType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuditLogConfigLogTypeComputeV1.fromValue(guardedValue as String)); })(),
    );
  }
}
