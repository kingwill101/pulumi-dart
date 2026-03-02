// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_package_assignment_policy_assignment_review_settings_reviewer.dart';

class AccessPackageAssignmentPolicyAssignmentReviewSettings {
  /// Whether to show the reviewer decision helpers. If enabled, system recommendations based on users' access information will be shown to the reviewers. The reviewer will be recommended to approve the review if the user has signed-in at least once during the last 30 days. The reviewer will be recommended to deny the review if the user has not signed-in during the last 30 days.
  final pulumi.Input<bool>? accessRecommendationEnabled;
  /// Specifies the actions the system takes if reviewers don't respond in time. Valid values are `keepAccess`, `removeAccess`, or `acceptAccessRecommendation`.
  final pulumi.Input<String>? accessReviewTimeoutBehavior;
  /// Whether a reviewer needs to provide a justification for their decision. Justification is visible to other reviewers and the requestor.
  final pulumi.Input<bool>? approverJustificationRequired;
  /// How many days each occurrence of the access review series will run.
  final pulumi.Input<int>? durationInDays;
  /// Whether to enable assignment review.
  final pulumi.Input<bool>? enabled;
  /// This will determine how often the access review campaign runs, valid values are `weekly`, `monthly`, `quarterly`, `halfyearly`, or `annual`.
  final pulumi.Input<String>? reviewFrequency;
  /// Self-review or specific reviewers. Valid values are `Manager`, `Reviewers`, or `Self`.
  final pulumi.Input<String>? reviewType;
  /// One or more `reviewer` blocks to specify the users who will be reviewers (when `review_type` is `Reviewers`), as documented below.
  final pulumi.Input<List<AccessPackageAssignmentPolicyAssignmentReviewSettingsReviewer>>? reviewers;
  /// This is the date the access review campaign will start on, formatted as an RFC3339 date string in UTC(e.g. 2018-01-01T01:02:03Z), default is now. Once an access review has been created, you cannot update its start date
  final pulumi.Input<String>? startingOn;

  /// Creates a new [AccessPackageAssignmentPolicyAssignmentReviewSettings].
  /// [accessRecommendationEnabled] Whether to show the reviewer decision helpers. If enabled, system recommendations based on users' access information will be shown to the reviewers. The reviewer will be recommended to approve the review if the user has signed-in at least once during the last 30 days. The reviewer will be recommended to deny the review if the user has not signed-in during the last 30 days.
  /// [accessReviewTimeoutBehavior] Specifies the actions the system takes if reviewers don't respond in time. Valid values are `keepAccess`, `removeAccess`, or `acceptAccessRecommendation`.
  /// [approverJustificationRequired] Whether a reviewer needs to provide a justification for their decision. Justification is visible to other reviewers and the requestor.
  /// [durationInDays] How many days each occurrence of the access review series will run.
  /// [enabled] Whether to enable assignment review.
  /// [reviewFrequency] This will determine how often the access review campaign runs, valid values are `weekly`, `monthly`, `quarterly`, `halfyearly`, or `annual`.
  /// [reviewType] Self-review or specific reviewers. Valid values are `Manager`, `Reviewers`, or `Self`.
  /// [reviewers] One or more `reviewer` blocks to specify the users who will be reviewers (when `review_type` is `Reviewers`), as documented below.
  /// [startingOn] This is the date the access review campaign will start on, formatted as an RFC3339 date string in UTC(e.g. 2018-01-01T01:02:03Z), default is now. Once an access review has been created, you cannot update its start date
  AccessPackageAssignmentPolicyAssignmentReviewSettings({
    this.accessRecommendationEnabled,
    this.accessReviewTimeoutBehavior,
    this.approverJustificationRequired,
    this.durationInDays,
    this.enabled,
    this.reviewFrequency,
    this.reviewType,
    this.reviewers,
    this.startingOn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessRecommendationEnabled': ?accessRecommendationEnabled,
      'accessReviewTimeoutBehavior': ?accessReviewTimeoutBehavior,
      'approverJustificationRequired': ?approverJustificationRequired,
      'durationInDays': ?durationInDays,
      'enabled': ?enabled,
      'reviewFrequency': ?reviewFrequency,
      'reviewType': ?reviewType,
      'reviewers': ?pulumi.Input.mapOptionalInputValue<List<AccessPackageAssignmentPolicyAssignmentReviewSettingsReviewer>, List<Map<String, dynamic>>>(reviewers, (value) => pulumi.Input.encodeList<AccessPackageAssignmentPolicyAssignmentReviewSettingsReviewer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'startingOn': ?startingOn,
    };
  }

  factory AccessPackageAssignmentPolicyAssignmentReviewSettings.fromMap(Map<String, dynamic> map) {
    return AccessPackageAssignmentPolicyAssignmentReviewSettings(
      accessRecommendationEnabled: map['accessRecommendationEnabled'] == null ? null : (map['accessRecommendationEnabled']! as bool).input(),
      accessReviewTimeoutBehavior: map['accessReviewTimeoutBehavior'] == null ? null : (map['accessReviewTimeoutBehavior']! as String).input(),
      approverJustificationRequired: map['approverJustificationRequired'] == null ? null : (map['approverJustificationRequired']! as bool).input(),
      durationInDays: map['durationInDays'] == null ? null : (map['durationInDays']! as int).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      reviewFrequency: map['reviewFrequency'] == null ? null : (map['reviewFrequency']! as String).input(),
      reviewType: map['reviewType'] == null ? null : (map['reviewType']! as String).input(),
      reviewers: map['reviewers'] == null ? null : (pulumi.Input.decodeList<AccessPackageAssignmentPolicyAssignmentReviewSettingsReviewer>(map['reviewers']!, (value) => AccessPackageAssignmentPolicyAssignmentReviewSettingsReviewer.fromMap((value as Map).cast<String, dynamic>()))).input(),
      startingOn: map['startingOn'] == null ? null : (map['startingOn']! as String).input(),
    );
  }
}

