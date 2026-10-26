// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_identitytoolkit_admin_v2_client_permission_config_response.dart';
import 'google_cloud_identitytoolkit_admin_v2_email_privacy_config_response.dart';
import 'google_cloud_identitytoolkit_admin_v2_hash_config_response.dart';
import 'google_cloud_identitytoolkit_admin_v2_inheritance_response.dart';
import 'google_cloud_identitytoolkit_admin_v2_monitoring_config_response.dart';
import 'google_cloud_identitytoolkit_admin_v2_multi_factor_auth_config_response.dart';
import 'google_cloud_identitytoolkit_admin_v2_password_policy_config_response.dart';
import 'google_cloud_identitytoolkit_admin_v2_recaptcha_config_response.dart';
import 'google_cloud_identitytoolkit_admin_v2_sms_region_config_response.dart';

/// Result data returned by getTenant.
class GetTenantResult {
  /// Whether to allow email/password user authentication.
  final bool? allowPasswordSignup;
  /// Whether anonymous users will be auto-deleted after a period of 30 days.
  final bool? autodeleteAnonymousUsers;
  /// Options related to how clients making requests on behalf of a project should be configured.
  final GoogleCloudIdentitytoolkitAdminV2ClientPermissionConfigResponse? client;
  /// Whether authentication is disabled for the tenant. If true, the users under the disabled tenant are not allowed to sign-in. Admins of the disabled tenant are not able to manage its users.
  final bool? disableAuth;
  /// Display name of the tenant.
  final String? displayName;
  /// Configuration for settings related to email privacy and public visibility.
  final GoogleCloudIdentitytoolkitAdminV2EmailPrivacyConfigResponse? emailPrivacyConfig;
  /// Whether to enable anonymous user authentication.
  final bool? enableAnonymousUser;
  /// Whether to enable email link user authentication.
  final bool? enableEmailLinkSignin;
  /// Hash config information of a tenant for display on Pantheon. This can only be displayed on Pantheon to avoid the sensitive information to get accidentally leaked. Only returned in GetTenant response to restrict reading of this information. Requires firebaseauth.configs.getHashConfig permission on the agent project for returning this field.
  final GoogleCloudIdentitytoolkitAdminV2HashConfigResponse? hashConfig;
  /// Specify the settings that the tenant could inherit.
  final GoogleCloudIdentitytoolkitAdminV2InheritanceResponse? inheritance;
  /// The tenant-level configuration of MFA options.
  final GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfigResponse? mfaConfig;
  /// Configuration related to monitoring project activity.
  final GoogleCloudIdentitytoolkitAdminV2MonitoringConfigResponse? monitoring;
  /// Resource name of a tenant. For example: "projects/{project-id}/tenants/{tenant-id}"
  final String? name;
  /// The tenant-level password policy config
  final GoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfigResponse? passwordPolicyConfig;
  /// The tenant-level reCAPTCHA config.
  final GoogleCloudIdentitytoolkitAdminV2RecaptchaConfigResponse? recaptchaConfig;
  /// Configures which regions are enabled for SMS verification code sending.
  final GoogleCloudIdentitytoolkitAdminV2SmsRegionConfigResponse? smsRegionConfig;
  /// A map of pairs that can be used for MFA. The phone number should be in E.164 format (https://www.itu.int/rec/T-REC-E.164/) and a maximum of 10 pairs can be added (error will be thrown once exceeded).
  final Map<String, String>? testPhoneNumbers;

