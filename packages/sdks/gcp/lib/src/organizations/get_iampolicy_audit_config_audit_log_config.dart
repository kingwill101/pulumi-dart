// ignore_for_file: unused_element, unnecessary_cast


class GetIAMPolicyAuditConfigAuditLogConfig {
  /// Specifies the identities that are exempt from these types of logging operations. Follows the same format of the `members` array for `binding`.
  final List<String>? exemptedMembers;
  /// Defines the logging level. `DATA_READ`, `DATA_WRITE` and `ADMIN_READ` capture different types of events. See [the audit configuration documentation](https://docs.cloud.google.com/resource-manager/reference/rest/Shared.Types/AuditConfig) for more details.
  final String logType;

  /// Creates a new [GetIAMPolicyAuditConfigAuditLogConfig].
  /// [exemptedMembers] Specifies the identities that are exempt from these types of logging operations. Follows the same format of the `members` array for `binding`.
  /// [logType] Defines the logging level. `DATA_READ`, `DATA_WRITE` and `ADMIN_READ` capture different types of events. See [the audit configuration documentation](https://docs.cloud.google.com/resource-manager/reference/rest/Shared.Types/AuditConfig) for more details.
  GetIAMPolicyAuditConfigAuditLogConfig({
    this.exemptedMembers,
    required this.logType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exemptedMembers': ?exemptedMembers,
      'logType': logType,
    };
  }

  factory GetIAMPolicyAuditConfigAuditLogConfig.fromMap(Map<String, dynamic> map) {
    return GetIAMPolicyAuditConfigAuditLogConfig(
      exemptedMembers: map['exemptedMembers'] == null ? null : (map['exemptedMembers'] as List).cast<String>(),
      logType: map['logType'] as String,
    );
  }
}

