// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securesourcemanager_branch_rule_branch_rule_args_doc}
/// The set of arguments for BranchRule.
/// {@endtemplate}
/// {@macro pulumi_securesourcemanager_branch_rule_branch_rule_args_doc}
class BranchRuleArgs {
  /// Determines if allow stale reviews or approvals before merging to the branch.
  final pulumi.Input<bool>? allowStaleReviews;
  /// The ID for the BranchRule.
  final pulumi.Input<String> branchRuleId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Determines if the branch rule is disabled or not.
  final pulumi.Input<bool>? disabled;
  /// The BranchRule matches branches based on the specified regular expression. Use .* to match all branches.
  final pulumi.Input<String> includePattern;
  /// The location for the Repository.
  final pulumi.Input<String> location;
  /// The minimum number of approvals required for the branch rule to be matched.
  final pulumi.Input<int>? minimumApprovalsCount;
  /// The minimum number of reviews required for the branch rule to be matched.
  final pulumi.Input<int>? minimumReviewsCount;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The ID for the Repository.
  final pulumi.Input<String> repositoryId;
  /// Determines if require comments resolved before merging to the branch.
  final pulumi.Input<bool>? requireCommentsResolved;
  /// Determines if require linear history before merging to the branch.
  final pulumi.Input<bool>? requireLinearHistory;
  /// Determines if the branch rule requires a pull request or not.
  final pulumi.Input<bool>? requirePullRequest;

  /// Creates a new [BranchRuleArgs].
  /// [allowStaleReviews] Determines if allow stale reviews or approvals before merging to the branch.
  /// [branchRuleId] The ID for the BranchRule.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [disabled] Determines if the branch rule is disabled or not.
  /// [includePattern] The BranchRule matches branches based on the specified regular expression. Use .* to match all branches.
  /// [location] The location for the Repository.
  /// [minimumApprovalsCount] The minimum number of approvals required for the branch rule to be matched.
  /// [minimumReviewsCount] The minimum number of reviews required for the branch rule to be matched.
  /// [project] The ID of the project in which the resource belongs.
  /// [repositoryId] The ID for the Repository.
  /// [requireCommentsResolved] Determines if require comments resolved before merging to the branch.
  /// [requireLinearHistory] Determines if require linear history before merging to the branch.
  /// [requirePullRequest] Determines if the branch rule requires a pull request or not.
  const BranchRuleArgs({
    this.allowStaleReviews,
    required this.branchRuleId,
    this.deletionPolicy,
    this.disabled,
    required this.includePattern,
    required this.location,
    this.minimumApprovalsCount,
    this.minimumReviewsCount,
    this.project,
    required this.repositoryId,
    this.requireCommentsResolved,
    this.requireLinearHistory,
    this.requirePullRequest,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowStaleReviews': ?allowStaleReviews,
      'branchRuleId': branchRuleId,
      'deletionPolicy': ?deletionPolicy,
      'disabled': ?disabled,
      'includePattern': includePattern,
      'location': location,
      'minimumApprovalsCount': ?minimumApprovalsCount,
      'minimumReviewsCount': ?minimumReviewsCount,
      'project': ?project,
      'repositoryId': repositoryId,
      'requireCommentsResolved': ?requireCommentsResolved,
      'requireLinearHistory': ?requireLinearHistory,
      'requirePullRequest': ?requirePullRequest,
    };
  }

  factory BranchRuleArgs.fromMap(Map<String, dynamic> map) {
    return BranchRuleArgs(
      allowStaleReviews: (() { final guardedValue = map['allowStaleReviews']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      branchRuleId: pulumi.Input.fromValue(map['branchRuleId'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      includePattern: pulumi.Input.fromValue(map['includePattern'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      minimumApprovalsCount: (() { final guardedValue = map['minimumApprovalsCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minimumReviewsCount: (() { final guardedValue = map['minimumReviewsCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repositoryId: pulumi.Input.fromValue(map['repositoryId'] as String),
      requireCommentsResolved: (() { final guardedValue = map['requireCommentsResolved']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      requireLinearHistory: (() { final guardedValue = map['requireLinearHistory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      requirePullRequest: (() { final guardedValue = map['requirePullRequest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
