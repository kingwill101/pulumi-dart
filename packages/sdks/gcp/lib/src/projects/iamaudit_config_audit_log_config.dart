// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IAMAuditConfigAuditLogConfig {
  /// Identities that do not cause logging for this type of permission.  The format is the same as that for `members`.
  final pulumi.Input<List<String>>? exemptedMembers;
  /// Permission type for which logging is to be configured.  Must be one of `DATA_READ`, `DATA_WRITE`, or `ADMIN_READ`.
  final pulumi.Input<String> logType;

  /// Creates a new [IAMAuditConfigAuditLogConfig].
  /// [exemptedMembers] Identities that do not cause logging for this type of permission.  The format is the same as that for `members`.
  /// [logType] Permission type for which logging is to be configured.  Must be one of `DATA_READ`, `DATA_WRITE`, or `ADMIN_READ`.
  IAMAuditConfigAuditLogConfig({
    this.exemptedMembers,
    required this.logType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exemptedMembers': ?exemptedMembers,
      'logType': logType,
    };
  }

  factory IAMAuditConfigAuditLogConfig.fromMap(Map<String, dynamic> map) {
    return IAMAuditConfigAuditLogConfig(
      exemptedMembers: map['exemptedMembers'] == null ? null : ((map['exemptedMembers'] as List).cast<String>()).input(),
      logType: (map['logType'] as String).input(),
    );
  }
}

