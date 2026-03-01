// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'eligible_approver.dart';

class ApprovalRuleConfig {
  /// Whether self-approval is allowed.
  final bool allowSelfApproval;
  /// List of eligible approvers.
  final List<EligibleApprover> eligibleApprovers;
  /// Number of approvals required.
  final int numApprovalsRequired;
  /// Whether reapproval is required on changes.
  final bool requireReapprovalOnChange;

  /// Creates a new [ApprovalRuleConfig].
  /// [allowSelfApproval] Whether self-approval is allowed.
  /// [eligibleApprovers] List of eligible approvers.
  /// [numApprovalsRequired] Number of approvals required.
  /// [requireReapprovalOnChange] Whether reapproval is required on changes.
  ApprovalRuleConfig({
    required this.allowSelfApproval,
    required this.eligibleApprovers,
    required this.numApprovalsRequired,
    required this.requireReapprovalOnChange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowSelfApproval': allowSelfApproval,
      'eligibleApprovers': pulumi.Input.encodeList<EligibleApprover, Map<String, dynamic>>(eligibleApprovers, (value) => value.toMap()),
      'numApprovalsRequired': numApprovalsRequired,
      'requireReapprovalOnChange': requireReapprovalOnChange,
    };
  }

  factory ApprovalRuleConfig.fromMap(Map<String, dynamic> map) {
    return ApprovalRuleConfig(
      allowSelfApproval: map['allowSelfApproval'] as bool,
      eligibleApprovers: pulumi.Input.decodeList<EligibleApprover>(map['eligibleApprovers'], (value) => EligibleApprover.fromMap((value as Map).cast<String, dynamic>())),
      numApprovalsRequired: map['numApprovalsRequired'] as int,
      requireReapprovalOnChange: map['requireReapprovalOnChange'] as bool,
    );
  }
}

