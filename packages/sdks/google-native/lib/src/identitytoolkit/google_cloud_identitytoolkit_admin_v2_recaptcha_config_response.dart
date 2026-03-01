// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_identitytoolkit_admin_v2_recaptcha_key_response.dart';
import 'google_cloud_identitytoolkit_admin_v2_recaptcha_managed_rule_response.dart';

/// The reCAPTCHA Enterprise integration config.
class GoogleCloudIdentitytoolkitAdminV2RecaptchaConfigResponse {
  /// The reCAPTCHA config for email/password provider, containing the enforcement status. The email/password provider contains all related user flows protected by reCAPTCHA.
  final String emailPasswordEnforcementState;
  /// The managed rules for authentication action based on reCAPTCHA scores. The rules are shared across providers for a given tenant project.
  final List<GoogleCloudIdentitytoolkitAdminV2RecaptchaManagedRuleResponse> managedRules;
  /// The reCAPTCHA keys.
  final List<GoogleCloudIdentitytoolkitAdminV2RecaptchaKeyResponse> recaptchaKeys;
  /// Whether to use the account defender for reCAPTCHA assessment. Defaults to `false`.
  final bool useAccountDefender;

  /// Creates a new [GoogleCloudIdentitytoolkitAdminV2RecaptchaConfigResponse].
  /// [emailPasswordEnforcementState] The reCAPTCHA config for email/password provider, containing the enforcement status. The email/password provider contains all related user flows protected by reCAPTCHA.
  /// [managedRules] The managed rules for authentication action based on reCAPTCHA scores. The rules are shared across providers for a given tenant project.
  /// [recaptchaKeys] The reCAPTCHA keys.
  /// [useAccountDefender] Whether to use the account defender for reCAPTCHA assessment. Defaults to `false`.
  GoogleCloudIdentitytoolkitAdminV2RecaptchaConfigResponse({
    required this.emailPasswordEnforcementState,
    required this.managedRules,
    required this.recaptchaKeys,
    required this.useAccountDefender,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emailPasswordEnforcementState': emailPasswordEnforcementState,
      'managedRules': pulumi.Input.encodeList<GoogleCloudIdentitytoolkitAdminV2RecaptchaManagedRuleResponse, Map<String, dynamic>>(managedRules, (value) => value.toMap()),
      'recaptchaKeys': pulumi.Input.encodeList<GoogleCloudIdentitytoolkitAdminV2RecaptchaKeyResponse, Map<String, dynamic>>(recaptchaKeys, (value) => value.toMap()),
      'useAccountDefender': useAccountDefender,
    };
  }

  factory GoogleCloudIdentitytoolkitAdminV2RecaptchaConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIdentitytoolkitAdminV2RecaptchaConfigResponse(
      emailPasswordEnforcementState: map['emailPasswordEnforcementState'] as String,
      managedRules: pulumi.Input.decodeList<GoogleCloudIdentitytoolkitAdminV2RecaptchaManagedRuleResponse>(map['managedRules'], (value) => GoogleCloudIdentitytoolkitAdminV2RecaptchaManagedRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
      recaptchaKeys: pulumi.Input.decodeList<GoogleCloudIdentitytoolkitAdminV2RecaptchaKeyResponse>(map['recaptchaKeys'], (value) => GoogleCloudIdentitytoolkitAdminV2RecaptchaKeyResponse.fromMap((value as Map).cast<String, dynamic>())),
      useAccountDefender: map['useAccountDefender'] as bool,
    );
  }
}

