// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_organization_custom_pages.dart';
import 'zero_trust_organization_login_design.dart';
import 'zero_trust_organization_mfa_config.dart';
import 'zero_trust_organization_mfa_ssh_piv_key_requirements.dart';

/// {@template pulumi_index_zero_trust_organization_zero_trust_organization_args_doc}
/// The set of arguments for ZeroTrustOrganization.
/// {@endtemplate}
/// {@macro pulumi_index_zero_trust_organization_zero_trust_organization_args_doc}
class ZeroTrustOrganizationArgs {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  final pulumi.Input<String?>? accountId;
  /// When set to true, users can authenticate via WARP for any application in your organization. Application settings will take precedence over this value.
  final pulumi.Input<bool?>? allowAuthenticateViaWarp;
  /// The unique subdomain assigned to your Zero Trust organization.
  final pulumi.Input<String?>? authDomain;
  /// When set to `true`, users skip the identity provider selection step during login.
  final pulumi.Input<bool?>? autoRedirectToIdentity;
  final pulumi.Input<ZeroTrustOrganizationCustomPages?>? customPages;
  /// Determines whether to deny all requests to Cloudflare-protected resources that lack an associated Access application. If enabled, you must explicitly configure an Access application and policy to allow traffic to your Cloudflare-protected resources. For domains you want to be public across all subdomains, add the domain to the `denyUnmatchedRequestsExemptedZoneNames` array.
  final pulumi.Input<bool?>? denyUnmatchedRequests;
  /// Contains zone names to exempt from the `denyUnmatchedRequests` feature. Requests to a subdomain in an exempted zone will block unauthenticated traffic by default if there is a configured Access application and policy that matches the request.
  final pulumi.Input<List<String>?>? denyUnmatchedRequestsExemptedZoneNames;
  /// Lock all settings as Read-Only in the Dashboard, regardless of user permission. Updates may only be made via the API or Terraform for this account when enabled.
  final pulumi.Input<bool?>? isUiReadOnly;
  final pulumi.Input<ZeroTrustOrganizationLoginDesign?>? loginDesign;
  /// Configures multi-factor authentication (MFA) settings for an organization.
  final pulumi.Input<ZeroTrustOrganizationMfaConfig?>? mfaConfig;
  /// Indicates if this organization can enforce multi-factor authentication (MFA) requirements at the application and policy level.
  final pulumi.Input<bool?>? mfaConfigurationAllowed;
  /// Determines whether global MFA settings apply to applications by default. The organization must have MFA enabled with at least one authentication method and a session duration configured. Note: 'allowed*authenticators' cannot contain only the infrastructure SSH authenticators ('piv*key' and 'ssh*fido2*key') if the organization has any non-infrastructure applications.
  final pulumi.Input<bool?>? mfaRequiredForAllApps;
  /// Configures SSH PIV key requirements for MFA using hardware security keys.
  final pulumi.Input<ZeroTrustOrganizationMfaSshPivKeyRequirements?>? mfaSshPivKeyRequirements;
  /// The name of your Zero Trust organization.
  final pulumi.Input<String?>? name;
  /// The amount of time that tokens issued for applications will be valid. Must be in the format `300ms` or `2h45m`. Valid time units are: ns, us (or µs), ms, s, m, h.
  final pulumi.Input<String?>? sessionDuration;
  /// A description of the reason why the UI read only field is being toggled.
  final pulumi.Input<String?>? uiReadOnlyToggleReason;
  /// The amount of time a user seat is inactive before it expires. When the user seat exceeds the set time of inactivity, the user is removed as an active seat and no longer counts against your Teams seat count.  Minimum value for this setting is 1 month (730h). Must be in the format `300ms` or `2h45m`. Valid time units are: `ns`, `us` (or `µs`), `ms`, `s`, `m`, `h`.
  final pulumi.Input<String?>? userSeatExpirationInactiveTime;
  /// When enabled, unsuccessful WARP authentication requests with a non-HTML Accept header return a 401 response instead of redirecting to the login page.
  final pulumi.Input<bool?>? warpAuthNonBrowser401;
  /// The amount of time that tokens issued for applications will be valid. Must be in the format `30m` or `2h45m`. Valid time units are: m, h.
  final pulumi.Input<String?>? warpAuthSessionDuration;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [ZeroTrustOrganizationArgs].
  /// [accountId] The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  /// [allowAuthenticateViaWarp] When set to true, users can authenticate via WARP for any application in your organization. Application settings will take precedence over this value.
  /// [authDomain] The unique subdomain assigned to your Zero Trust organization.
  /// [autoRedirectToIdentity] When set to `true`, users skip the identity provider selection step during login.
  /// [customPages] Optional.
  /// [denyUnmatchedRequests] Determines whether to deny all requests to Cloudflare-protected resources that lack an associated Access application. If enabled, you must explicitly configure an Access application and policy to allow traffic to your Cloudflare-protected resources. For domains you want to be public across all subdomains, add the domain to the `denyUnmatchedRequestsExemptedZoneNames` array.
  /// [denyUnmatchedRequestsExemptedZoneNames] Contains zone names to exempt from the `denyUnmatchedRequests` feature. Requests to a subdomain in an exempted zone will block unauthenticated traffic by default if there is a configured Access application and policy that matches the request.
  /// [isUiReadOnly] Lock all settings as Read-Only in the Dashboard, regardless of user permission. Updates may only be made via the API or Terraform for this account when enabled.
  /// [loginDesign] Optional.
  /// [mfaConfig] Configures multi-factor authentication (MFA) settings for an organization.
  /// [mfaConfigurationAllowed] Indicates if this organization can enforce multi-factor authentication (MFA) requirements at the application and policy level.
  /// [mfaRequiredForAllApps] Determines whether global MFA settings apply to applications by default. The organization must have MFA enabled with at least one authentication method and a session duration configured. Note: 'allowed*authenticators' cannot contain only the infrastructure SSH authenticators ('piv*key' and 'ssh*fido2*key') if the organization has any non-infrastructure applications.
  /// [mfaSshPivKeyRequirements] Configures SSH PIV key requirements for MFA using hardware security keys.
  /// [name] The name of your Zero Trust organization.
  /// [sessionDuration] The amount of time that tokens issued for applications will be valid. Must be in the format `300ms` or `2h45m`. Valid time units are: ns, us (or µs), ms, s, m, h.
  /// [uiReadOnlyToggleReason] A description of the reason why the UI read only field is being toggled.
  /// [userSeatExpirationInactiveTime] The amount of time a user seat is inactive before it expires. When the user seat exceeds the set time of inactivity, the user is removed as an active seat and no longer counts against your Teams seat count.  Minimum value for this setting is 1 month (730h). Must be in the format `300ms` or `2h45m`. Valid time units are: `ns`, `us` (or `µs`), `ms`, `s`, `m`, `h`.
  /// [warpAuthNonBrowser401] When enabled, unsuccessful WARP authentication requests with a non-HTML Accept header return a 401 response instead of redirecting to the login page.
  /// [warpAuthSessionDuration] The amount of time that tokens issued for applications will be valid. Must be in the format `30m` or `2h45m`. Valid time units are: m, h.
  /// [zoneId] The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  const ZeroTrustOrganizationArgs({
    this.accountId,
    this.allowAuthenticateViaWarp,
    this.authDomain,
    this.autoRedirectToIdentity,
    this.customPages,
    this.denyUnmatchedRequests,
    this.denyUnmatchedRequestsExemptedZoneNames,
    this.isUiReadOnly,
    this.loginDesign,
    this.mfaConfig,
    this.mfaConfigurationAllowed,
    this.mfaRequiredForAllApps,
    this.mfaSshPivKeyRequirements,
    this.name,
    this.sessionDuration,
    this.uiReadOnlyToggleReason,
    this.userSeatExpirationInactiveTime,
    this.warpAuthNonBrowser401,
    this.warpAuthSessionDuration,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'allowAuthenticateViaWarp': ?allowAuthenticateViaWarp,
      'authDomain': ?authDomain,
      'autoRedirectToIdentity': ?autoRedirectToIdentity,
      'customPages': ?pulumi.Input.mapOptionalInputValue<ZeroTrustOrganizationCustomPages, Map<String, dynamic>>(customPages, (value) => value.toMap()),
      'denyUnmatchedRequests': ?denyUnmatchedRequests,
      'denyUnmatchedRequestsExemptedZoneNames': ?denyUnmatchedRequestsExemptedZoneNames,
      'isUiReadOnly': ?isUiReadOnly,
      'loginDesign': ?pulumi.Input.mapOptionalInputValue<ZeroTrustOrganizationLoginDesign, Map<String, dynamic>>(loginDesign, (value) => value.toMap()),
      'mfaConfig': ?pulumi.Input.mapOptionalInputValue<ZeroTrustOrganizationMfaConfig, Map<String, dynamic>>(mfaConfig, (value) => value.toMap()),
      'mfaConfigurationAllowed': ?mfaConfigurationAllowed,
      'mfaRequiredForAllApps': ?mfaRequiredForAllApps,
      'mfaSshPivKeyRequirements': ?pulumi.Input.mapOptionalInputValue<ZeroTrustOrganizationMfaSshPivKeyRequirements, Map<String, dynamic>>(mfaSshPivKeyRequirements, (value) => value.toMap()),
      'name': ?name,
      'sessionDuration': ?sessionDuration,
      'uiReadOnlyToggleReason': ?uiReadOnlyToggleReason,
      'userSeatExpirationInactiveTime': ?userSeatExpirationInactiveTime,
      'warpAuthNonBrowser401': ?warpAuthNonBrowser401,
      'warpAuthSessionDuration': ?warpAuthSessionDuration,
      'zoneId': ?zoneId,
    };
  }

  factory ZeroTrustOrganizationArgs.fromMap(Map<String, dynamic> map) {
    return ZeroTrustOrganizationArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      allowAuthenticateViaWarp: (() { final guardedValue = map['allowAuthenticateViaWarp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      authDomain: (() { final guardedValue = map['authDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      autoRedirectToIdentity: (() { final guardedValue = map['autoRedirectToIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      customPages: (() { final guardedValue = map['customPages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustOrganizationCustomPages.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      denyUnmatchedRequests: (() { final guardedValue = map['denyUnmatchedRequests']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      denyUnmatchedRequestsExemptedZoneNames: (() { final guardedValue = map['denyUnmatchedRequestsExemptedZoneNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      isUiReadOnly: (() { final guardedValue = map['isUiReadOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      loginDesign: (() { final guardedValue = map['loginDesign']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustOrganizationLoginDesign.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mfaConfig: (() { final guardedValue = map['mfaConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustOrganizationMfaConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mfaConfigurationAllowed: (() { final guardedValue = map['mfaConfigurationAllowed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      mfaRequiredForAllApps: (() { final guardedValue = map['mfaRequiredForAllApps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      mfaSshPivKeyRequirements: (() { final guardedValue = map['mfaSshPivKeyRequirements']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustOrganizationMfaSshPivKeyRequirements.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sessionDuration: (() { final guardedValue = map['sessionDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uiReadOnlyToggleReason: (() { final guardedValue = map['uiReadOnlyToggleReason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userSeatExpirationInactiveTime: (() { final guardedValue = map['userSeatExpirationInactiveTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      warpAuthNonBrowser401: (() { final guardedValue = map['warpAuthNonBrowser401']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      warpAuthSessionDuration: (() { final guardedValue = map['warpAuthSessionDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
