// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IamAuditConfigAuditLogConfig {
  /// Identities that do not cause logging for this type of permission.  The format is the same as that for `members`.
  final pulumi.Input<List<String>>? exemptedMembers;

  /// Permission type for which logging is to be configured.  Must be one of `DATA_READ`, `DATA_WRITE`, or `ADMIN_READ`.
  final pulumi.Input<String> logType;

  /// Creates a new [IamAuditConfigAuditLogConfig].
  /// [exemptedMembers] Identities that do not cause logging for this type of permission.  The format is the same as that for `members`.
  /// [logType] Permission type for which logging is to be configured.  Must be one of `DATA_READ`, `DATA_WRITE`, or `ADMIN_READ`.
  IamAuditConfigAuditLogConfig({this.exemptedMembers, required this.logType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exemptedMembers': ?exemptedMembers,
      'logType': logType,
    };
  }

  factory IamAuditConfigAuditLogConfig.fromMap(Map<String, dynamic> map) {
    return IamAuditConfigAuditLogConfig(
      exemptedMembers: (() {
        final guardedValue = map['exemptedMembers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      logType: pulumi.Input.fromValue(map['logType'] as String),
    );
  }
}
