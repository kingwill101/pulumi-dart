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
      'logType': ?pulumi.Input.mapOptionalInputValue<AuditLogConfigLogTypeGameservicesV1beta, String>(logType, (value) => value.value),
    };
  }

  factory AuditLogConfigGameservicesV1beta.fromMap(Map<String, dynamic> map) {
    return AuditLogConfigGameservicesV1beta(
      exemptedMembers: map['exemptedMembers'] == null ? null : ((map['exemptedMembers']! as List).cast<String>()).input(),
      ignoreChildExemptions: map['ignoreChildExemptions'] == null ? null : (map['ignoreChildExemptions']! as bool).input(),
      logType: map['logType'] == null ? null : (AuditLogConfigLogTypeGameservicesV1beta.fromValue(map['logType']! as String)).input(),
    );
  }
}

