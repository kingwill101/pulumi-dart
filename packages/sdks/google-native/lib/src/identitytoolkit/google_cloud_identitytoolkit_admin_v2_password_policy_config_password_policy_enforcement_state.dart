import 'package:pulumi/pulumi.dart' as pulumi;

/// Which enforcement mode to use for the password policy.
enum GoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfigPasswordPolicyEnforcementState implements pulumi.PulumiEnum<String> {
  passwordPolicyEnforcementStateUnspecified("PASSWORD_POLICY_ENFORCEMENT_STATE_UNSPECIFIED"),
  off("OFF"),
  enforce("ENFORCE");

  const GoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfigPasswordPolicyEnforcementState(this.wireValue);
  @override
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
