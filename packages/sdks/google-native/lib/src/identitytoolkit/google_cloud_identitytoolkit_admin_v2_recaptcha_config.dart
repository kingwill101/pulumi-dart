// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_identitytoolkit_admin_v2_recaptcha_config_email_password_enforcement_state.dart';
import 'google_cloud_identitytoolkit_admin_v2_recaptcha_managed_rule.dart';

/// The reCAPTCHA Enterprise integration config.
class GoogleCloudIdentitytoolkitAdminV2RecaptchaConfig {
  /// The reCAPTCHA config for email/password provider, containing the enforcement status. The email/password provider contains all related user flows protected by reCAPTCHA.
  final pulumi.Input<GoogleCloudIdentitytoolkitAdminV2RecaptchaConfigEmailPasswordEnforcementState>? emailPasswordEnforcementState;
  /// The managed rules for authentication action based on reCAPTCHA scores. The rules are shared across providers for a given tenant project.
  final pulumi.Input<List<GoogleCloudIdentitytoolkitAdminV2RecaptchaManagedRule>>? managedRules;
  /// Whether to use the account defender for reCAPTCHA assessment. Defaults to `false`.
  final pulumi.Input<bool>? useAccountDefender;

  /// Creates a new [GoogleCloudIdentitytoolkitAdminV2RecaptchaConfig].
  /// [emailPasswordEnforcementState] The reCAPTCHA config for email/password provider, containing the enforcement status. The email/password provider contains all related user flows protected by reCAPTCHA.
  /// [managedRules] The managed rules for authentication action based on reCAPTCHA scores. The rules are shared across providers for a given tenant project.
  /// [useAccountDefender] Whether to use the account defender for reCAPTCHA assessment. Defaults to `false`.
  GoogleCloudIdentitytoolkitAdminV2RecaptchaConfig({
    this.emailPasswordEnforcementState,
    this.managedRules,
    this.useAccountDefender,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emailPasswordEnforcementState': ?pulumi.Input.mapOptionalInputValue<GoogleCloudIdentitytoolkitAdminV2RecaptchaConfigEmailPasswordEnforcementState, String>(emailPasswordEnforcementState, (value) => value.wireValue),
      'managedRules': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudIdentitytoolkitAdminV2RecaptchaManagedRule>, List<Map<String, dynamic>>>(managedRules, (value) => pulumi.Input.encodeList<GoogleCloudIdentitytoolkitAdminV2RecaptchaManagedRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'useAccountDefender': ?useAccountDefender,
    };
  }

  factory GoogleCloudIdentitytoolkitAdminV2RecaptchaConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIdentitytoolkitAdminV2RecaptchaConfig(
      emailPasswordEnforcementState: (() { final guardedValue = map['emailPasswordEnforcementState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudIdentitytoolkitAdminV2RecaptchaConfigEmailPasswordEnforcementState.fromValue(guardedValue as String)); })(),
      managedRules: (() { final guardedValue = map['managedRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudIdentitytoolkitAdminV2RecaptchaManagedRule>(guardedValue, (value) => GoogleCloudIdentitytoolkitAdminV2RecaptchaManagedRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      useAccountDefender: (() { final guardedValue = map['useAccountDefender']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

