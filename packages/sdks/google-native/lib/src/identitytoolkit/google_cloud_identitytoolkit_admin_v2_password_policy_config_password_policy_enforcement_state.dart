/// Which enforcement mode to use for the password policy.
enum GoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfigPasswordPolicyEnforcementState {
  passwordPolicyEnforcementStateUnspecified("PASSWORD_POLICY_ENFORCEMENT_STATE_UNSPECIFIED"),
  off("OFF"),
  enforce("ENFORCE");

  const GoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfigPasswordPolicyEnforcementState(this.wireValue);
  final String wireValue;

  static GoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfigPasswordPolicyEnforcementState fromValue(String value) {
    for (final item in GoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfigPasswordPolicyEnforcementState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfigPasswordPolicyEnforcementState value: $value');
  }
}
