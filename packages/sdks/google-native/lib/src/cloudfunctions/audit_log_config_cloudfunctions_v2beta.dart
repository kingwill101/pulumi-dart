// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'audit_log_config_log_type_cloudfunctions_v2beta.dart';

/// Provides the configuration for logging a type of permissions. Example: { "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [ "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" } ] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from DATA_READ logging.
class AuditLogConfigCloudfunctionsV2beta {
  /// Specifies the identities that do not cause logging for this type of permission. Follows the same format of Binding.members.
  final pulumi.Input<List<String>>? exemptedMembers;
  /// The log type that this config enables.
  final pulumi.Input<AuditLogConfigLogTypeCloudfunctionsV2beta>? logType;

  /// Creates a new [AuditLogConfigCloudfunctionsV2beta].
  /// [exemptedMembers] Specifies the identities that do not cause logging for this type of permission. Follows the same format of Binding.members.
  /// [logType] The log type that this config enables.
  AuditLogConfigCloudfunctionsV2beta({
    this.exemptedMembers,
    this.logType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exemptedMembers': ?exemptedMembers,
      'logType': ?pulumi.Input.mapOptionalInputValue<AuditLogConfigLogTypeCloudfunctionsV2beta, String>(logType, (value) => value.value),
    };
  }

  factory AuditLogConfigCloudfunctionsV2beta.fromMap(Map<String, dynamic> map) {
    return AuditLogConfigCloudfunctionsV2beta(
      exemptedMembers: map['exemptedMembers'] == null ? null : ((map['exemptedMembers']! as List).cast<String>()).input(),
      logType: map['logType'] == null ? null : (AuditLogConfigLogTypeCloudfunctionsV2beta.fromValue(map['logType']! as String)).input(),
    );
  }
}

