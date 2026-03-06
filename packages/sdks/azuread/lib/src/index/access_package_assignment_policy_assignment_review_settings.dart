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
  const AccessPackageAssignmentPolicyAssignmentReviewSettings({
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
      accessRecommendationEnabled: (() { final guardedValue = map['accessRecommendationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      accessReviewTimeoutBehavior: (() { final guardedValue = map['accessReviewTimeoutBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      approverJustificationRequired: (() { final guardedValue = map['approverJustificationRequired']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      durationInDays: (() { final guardedValue = map['durationInDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      reviewFrequency: (() { final guardedValue = map['reviewFrequency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reviewType: (() { final guardedValue = map['reviewType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reviewers: (() { final guardedValue = map['reviewers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccessPackageAssignmentPolicyAssignmentReviewSettingsReviewer>(guardedValue, (value) => AccessPackageAssignmentPolicyAssignmentReviewSettingsReviewer.fromMap((value as Map).cast<String, dynamic>()))); })(),
      startingOn: (() { final guardedValue = map['startingOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