  /// Creates a new [GetTenantResult].
  /// [allowPasswordSignup] Whether to allow email/password user authentication.
  /// [autodeleteAnonymousUsers] Whether anonymous users will be auto-deleted after a period of 30 days.
  /// [client] Options related to how clients making requests on behalf of a project should be configured.
  /// [disableAuth] Whether authentication is disabled for the tenant. If true, the users under the disabled tenant are not allowed to sign-in. Admins of the disabled tenant are not able to manage its users.
  /// [displayName] Display name of the tenant.
  /// [emailPrivacyConfig] Configuration for settings related to email privacy and public visibility.
  /// [enableAnonymousUser] Whether to enable anonymous user authentication.
  /// [enableEmailLinkSignin] Whether to enable email link user authentication.
  /// [hashConfig] Hash config information of a tenant for display on Pantheon. This can only be displayed on Pantheon to avoid the sensitive information to get accidentally leaked. Only returned in GetTenant response to restrict reading of this information. Requires firebaseauth.configs.getHashConfig permission on the agent project for returning this field.
  /// [inheritance] Specify the settings that the tenant could inherit.
  /// [mfaConfig] The tenant-level configuration of MFA options.
  /// [monitoring] Configuration related to monitoring project activity.
  /// [name] Resource name of a tenant. For example: "projects/{project-id}/tenants/{tenant-id}"
  /// [passwordPolicyConfig] The tenant-level password policy config
  /// [recaptchaConfig] The tenant-level reCAPTCHA config.
  /// [smsRegionConfig] Configures which regions are enabled for SMS verification code sending.
  /// [testPhoneNumbers] A map of pairs that can be used for MFA. The phone number should be in E.164 format (https://www.itu.int/rec/T-REC-E.164/) and a maximum of 10 pairs can be added (error will be thrown once exceeded).
  const GetTenantResult({
    this.allowPasswordSignup,
    this.autodeleteAnonymousUsers,
    this.client,
    this.disableAuth,
    this.displayName,
    this.emailPrivacyConfig,
    this.enableAnonymousUser,
    this.enableEmailLinkSignin,
    this.hashConfig,
    this.inheritance,
    this.mfaConfig,
    this.monitoring,
    this.name,
    this.passwordPolicyConfig,
    this.recaptchaConfig,
    this.smsRegionConfig,
    this.testPhoneNumbers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowPasswordSignup': ?allowPasswordSignup,
      'autodeleteAnonymousUsers': ?autodeleteAnonymousUsers,
      'client': ?client?.toMap(),
      'disableAuth': ?disableAuth,
      'displayName': ?displayName,
      'emailPrivacyConfig': ?emailPrivacyConfig?.toMap(),
      'enableAnonymousUser': ?enableAnonymousUser,
      'enableEmailLinkSignin': ?enableEmailLinkSignin,
      'hashConfig': ?hashConfig?.toMap(),
      'inheritance': ?inheritance?.toMap(),
      'mfaConfig': ?mfaConfig?.toMap(),
      'monitoring': ?monitoring?.toMap(),
      'name': ?name,
      'passwordPolicyConfig': ?passwordPolicyConfig?.toMap(),
      'recaptchaConfig': ?recaptchaConfig?.toMap(),
      'smsRegionConfig': ?smsRegionConfig?.toMap(),
      'testPhoneNumbers': ?testPhoneNumbers,
    };
  }

  factory GetTenantResult.fromMap(Map<String, dynamic> map) {
    return GetTenantResult(
      allowPasswordSignup: (() { final guardedValue = map['allowPasswordSignup']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      autodeleteAnonymousUsers: (() { final guardedValue = map['autodeleteAnonymousUsers']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      client: (() { final guardedValue = map['client']; if (guardedValue == null) return null; return GoogleCloudIdentitytoolkitAdminV2ClientPermissionConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      disableAuth: (() { final guardedValue = map['disableAuth']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      emailPrivacyConfig: (() { final guardedValue = map['emailPrivacyConfig']; if (guardedValue == null) return null; return GoogleCloudIdentitytoolkitAdminV2EmailPrivacyConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      enableAnonymousUser: (() { final guardedValue = map['enableAnonymousUser']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableEmailLinkSignin: (() { final guardedValue = map['enableEmailLinkSignin']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      hashConfig: (() { final guardedValue = map['hashConfig']; if (guardedValue == null) return null; return GoogleCloudIdentitytoolkitAdminV2HashConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      inheritance: (() { final guardedValue = map['inheritance']; if (guardedValue == null) return null; return GoogleCloudIdentitytoolkitAdminV2InheritanceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      mfaConfig: (() { final guardedValue = map['mfaConfig']; if (guardedValue == null) return null; return GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      monitoring: (() { final guardedValue = map['monitoring']; if (guardedValue == null) return null; return GoogleCloudIdentitytoolkitAdminV2MonitoringConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      passwordPolicyConfig: (() { final guardedValue = map['passwordPolicyConfig']; if (guardedValue == null) return null; return GoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      recaptchaConfig: (() { final guardedValue = map['recaptchaConfig']; if (guardedValue == null) return null; return GoogleCloudIdentitytoolkitAdminV2RecaptchaConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      smsRegionConfig: (() { final guardedValue = map['smsRegionConfig']; if (guardedValue == null) return null; return GoogleCloudIdentitytoolkitAdminV2SmsRegionConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      testPhoneNumbers: (() { final guardedValue = map['testPhoneNumbers']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
