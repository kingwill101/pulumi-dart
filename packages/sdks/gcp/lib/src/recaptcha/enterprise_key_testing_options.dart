// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnterpriseKeyTestingOptions {
  /// For challenge-based keys only (CHECKBOX, INVISIBLE), all challenge requests for this site will return nocaptcha if NOCAPTCHA, or an unsolvable challenge if UNSOLVABLE_CHALLENGE. Possible values: TESTING_CHALLENGE_UNSPECIFIED, NOCAPTCHA, UNSOLVABLE_CHALLENGE
  final pulumi.Input<String>? testingChallenge;
  /// All assessments for this Key will return this score. Must be between 0 (likely not legitimate) and 1 (likely legitimate) inclusive.
  final pulumi.Input<double>? testingScore;

  /// Creates a new [EnterpriseKeyTestingOptions].
  /// [testingChallenge] For challenge-based keys only (CHECKBOX, INVISIBLE), all challenge requests for this site will return nocaptcha if NOCAPTCHA, or an unsolvable challenge if UNSOLVABLE_CHALLENGE. Possible values: TESTING_CHALLENGE_UNSPECIFIED, NOCAPTCHA, UNSOLVABLE_CHALLENGE
  /// [testingScore] All assessments for this Key will return this score. Must be between 0 (likely not legitimate) and 1 (likely legitimate) inclusive.
  EnterpriseKeyTestingOptions({
    this.testingChallenge,
    this.testingScore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'testingChallenge': ?testingChallenge,
      'testingScore': ?testingScore,
    };
  }

  factory EnterpriseKeyTestingOptions.fromMap(Map<String, dynamic> map) {
    return EnterpriseKeyTestingOptions(
      testingChallenge: (() { final guardedValue = map['testingChallenge']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      testingScore: (() { final guardedValue = map['testingScore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

