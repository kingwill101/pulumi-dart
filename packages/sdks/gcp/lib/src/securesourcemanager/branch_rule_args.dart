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
  BranchRuleArgs({
    this.allowStaleReviews,
    required this.branchRuleId,
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
      allowStaleReviews: map['allowStaleReviews'] == null ? null : (map['allowStaleReviews'] as bool).input(),
      branchRuleId: (map['branchRuleId'] as String).input(),
      disabled: map['disabled'] == null ? null : (map['disabled'] as bool).input(),
      includePattern: (map['includePattern'] as String).input(),
      location: (map['location'] as String).input(),
      minimumApprovalsCount: map['minimumApprovalsCount'] == null ? null : (map['minimumApprovalsCount'] as int).input(),
      minimumReviewsCount: map['minimumReviewsCount'] == null ? null : (map['minimumReviewsCount'] as int).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      repositoryId: (map['repositoryId'] as String).input(),
      requireCommentsResolved: map['requireCommentsResolved'] == null ? null : (map['requireCommentsResolved'] as bool).input(),
      requireLinearHistory: map['requireLinearHistory'] == null ? null : (map['requireLinearHistory'] as bool).input(),
      requirePullRequest: map['requirePullRequest'] == null ? null : (map['requirePullRequest'] as bool).input(),
    );
  }
}

