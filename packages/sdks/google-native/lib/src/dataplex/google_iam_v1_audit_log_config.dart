// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_iam_v1_audit_log_config_log_type.dart';

/// Provides the configuration for logging a type of permissions. Example: { "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [ "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" } ] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from DATA_READ logging.
class GoogleIamV1AuditLogConfig {
  /// Specifies the identities that do not cause logging for this type of permission. Follows the same format of Binding.members.
  final pulumi.Input<List<String>>? exemptedMembers;
  /// The log type that this config enables.
  final pulumi.Input<GoogleIamV1AuditLogConfigLogType>? logType;

  /// Creates a new [GoogleIamV1AuditLogConfig].
  /// [exemptedMembers] Specifies the identities that do not cause logging for this type of permission. Follows the same format of Binding.members.
  /// [logType] The log type that this config enables.
  const GoogleIamV1AuditLogConfig({
    this.exemptedMembers,
    this.logType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exemptedMembers': ?exemptedMembers,
      'logType': ?pulumi.Input.mapOptionalInputValue<GoogleIamV1AuditLogConfigLogType, String>(logType, (value) => value.wireValue),
    };
  }

  factory GoogleIamV1AuditLogConfig.fromMap(Map<String, dynamic> map) {
    return GoogleIamV1AuditLogConfig(
      exemptedMembers: (() { final guardedValue = map['exemptedMembers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      logType: (() { final guardedValue = map['logType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleIamV1AuditLogConfigLogType.fromValue(guardedValue as String)); })(),
    );
  }
}
