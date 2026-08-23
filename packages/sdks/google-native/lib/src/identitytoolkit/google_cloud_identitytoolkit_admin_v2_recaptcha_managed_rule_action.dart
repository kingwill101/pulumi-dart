/// The action taken if the reCAPTCHA score of a request is within the interval [start_score, end_score].
enum GoogleCloudIdentitytoolkitAdminV2RecaptchaManagedRuleAction {
  recaptchaActionUnspecified("RECAPTCHA_ACTION_UNSPECIFIED"),
  block("BLOCK");

  const GoogleCloudIdentitytoolkitAdminV2RecaptchaManagedRuleAction(this.wireValue);
  final String wireValue;

  static GoogleCloudIdentitytoolkitAdminV2RecaptchaManagedRuleAction fromValue(String value) {
    for (final item in GoogleCloudIdentitytoolkitAdminV2RecaptchaManagedRuleAction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudIdentitytoolkitAdminV2RecaptchaManagedRuleAction value: $value');
  }
}
