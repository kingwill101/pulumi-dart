// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'eligible_approver.dart';

class ApprovalRuleConfig {
  /// Whether self-approval is allowed.
  final pulumi.Input<bool> allowSelfApproval;
  /// List of eligible approvers.
  final pulumi.Input<List<EligibleApprover>> eligibleApprovers;
  /// Number of approvals required.
  final pulumi.Input<int> numApprovalsRequired;
  /// Whether reapproval is required on changes.
  final pulumi.Input<bool> requireReapprovalOnChange;

  /// Creates a new [ApprovalRuleConfig].
  /// [allowSelfApproval] Whether self-approval is allowed.
  /// [eligibleApprovers] List of eligible approvers.
  /// [numApprovalsRequired] Number of approvals required.
  /// [requireReapprovalOnChange] Whether reapproval is required on changes.
  const ApprovalRuleConfig({
    required this.allowSelfApproval,
    required this.eligibleApprovers,
    required this.numApprovalsRequired,
    required this.requireReapprovalOnChange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowSelfApproval': allowSelfApproval,
      'eligibleApprovers': pulumi.Input.mapInputValue<List<EligibleApprover>, List<Map<String, dynamic>>>(eligibleApprovers, (value) => pulumi.Input.encodeList<EligibleApprover, Map<String, dynamic>>(value, (value) => value.toMap())),
      'numApprovalsRequired': numApprovalsRequired,
      'requireReapprovalOnChange': requireReapprovalOnChange,
    };
  }

  factory ApprovalRuleConfig.fromMap(Map<String, dynamic> map) {
    return ApprovalRuleConfig(
      allowSelfApproval: pulumi.Input.fromValue(map['allowSelfApproval'] as bool),
      eligibleApprovers: pulumi.Input.fromValue(pulumi.Input.decodeList<EligibleApprover>(map['eligibleApprovers']!, (value) => EligibleApprover.fromMap((value as Map).cast<String, dynamic>()))),
      numApprovalsRequired: pulumi.Input.fromValue(map['numApprovalsRequired'] as int),
      requireReapprovalOnChange: pulumi.Input.fromValue(map['requireReapprovalOnChange'] as bool),
    );
  }
}
