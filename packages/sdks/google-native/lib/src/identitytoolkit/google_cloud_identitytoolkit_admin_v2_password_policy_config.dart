// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_identitytoolkit_admin_v2_password_policy_config_password_policy_enforcement_state.dart';
import 'google_cloud_identitytoolkit_admin_v2_password_policy_version.dart';

/// The configuration for the password policy on the project.
class GoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfig {
  /// Users must have a password compliant with the password policy to sign-in.
  final pulumi.Input<bool>? forceUpgradeOnSignin;

  /// Which enforcement mode to use for the password policy.
  final pulumi.Input<
    GoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfigPasswordPolicyEnforcementState
  >?
  passwordPolicyEnforcementState;

  /// Must be of length 1. Contains the strength attributes for the password policy.
  final pulumi.Input<
    List<GoogleCloudIdentitytoolkitAdminV2PasswordPolicyVersion>
  >?
  passwordPolicyVersions;

  /// Creates a new [GoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfig].
  /// [forceUpgradeOnSignin] Users must have a password compliant with the password policy to sign-in.
  /// [passwordPolicyEnforcementState] Which enforcement mode to use for the password policy.
  /// [passwordPolicyVersions] Must be of length 1. Contains the strength attributes for the password policy.
  GoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfig({
    this.forceUpgradeOnSignin,
    this.passwordPolicyEnforcementState,
    this.passwordPolicyVersions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forceUpgradeOnSignin': ?forceUpgradeOnSignin,
      'passwordPolicyEnforcementState':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfigPasswordPolicyEnforcementState,
            String
          >(passwordPolicyEnforcementState, (value) => value.wireValue),
      'passwordPolicyVersions':
          ?pulumi.Input.mapOptionalInputValue<
            List<GoogleCloudIdentitytoolkitAdminV2PasswordPolicyVersion>,
            List<Map<String, dynamic>>
          >(
            passwordPolicyVersions,
            (value) =>
                pulumi.Input.encodeList<
                  GoogleCloudIdentitytoolkitAdminV2PasswordPolicyVersion,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfig(
      forceUpgradeOnSignin: (() {
        final guardedValue = map['forceUpgradeOnSignin'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      passwordPolicyEnforcementState: (() {
        final guardedValue = map['passwordPolicyEnforcementState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfigPasswordPolicyEnforcementState.fromValue(
            guardedValue as String,
          ),
        );
      })(),
      passwordPolicyVersions: (() {
        final guardedValue = map['passwordPolicyVersions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            GoogleCloudIdentitytoolkitAdminV2PasswordPolicyVersion
          >(
            guardedValue,
            (value) =>
                GoogleCloudIdentitytoolkitAdminV2PasswordPolicyVersion.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
    );
  }
}
