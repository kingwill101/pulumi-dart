// ignore_for_file: unused_element, unnecessary_cast

import 'get_zero_trust_organization_custom_pages.dart';
import 'get_zero_trust_organization_login_design.dart';
import 'get_zero_trust_organization_mfa_config.dart';
import 'get_zero_trust_organization_mfa_ssh_piv_key_requirements.dart';

/// Result data returned by getZeroTrustOrganization.
class GetZeroTrustOrganizationResult {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  final String? accountId;
  /// When set to true, users can authenticate via WARP for any application in your organization. Application settings will take precedence over this value.
  final bool? allowAuthenticateViaWarp;
  /// The unique subdomain assigned to your Zero Trust organization.
  final String? authDomain;
  /// When set to `true`, users skip the identity provider selection step during login.
  final bool? autoRedirectToIdentity;
  final GetZeroTrustOrganizationCustomPages? customPages;
  /// Determines whether to deny all requests to Cloudflare-protected resources that lack an associated Access application. If enabled, you must explicitly configure an Access application and policy to allow traffic to your Cloudflare-protected resources. For domains you want to be public across all subdomains, add the domain to the `denyUnmatchedRequestsExemptedZoneNames` array.
  final bool? denyUnmatchedRequests;
  /// Contains zone names to exempt from the `denyUnmatchedRequests` feature. Requests to a subdomain in an exempted zone will block unauthenticated traffic by default if there is a configured Access application and policy that matches the request.
  final List<String>? denyUnmatchedRequestsExemptedZoneNames;
  /// Lock all settings as Read-Only in the Dashboard, regardless of user permission. Updates may only be made via the API or Terraform for this account when enabled.
  final bool? isUiReadOnly;
  final GetZeroTrustOrganizationLoginDesign? loginDesign;
  /// Configures multi-factor authentication (MFA) settings for an organization.
  final GetZeroTrustOrganizationMfaConfig? mfaConfig;
  /// Determines whether global MFA settings apply to applications by default. The organization must have MFA enabled with at least one authentication method and a session duration configured. Note: 'allowed*authenticators' cannot only contain 'ssh*piv_key' if the organization has any non-infrastructure applications because PIV keys are only compatible with infrastructure apps.
  final bool? mfaRequiredForAllApps;
  /// Configures SSH PIV key requirements for MFA using hardware security keys.
  final GetZeroTrustOrganizationMfaSshPivKeyRequirements? mfaSshPivKeyRequirements;
  /// The name of your Zero Trust organization.
  final String? name;
  /// The amount of time that tokens issued for applications will be valid. Must be in the format `300ms` or `2h45m`. Valid time units are: ns, us (or µs), ms, s, m, h.
  final String? sessionDuration;
  /// A description of the reason why the UI read only field is being toggled.
  final String? uiReadOnlyToggleReason;
  /// The amount of time a user seat is inactive before it expires. When the user seat exceeds the set time of inactivity, the user is removed as an active seat and no longer counts against your Teams seat count.  Minimum value for this setting is 1 month (730h). Must be in the format `300ms` or `2h45m`. Valid time units are: `ns`, `us` (or `µs`), `ms`, `s`, `m`, `h`.
  final String? userSeatExpirationInactiveTime;
  /// The amount of time that tokens issued for applications will be valid. Must be in the format `30m` or `2h45m`. Valid time units are: m, h.
  final String? warpAuthSessionDuration;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  final String? zoneId;

