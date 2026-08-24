// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessPolicyApprovalGroup {
  /// The number of approvals needed to obtain access.
  final pulumi.Input<double> approvalsNeeded;
  /// A list of emails that can approve the access request.
  final pulumi.Input<List<String>> emailAddresses;
  /// The UUID of an re-usable email list.
  final pulumi.Input<String> emailListUuid;

  /// Creates a new [GetZeroTrustAccessPolicyApprovalGroup].
  /// [approvalsNeeded] The number of approvals needed to obtain access.
  /// [emailAddresses] A list of emails that can approve the access request.
  /// [emailListUuid] The UUID of an re-usable email list.
  const GetZeroTrustAccessPolicyApprovalGroup({
    required this.approvalsNeeded,
    required this.emailAddresses,
    required this.emailListUuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approvalsNeeded': approvalsNeeded,
      'emailAddresses': emailAddresses,
      'emailListUuid': emailListUuid,
    };
  }

  factory GetZeroTrustAccessPolicyApprovalGroup.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessPolicyApprovalGroup(
      approvalsNeeded: pulumi.Input.fromValue((map['approvalsNeeded'] as num).toDouble()),
      emailAddresses: pulumi.Input.fromValue((map['emailAddresses'] as List).cast<String>()),
      emailListUuid: pulumi.Input.fromValue(map['emailListUuid'] as String),
    );
  }
}
