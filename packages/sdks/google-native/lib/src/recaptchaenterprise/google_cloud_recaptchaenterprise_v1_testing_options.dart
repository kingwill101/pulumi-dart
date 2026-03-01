// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_recaptchaenterprise_v1_testing_options_testing_challenge.dart';

/// Options for user acceptance testing.
class GoogleCloudRecaptchaenterpriseV1TestingOptions {
  /// Optional. For challenge-based keys only (CHECKBOX, INVISIBLE), all challenge requests for this site will return nocaptcha if NOCAPTCHA, or an unsolvable challenge if CHALLENGE.
  final GoogleCloudRecaptchaenterpriseV1TestingOptionsTestingChallenge? testingChallenge;
  /// Optional. All assessments for this Key will return this score. Must be between 0 (likely not legitimate) and 1 (likely legitimate) inclusive.
  final double? testingScore;

  /// Creates a new [GoogleCloudRecaptchaenterpriseV1TestingOptions].
  /// [testingChallenge] Optional. For challenge-based keys only (CHECKBOX, INVISIBLE), all challenge requests for this site will return nocaptcha if NOCAPTCHA, or an unsolvable challenge if CHALLENGE.
  /// [testingScore] Optional. All assessments for this Key will return this score. Must be between 0 (likely not legitimate) and 1 (likely legitimate) inclusive.
  GoogleCloudRecaptchaenterpriseV1TestingOptions({
    this.testingChallenge,
    this.testingScore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'testingChallenge': ?testingChallenge == null ? null : testingChallenge!.value,
      'testingScore': ?testingScore,
    };
  }

  factory GoogleCloudRecaptchaenterpriseV1TestingOptions.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRecaptchaenterpriseV1TestingOptions(
      testingChallenge: map['testingChallenge'] == null ? null : GoogleCloudRecaptchaenterpriseV1TestingOptionsTestingChallenge.fromValue(map['testingChallenge'] as String),
      testingScore: map['testingScore'] == null ? null : map['testingScore'] as double,
    );
  }
}

