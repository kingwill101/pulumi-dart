// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_identitytoolkit_admin_v2_recaptcha_managed_rule_action.dart';

/// The config for a reCAPTCHA managed rule. Models a single interval [start_score, end_score]. The start_score is implicit. It is either the closest smaller end_score (if one is available) or 0. Intervals in aggregate span [0, 1] without overlapping.
class GoogleCloudIdentitytoolkitAdminV2RecaptchaManagedRule {
  /// The action taken if the reCAPTCHA score of a request is within the interval [start_score, end_score].
  final GoogleCloudIdentitytoolkitAdminV2RecaptchaManagedRuleAction? action;
  /// The end score (inclusive) of the score range for an action. Must be a value between 0.0 and 1.0, at 11 discrete values; e.g. 0, 0.1, 0.2, 0.3, ... 0.9, 1.0. A score of 0.0 indicates the riskiest request (likely a bot), whereas 1.0 indicates the safest request (likely a human). See https://cloud.google.com/recaptcha-enterprise/docs/interpret-assessment.
  final double? endScore;

  /// Creates a new [GoogleCloudIdentitytoolkitAdminV2RecaptchaManagedRule].
  /// [action] The action taken if the reCAPTCHA score of a request is within the interval [start_score, end_score].
  /// [endScore] The end score (inclusive) of the score range for an action. Must be a value between 0.0 and 1.0, at 11 discrete values; e.g. 0, 0.1, 0.2, 0.3, ... 0.9, 1.0. A score of 0.0 indicates the riskiest request (likely a bot), whereas 1.0 indicates the safest request (likely a human). See https://cloud.google.com/recaptcha-enterprise/docs/interpret-assessment.
  GoogleCloudIdentitytoolkitAdminV2RecaptchaManagedRule({
    this.action,
    this.endScore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action == null ? null : action!.value,
      'endScore': ?endScore,
    };
  }

  factory GoogleCloudIdentitytoolkitAdminV2RecaptchaManagedRule.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIdentitytoolkitAdminV2RecaptchaManagedRule(
      action: map['action'] == null ? null : GoogleCloudIdentitytoolkitAdminV2RecaptchaManagedRuleAction.fromValue(map['action'] as String),
      endScore: map['endScore'] == null ? null : map['endScore'] as double,
    );
  }
}

