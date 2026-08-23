// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_identitytoolkit_admin_v2_recaptcha_key_response.dart';
import 'google_cloud_identitytoolkit_admin_v2_recaptcha_managed_rule_response.dart';

/// The reCAPTCHA Enterprise integration config.
class GoogleCloudIdentitytoolkitAdminV2RecaptchaConfigResponse {
  /// The reCAPTCHA config for email/password provider, containing the enforcement status. The email/password provider contains all related user flows protected by reCAPTCHA.
  final pulumi.Input<String> emailPasswordEnforcementState;
  /// The managed rules for authentication action based on reCAPTCHA scores. The rules are shared across providers for a given tenant project.
  final pulumi.Input<List<GoogleCloudIdentitytoolkitAdminV2RecaptchaManagedRuleResponse>> managedRules;
  /// The reCAPTCHA keys.
  final pulumi.Input<List<GoogleCloudIdentitytoolkitAdminV2RecaptchaKeyResponse>> recaptchaKeys;
  /// Whether to use the account defender for reCAPTCHA assessment. Defaults to `false`.
  final pulumi.Input<bool> useAccountDefender;

  /// Creates a new [GoogleCloudIdentitytoolkitAdminV2RecaptchaConfigResponse].
  /// [emailPasswordEnforcementState] The reCAPTCHA config for email/password provider, containing the enforcement status. The email/password provider contains all related user flows protected by reCAPTCHA.
  /// [managedRules] The managed rules for authentication action based on reCAPTCHA scores. The rules are shared across providers for a given tenant project.
  /// [recaptchaKeys] The reCAPTCHA keys.
  /// [useAccountDefender] Whether to use the account defender for reCAPTCHA assessment. Defaults to `false`.
  const GoogleCloudIdentitytoolkitAdminV2RecaptchaConfigResponse({
    required this.emailPasswordEnforcementState,
    required this.managedRules,
    required this.recaptchaKeys,
    required this.useAccountDefender,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emailPasswordEnforcementState': emailPasswordEnforcementState,
      'managedRules': pulumi.Input.mapInputValue<List<GoogleCloudIdentitytoolkitAdminV2RecaptchaManagedRuleResponse>, List<Map<String, dynamic>>>(managedRules, (value) => pulumi.Input.encodeList<GoogleCloudIdentitytoolkitAdminV2RecaptchaManagedRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'recaptchaKeys': pulumi.Input.mapInputValue<List<GoogleCloudIdentitytoolkitAdminV2RecaptchaKeyResponse>, List<Map<String, dynamic>>>(recaptchaKeys, (value) => pulumi.Input.encodeList<GoogleCloudIdentitytoolkitAdminV2RecaptchaKeyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'useAccountDefender': useAccountDefender,
    };
  }

  factory GoogleCloudIdentitytoolkitAdminV2RecaptchaConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIdentitytoolkitAdminV2RecaptchaConfigResponse(
      emailPasswordEnforcementState: pulumi.Input.fromValue(map['emailPasswordEnforcementState'] as String),
      managedRules: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudIdentitytoolkitAdminV2RecaptchaManagedRuleResponse>(map['managedRules']!, (value) => GoogleCloudIdentitytoolkitAdminV2RecaptchaManagedRuleResponse.fromMap((value as Map).cast<String, dynamic>()))),
      recaptchaKeys: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudIdentitytoolkitAdminV2RecaptchaKeyResponse>(map['recaptchaKeys']!, (value) => GoogleCloudIdentitytoolkitAdminV2RecaptchaKeyResponse.fromMap((value as Map).cast<String, dynamic>()))),
      useAccountDefender: pulumi.Input.fromValue(map['useAccountDefender'] as bool),
    );
  }
}
