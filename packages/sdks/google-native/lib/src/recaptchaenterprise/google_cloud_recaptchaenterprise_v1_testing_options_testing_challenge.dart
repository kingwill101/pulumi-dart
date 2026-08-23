/// Optional. For challenge-based keys only (CHECKBOX, INVISIBLE), all challenge requests for this site will return nocaptcha if NOCAPTCHA, or an unsolvable challenge if CHALLENGE.
enum GoogleCloudRecaptchaenterpriseV1TestingOptionsTestingChallenge {
  testingChallengeUnspecified("TESTING_CHALLENGE_UNSPECIFIED"),
  nocaptcha("NOCAPTCHA"),
  unsolvableChallenge("UNSOLVABLE_CHALLENGE");

  const GoogleCloudRecaptchaenterpriseV1TestingOptionsTestingChallenge(this.wireValue);
  final String wireValue;

  static GoogleCloudRecaptchaenterpriseV1TestingOptionsTestingChallenge fromValue(String value) {
    for (final item in GoogleCloudRecaptchaenterpriseV1TestingOptionsTestingChallenge.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudRecaptchaenterpriseV1TestingOptionsTestingChallenge value: $value');
  }
}