  /// Creates a new [GetZeroTrustOrganizationResult].
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
  /// [mfaRequiredForAllApps] Determines whether global MFA settings apply to applications by default. The organization must have MFA enabled with at least one authentication method and a session duration configured. Note: 'allowed*authenticators' cannot only contain 'ssh*piv_key' if the organization has any non-infrastructure applications because PIV keys are only compatible with infrastructure apps.
  /// [mfaSshPivKeyRequirements] Configures SSH PIV key requirements for MFA using hardware security keys.
  /// [name] The name of your Zero Trust organization.
  /// [sessionDuration] The amount of time that tokens issued for applications will be valid. Must be in the format `300ms` or `2h45m`. Valid time units are: ns, us (or µs), ms, s, m, h.
  /// [uiReadOnlyToggleReason] A description of the reason why the UI read only field is being toggled.
  /// [userSeatExpirationInactiveTime] The amount of time a user seat is inactive before it expires. When the user seat exceeds the set time of inactivity, the user is removed as an active seat and no longer counts against your Teams seat count.  Minimum value for this setting is 1 month (730h). Must be in the format `300ms` or `2h45m`. Valid time units are: `ns`, `us` (or `µs`), `ms`, `s`, `m`, `h`.
  /// [warpAuthSessionDuration] The amount of time that tokens issued for applications will be valid. Must be in the format `30m` or `2h45m`. Valid time units are: m, h.
  /// [zoneId] The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  const GetZeroTrustOrganizationResult({
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
    this.mfaRequiredForAllApps,
    this.mfaSshPivKeyRequirements,
    this.name,
    this.sessionDuration,
    this.uiReadOnlyToggleReason,
    this.userSeatExpirationInactiveTime,
    this.warpAuthSessionDuration,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'allowAuthenticateViaWarp': ?allowAuthenticateViaWarp,
      'authDomain': ?authDomain,
      'autoRedirectToIdentity': ?autoRedirectToIdentity,
      'customPages': ?customPages?.toMap(),
      'denyUnmatchedRequests': ?denyUnmatchedRequests,
      'denyUnmatchedRequestsExemptedZoneNames': ?denyUnmatchedRequestsExemptedZoneNames,
      'isUiReadOnly': ?isUiReadOnly,
      'loginDesign': ?loginDesign?.toMap(),
      'mfaConfig': ?mfaConfig?.toMap(),
      'mfaRequiredForAllApps': ?mfaRequiredForAllApps,
      'mfaSshPivKeyRequirements': ?mfaSshPivKeyRequirements?.toMap(),
      'name': ?name,
      'sessionDuration': ?sessionDuration,
      'uiReadOnlyToggleReason': ?uiReadOnlyToggleReason,
      'userSeatExpirationInactiveTime': ?userSeatExpirationInactiveTime,
      'warpAuthSessionDuration': ?warpAuthSessionDuration,
      'zoneId': ?zoneId,
    };
  }

  factory GetZeroTrustOrganizationResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustOrganizationResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      allowAuthenticateViaWarp: (() { final guardedValue = map['allowAuthenticateViaWarp']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      authDomain: (() { final guardedValue = map['authDomain']; if (guardedValue == null) return null; return guardedValue as String; })(),
      autoRedirectToIdentity: (() { final guardedValue = map['autoRedirectToIdentity']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      customPages: (() { final guardedValue = map['customPages']; if (guardedValue == null) return null; return GetZeroTrustOrganizationCustomPages.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      denyUnmatchedRequests: (() { final guardedValue = map['denyUnmatchedRequests']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      denyUnmatchedRequestsExemptedZoneNames: (() { final guardedValue = map['denyUnmatchedRequestsExemptedZoneNames']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      isUiReadOnly: (() { final guardedValue = map['isUiReadOnly']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      loginDesign: (() { final guardedValue = map['loginDesign']; if (guardedValue == null) return null; return GetZeroTrustOrganizationLoginDesign.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      mfaConfig: (() { final guardedValue = map['mfaConfig']; if (guardedValue == null) return null; return GetZeroTrustOrganizationMfaConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      mfaRequiredForAllApps: (() { final guardedValue = map['mfaRequiredForAllApps']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      mfaSshPivKeyRequirements: (() { final guardedValue = map['mfaSshPivKeyRequirements']; if (guardedValue == null) return null; return GetZeroTrustOrganizationMfaSshPivKeyRequirements.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sessionDuration: (() { final guardedValue = map['sessionDuration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uiReadOnlyToggleReason: (() { final guardedValue = map['uiReadOnlyToggleReason']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userSeatExpirationInactiveTime: (() { final guardedValue = map['userSeatExpirationInactiveTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      warpAuthSessionDuration: (() { final guardedValue = map['warpAuthSessionDuration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
