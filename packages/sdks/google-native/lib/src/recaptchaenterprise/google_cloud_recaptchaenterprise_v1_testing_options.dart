// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_recaptchaenterprise_v1_testing_options_testing_challenge.dart';

/// Options for user acceptance testing.
class GoogleCloudRecaptchaenterpriseV1TestingOptions {
  /// Optional. For challenge-based keys only (CHECKBOX, INVISIBLE), all challenge requests for this site will return nocaptcha if NOCAPTCHA, or an unsolvable challenge if CHALLENGE.
  final pulumi.Input<GoogleCloudRecaptchaenterpriseV1TestingOptionsTestingChallenge>? testingChallenge;
  /// Optional. All assessments for this Key will return this score. Must be between 0 (likely not legitimate) and 1 (likely legitimate) inclusive.
  final pulumi.Input<double>? testingScore;

  /// Creates a new [GoogleCloudRecaptchaenterpriseV1TestingOptions].
  /// [testingChallenge] Optional. For challenge-based keys only (CHECKBOX, INVISIBLE), all challenge requests for this site will return nocaptcha if NOCAPTCHA, or an unsolvable challenge if CHALLENGE.
  /// [testingScore] Optional. All assessments for this Key will return this score. Must be between 0 (likely not legitimate) and 1 (likely legitimate) inclusive.
  const GoogleCloudRecaptchaenterpriseV1TestingOptions({
    this.testingChallenge,
    this.testingScore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'testingChallenge': ?pulumi.Input.mapOptionalInputValue<GoogleCloudRecaptchaenterpriseV1TestingOptionsTestingChallenge, String>(testingChallenge, (value) => value.wireValue),
      'testingScore': ?testingScore,
    };
  }

  factory GoogleCloudRecaptchaenterpriseV1TestingOptions.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRecaptchaenterpriseV1TestingOptions(
      testingChallenge: (() { final guardedValue = map['testingChallenge']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudRecaptchaenterpriseV1TestingOptionsTestingChallenge.fromValue(guardedValue as String)); })(),
      testingScore: (() { final guardedValue = map['testingScore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

