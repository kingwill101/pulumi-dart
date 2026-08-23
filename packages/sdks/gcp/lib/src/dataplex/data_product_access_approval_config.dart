// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataProductAccessApprovalConfig {
  /// Specifies the email addresses of users who are potential approvers.
  final pulumi.Input<List<String>>? approverEmails;

  /// Creates a new [DataProductAccessApprovalConfig].
  /// [approverEmails] Specifies the email addresses of users who are potential approvers.
  const DataProductAccessApprovalConfig({
    this.approverEmails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approverEmails': ?approverEmails,
    };
  }

  factory DataProductAccessApprovalConfig.fromMap(Map<String, dynamic> map) {
    return DataProductAccessApprovalConfig(
      approverEmails: (() { final guardedValue = map['approverEmails']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
