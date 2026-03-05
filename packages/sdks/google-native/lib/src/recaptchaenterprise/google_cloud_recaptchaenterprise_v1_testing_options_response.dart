// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Options for user acceptance testing.
class GoogleCloudRecaptchaenterpriseV1TestingOptionsResponse {
  /// Optional. For challenge-based keys only (CHECKBOX, INVISIBLE), all challenge requests for this site will return nocaptcha if NOCAPTCHA, or an unsolvable challenge if CHALLENGE.
  final pulumi.Input<String> testingChallenge;
  /// Optional. All assessments for this Key will return this score. Must be between 0 (likely not legitimate) and 1 (likely legitimate) inclusive.
  final pulumi.Input<double> testingScore;

  /// Creates a new [GoogleCloudRecaptchaenterpriseV1TestingOptionsResponse].
  /// [testingChallenge] Optional. For challenge-based keys only (CHECKBOX, INVISIBLE), all challenge requests for this site will return nocaptcha if NOCAPTCHA, or an unsolvable challenge if CHALLENGE.
  /// [testingScore] Optional. All assessments for this Key will return this score. Must be between 0 (likely not legitimate) and 1 (likely legitimate) inclusive.
  GoogleCloudRecaptchaenterpriseV1TestingOptionsResponse({
    required this.testingChallenge,
    required this.testingScore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'testingChallenge': testingChallenge,
      'testingScore': testingScore,
    };
  }

  factory GoogleCloudRecaptchaenterpriseV1TestingOptionsResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRecaptchaenterpriseV1TestingOptionsResponse(
      testingChallenge: pulumi.Input.fromValue(map['testingChallenge'] as String),
      testingScore: pulumi.Input.fromValue(map['testingScore'] as double),
    );
  }
}

