// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessPolicyApprovalGroup {
  /// The number of approvals needed to obtain access.
  final pulumi.Input<double> approvalsNeeded;
  /// A list of emails that can approve the access request.
  final pulumi.Input<List<String>?>? emailAddresses;
  /// The UUID of an re-usable email list.
  final pulumi.Input<String?>? emailListUuid;

  /// Creates a new [ZeroTrustAccessPolicyApprovalGroup].
  /// [approvalsNeeded] The number of approvals needed to obtain access.
  /// [emailAddresses] A list of emails that can approve the access request.
  /// [emailListUuid] The UUID of an re-usable email list.
  const ZeroTrustAccessPolicyApprovalGroup({
    required this.approvalsNeeded,
    this.emailAddresses,
    this.emailListUuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approvalsNeeded': approvalsNeeded,
      'emailAddresses': ?emailAddresses,
      'emailListUuid': ?emailListUuid,
    };
  }

  factory ZeroTrustAccessPolicyApprovalGroup.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessPolicyApprovalGroup(
      approvalsNeeded: pulumi.Input.fromValue((map['approvalsNeeded'] as num).toDouble()),
      emailAddresses: (() { final guardedValue = map['emailAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      emailListUuid: (() { final guardedValue = map['emailListUuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
