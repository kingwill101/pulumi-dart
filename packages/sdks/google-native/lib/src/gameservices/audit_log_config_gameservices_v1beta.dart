// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'audit_log_config_log_type_gameservices_v1beta.dart';

/// Provides the configuration for logging a type of permissions. Example: { "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [ "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" } ] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from DATA_READ logging.
class AuditLogConfigGameservicesV1beta {
  /// Specifies the identities that do not cause logging for this type of permission. Follows the same format of Binding.members.
  final pulumi.Input<List<String>>? exemptedMembers;
  final pulumi.Input<bool>? ignoreChildExemptions;
  /// The log type that this config enables.
  final pulumi.Input<AuditLogConfigLogTypeGameservicesV1beta>? logType;

  /// Creates a new [AuditLogConfigGameservicesV1beta].
  /// [exemptedMembers] Specifies the identities that do not cause logging for this type of permission. Follows the same format of Binding.members.
  /// [ignoreChildExemptions] Optional.
  /// [logType] The log type that this config enables.
  AuditLogConfigGameservicesV1beta({
    this.exemptedMembers,
    this.ignoreChildExemptions,
    this.logType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exemptedMembers': ?exemptedMembers,
      'ignoreChildExemptions': ?ignoreChildExemptions,
      'logType': ?pulumi.Input.mapOptionalInputValue<AuditLogConfigLogTypeGameservicesV1beta, String>(logType, (value) => value.wireValue),
    };
  }

  factory AuditLogConfigGameservicesV1beta.fromMap(Map<String, dynamic> map) {
    return AuditLogConfigGameservicesV1beta(
      exemptedMembers: (() { final guardedValue = map['exemptedMembers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ignoreChildExemptions: (() { final guardedValue = map['ignoreChildExemptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      logType: (() { final guardedValue = map['logType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuditLogConfigLogTypeGameservicesV1beta.fromValue(guardedValue as String)); })(),
    );
  }
}

