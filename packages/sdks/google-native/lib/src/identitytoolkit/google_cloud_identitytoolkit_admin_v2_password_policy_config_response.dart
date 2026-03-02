// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_identitytoolkit_admin_v2_password_policy_version_response.dart';

/// The configuration for the password policy on the project.
class GoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfigResponse {
  /// Users must have a password compliant with the password policy to sign-in.
  final pulumi.Input<bool> forceUpgradeOnSignin;
  /// The last time the password policy on the project was updated.
  final pulumi.Input<String> lastUpdateTime;
  /// Which enforcement mode to use for the password policy.
  final pulumi.Input<String> passwordPolicyEnforcementState;
  /// Must be of length 1. Contains the strength attributes for the password policy.
  final pulumi.Input<List<GoogleCloudIdentitytoolkitAdminV2PasswordPolicyVersionResponse>> passwordPolicyVersions;

  /// Creates a new [GoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfigResponse].
  /// [forceUpgradeOnSignin] Users must have a password compliant with the password policy to sign-in.
  /// [lastUpdateTime] The last time the password policy on the project was updated.
  /// [passwordPolicyEnforcementState] Which enforcement mode to use for the password policy.
  /// [passwordPolicyVersions] Must be of length 1. Contains the strength attributes for the password policy.
  GoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfigResponse({
    required this.forceUpgradeOnSignin,
    required this.lastUpdateTime,
    required this.passwordPolicyEnforcementState,
    required this.passwordPolicyVersions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forceUpgradeOnSignin': forceUpgradeOnSignin,
      'lastUpdateTime': lastUpdateTime,
      'passwordPolicyEnforcementState': passwordPolicyEnforcementState,
      'passwordPolicyVersions': pulumi.Input.mapInputValue<List<GoogleCloudIdentitytoolkitAdminV2PasswordPolicyVersionResponse>, List<Map<String, dynamic>>>(passwordPolicyVersions, (value) => pulumi.Input.encodeList<GoogleCloudIdentitytoolkitAdminV2PasswordPolicyVersionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfigResponse(
      forceUpgradeOnSignin: (map['forceUpgradeOnSignin'] as bool).input(),
      lastUpdateTime: (map['lastUpdateTime'] as String).input(),
      passwordPolicyEnforcementState: (map['passwordPolicyEnforcementState'] as String).input(),
      passwordPolicyVersions: (pulumi.Input.decodeList<GoogleCloudIdentitytoolkitAdminV2PasswordPolicyVersionResponse>(map['passwordPolicyVersions'], (value) => GoogleCloudIdentitytoolkitAdminV2PasswordPolicyVersionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

