// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BranchRule resources.
class BranchRuleState {
  /// Determines if allow stale reviews or approvals before merging to the branch.
  final pulumi.Input<bool>? allowStaleReviews;
  /// The ID for the BranchRule.
  final pulumi.Input<String>? branchRuleId;
  /// Time the BranchRule was created in UTC.
  final pulumi.Input<String>? createTime;
  /// Determines if the branch rule is disabled or not.
  final pulumi.Input<bool>? disabled;
  /// The BranchRule matches branches based on the specified regular expression. Use .* to match all branches.
  final pulumi.Input<String>? includePattern;
  /// The location for the Repository.
  final pulumi.Input<String>? location;
  /// The minimum number of approvals required for the branch rule to be matched.
  final pulumi.Input<int>? minimumApprovalsCount;
  /// The minimum number of reviews required for the branch rule to be matched.
  final pulumi.Input<int>? minimumReviewsCount;
  /// The resource name for the BranchRule.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The ID for the Repository.
  final pulumi.Input<String>? repositoryId;
  /// Determines if require comments resolved before merging to the branch.
  final pulumi.Input<bool>? requireCommentsResolved;
  /// Determines if require linear history before merging to the branch.
  final pulumi.Input<bool>? requireLinearHistory;
  /// Determines if the branch rule requires a pull request or not.
  final pulumi.Input<bool>? requirePullRequest;
  /// Unique identifier of the BranchRule.
  final pulumi.Input<String>? uid;
  /// Time the BranchRule was updated in UTC.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [BranchRuleState].
  /// [allowStaleReviews] Determines if allow stale reviews or approvals before merging to the branch.
  /// [branchRuleId] The ID for the BranchRule.
  /// [createTime] Time the BranchRule was created in UTC.
  /// [disabled] Determines if the branch rule is disabled or not.
  /// [includePattern] The BranchRule matches branches based on the specified regular expression. Use .* to match all branches.
  /// [location] The location for the Repository.
  /// [minimumApprovalsCount] The minimum number of approvals required for the branch rule to be matched.
  /// [minimumReviewsCount] The minimum number of reviews required for the branch rule to be matched.
  /// [name] The resource name for the BranchRule.
  /// [project] The ID of the project in which the resource belongs.
  /// [repositoryId] The ID for the Repository.
  /// [requireCommentsResolved] Determines if require comments resolved before merging to the branch.
  /// [requireLinearHistory] Determines if require linear history before merging to the branch.
  /// [requirePullRequest] Determines if the branch rule requires a pull request or not.
  /// [uid] Unique identifier of the BranchRule.
  /// [updateTime] Time the BranchRule was updated in UTC.
  BranchRuleState({
    this.allowStaleReviews,
    this.branchRuleId,
    this.createTime,
    this.disabled,
    this.includePattern,
    this.location,
    this.minimumApprovalsCount,
    this.minimumReviewsCount,
    this.name,
    this.project,
    this.repositoryId,
    this.requireCommentsResolved,
    this.requireLinearHistory,
    this.requirePullRequest,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowStaleReviews': ?allowStaleReviews,
      'branchRuleId': ?branchRuleId,
      'createTime': ?createTime,
      'disabled': ?disabled,
      'includePattern': ?includePattern,
      'location': ?location,
      'minimumApprovalsCount': ?minimumApprovalsCount,
      'minimumReviewsCount': ?minimumReviewsCount,
      'name': ?name,
      'project': ?project,
      'repositoryId': ?repositoryId,
      'requireCommentsResolved': ?requireCommentsResolved,
      'requireLinearHistory': ?requireLinearHistory,
      'requirePullRequest': ?requirePullRequest,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory BranchRuleState.fromMap(Map<String, dynamic> map) {
    return BranchRuleState(
      allowStaleReviews: map['allowStaleReviews'] == null ? null : (map['allowStaleReviews']! as bool).input(),
      branchRuleId: map['branchRuleId'] == null ? null : (map['branchRuleId']! as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      disabled: map['disabled'] == null ? null : (map['disabled']! as bool).input(),
      includePattern: map['includePattern'] == null ? null : (map['includePattern']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      minimumApprovalsCount: map['minimumApprovalsCount'] == null ? null : (map['minimumApprovalsCount']! as int).input(),
      minimumReviewsCount: map['minimumReviewsCount'] == null ? null : (map['minimumReviewsCount']! as int).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      repositoryId: map['repositoryId'] == null ? null : (map['repositoryId']! as String).input(),
      requireCommentsResolved: map['requireCommentsResolved'] == null ? null : (map['requireCommentsResolved']! as bool).input(),
      requireLinearHistory: map['requireLinearHistory'] == null ? null : (map['requireLinearHistory']! as bool).input(),
      requirePullRequest: map['requirePullRequest'] == null ? null : (map['requirePullRequest']! as bool).input(),
      uid: map['uid'] == null ? null : (map['uid']! as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
    );
  }
}

