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
    pulumi.Output<bool>? allowStaleReviews,
    pulumi.Output<String>? branchRuleId,
    pulumi.Output<String>? createTime,
    pulumi.Output<bool>? disabled,
    pulumi.Output<String>? includePattern,
    pulumi.Output<String>? location,
    pulumi.Output<int>? minimumApprovalsCount,
    pulumi.Output<int>? minimumReviewsCount,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? repositoryId,
    pulumi.Output<bool>? requireCommentsResolved,
    pulumi.Output<bool>? requireLinearHistory,
    pulumi.Output<bool>? requirePullRequest,
    pulumi.Output<String>? uid,
    pulumi.Output<String>? updateTime,
  }) :
      allowStaleReviews = pulumi.Input.asOptionalInput<bool>(allowStaleReviews),
      branchRuleId = pulumi.Input.asOptionalInput<String>(branchRuleId),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      disabled = pulumi.Input.asOptionalInput<bool>(disabled),
      includePattern = pulumi.Input.asOptionalInput<String>(includePattern),
      location = pulumi.Input.asOptionalInput<String>(location),
      minimumApprovalsCount = pulumi.Input.asOptionalInput<int>(minimumApprovalsCount),
      minimumReviewsCount = pulumi.Input.asOptionalInput<int>(minimumReviewsCount),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      repositoryId = pulumi.Input.asOptionalInput<String>(repositoryId),
      requireCommentsResolved = pulumi.Input.asOptionalInput<bool>(requireCommentsResolved),
      requireLinearHistory = pulumi.Input.asOptionalInput<bool>(requireLinearHistory),
      requirePullRequest = pulumi.Input.asOptionalInput<bool>(requirePullRequest),
      uid = pulumi.Input.asOptionalInput<String>(uid),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

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
      allowStaleReviews: map['allowStaleReviews'] == null ? null : pulumi.Output.create<bool>(map['allowStaleReviews'] as bool),
      branchRuleId: map['branchRuleId'] == null ? null : pulumi.Output.create<String>(map['branchRuleId'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      disabled: map['disabled'] == null ? null : pulumi.Output.create<bool>(map['disabled'] as bool),
      includePattern: map['includePattern'] == null ? null : pulumi.Output.create<String>(map['includePattern'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      minimumApprovalsCount: map['minimumApprovalsCount'] == null ? null : pulumi.Output.create<int>(map['minimumApprovalsCount'] as int),
      minimumReviewsCount: map['minimumReviewsCount'] == null ? null : pulumi.Output.create<int>(map['minimumReviewsCount'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      repositoryId: map['repositoryId'] == null ? null : pulumi.Output.create<String>(map['repositoryId'] as String),
      requireCommentsResolved: map['requireCommentsResolved'] == null ? null : pulumi.Output.create<bool>(map['requireCommentsResolved'] as bool),
      requireLinearHistory: map['requireLinearHistory'] == null ? null : pulumi.Output.create<bool>(map['requireLinearHistory'] as bool),
      requirePullRequest: map['requirePullRequest'] == null ? null : pulumi.Output.create<bool>(map['requirePullRequest'] as bool),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

