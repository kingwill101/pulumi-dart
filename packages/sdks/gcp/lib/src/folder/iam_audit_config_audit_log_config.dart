// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IamAuditConfigAuditLogConfig {
  /// Identities that do not cause logging for this type of permission.
  /// Each entry can have one of the following values:
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A Google Workspace domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  final pulumi.Input<List<String>>? exemptedMembers;
  /// Permission type for which logging is to be configured.  Must be one of `DATA_READ`, `DATA_WRITE`, or `ADMIN_READ`.
  final pulumi.Input<String> logType;

  /// Creates a new [IamAuditConfigAuditLogConfig].
  /// [exemptedMembers] Identities that do not cause logging for this type of permission.
  /// [logType] Permission type for which logging is to be configured.  Must be one of `DATA_READ`, `DATA_WRITE`, or `ADMIN_READ`.
  const IamAuditConfigAuditLogConfig({
    this.exemptedMembers,
    required this.logType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exemptedMembers': ?exemptedMembers,
      'logType': logType,
    };
  }

  factory IamAuditConfigAuditLogConfig.fromMap(Map<String, dynamic> map) {
    return IamAuditConfigAuditLogConfig(
      exemptedMembers: (() { final guardedValue = map['exemptedMembers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      logType: pulumi.Input.fromValue(map['logType'] as String),
    );
  }
}
