// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_access_applications_result_cors_headers.dart';
import 'get_zero_trust_access_applications_result_destination.dart';
import 'get_zero_trust_access_applications_result_footer_link.dart';
import 'get_zero_trust_access_applications_result_landing_page_design.dart';
import 'get_zero_trust_access_applications_result_mfa_config.dart';
import 'get_zero_trust_access_applications_result_policy.dart';
import 'get_zero_trust_access_applications_result_saas_app.dart';
import 'get_zero_trust_access_applications_result_scim_config.dart';
import 'get_zero_trust_access_applications_result_target_criteria.dart';

class GetZeroTrustAccessApplicationsResult {
  /// When set to true, users can authenticate to this application using their WARP session.  When set to false this application will always require direct IdP authentication. This setting always overrides the organization setting for WARP authentication.
  final pulumi.Input<bool> allowAuthenticateViaWarp;
  /// Enables loading application content in an iFrame.
  final pulumi.Input<bool> allowIframe;
  /// The identity providers your users can select when connecting to this application. Defaults to all IdPs configured in your account.
  final pulumi.Input<List<String>> allowedIdps;
  /// The image URL of the logo shown in the App Launcher header.
  final pulumi.Input<String> appLauncherLogoUrl;
  /// Displays the application in the App Launcher.
  final pulumi.Input<bool> appLauncherVisible;
  /// Audience tag.
  final pulumi.Input<String> aud;
  /// When set to `true`, users skip the identity provider selection step during login. You must specify only one identity provider in allowed_idps.
  final pulumi.Input<bool> autoRedirectToIdentity;
  /// The background color of the App Launcher page.
  final pulumi.Input<String> bgColor;
  final pulumi.Input<GetZeroTrustAccessApplicationsResultCorsHeaders> corsHeaders;
  /// The custom error message shown to a user when they are denied access to the application.
  final pulumi.Input<String> customDenyMessage;
  /// The custom URL a user is redirected to when they are denied access to the application when failing identity-based rules.
  final pulumi.Input<String> customDenyUrl;
  /// The custom URL a user is redirected to when they are denied access to the application when failing non-identity rules.
  final pulumi.Input<String> customNonIdentityDenyUrl;
  /// The custom pages that will be displayed when applicable for this application
  final pulumi.Input<List<String>> customPages;
  /// List of destinations secured by Access. This supersedes `selfHostedDomains` to allow for more flexibility in defining different types of domains. If `destinations` are provided, then `selfHostedDomains` will be ignored.
  final pulumi.Input<List<GetZeroTrustAccessApplicationsResultDestination>> destinations;
  /// The primary hostname and path secured by Access. This domain will be displayed if the app is visible in the App Launcher.
  final pulumi.Input<String> domain;
  /// Enables the binding cookie, which increases security against compromised authorization tokens and CSRF attacks.
  final pulumi.Input<bool> enableBindingCookie;
  /// The links in the App Launcher footer.
  final pulumi.Input<List<GetZeroTrustAccessApplicationsResultFooterLink>> footerLinks;
  /// The background color of the App Launcher header.
  final pulumi.Input<String> headerBgColor;
  /// Enables the HttpOnly cookie attribute, which increases security against XSS attacks.
  final pulumi.Input<bool> httpOnlyCookieAttribute;
  /// UUID.
  final pulumi.Input<String> id;
  /// The design of the App Launcher landing page shown to users when they log in.
  final pulumi.Input<GetZeroTrustAccessApplicationsResultLandingPageDesign> landingPageDesign;
  /// The image URL for the logo shown in the App Launcher dashboard.
  final pulumi.Input<String> logoUrl;
  /// Configures multi-factor authentication (MFA) settings for the application. Only valid for self*hosted, ssh, vnc, and rdp application types.
  final pulumi.Input<GetZeroTrustAccessApplicationsResultMfaConfig> mfaConfig;
  /// The name of the application.
  final pulumi.Input<String> name;
  /// Allows options preflight requests to bypass Access authentication and go directly to the origin. Cannot turn on if corsHeaders is set.
  final pulumi.Input<bool> optionsPreflightBypass;
  /// Enables cookie paths to scope an application's JWT to the application path. If disabled, the JWT will scope to the hostname by default
  final pulumi.Input<bool> pathCookieAttribute;
  final pulumi.Input<List<GetZeroTrustAccessApplicationsResultPolicy>> policies;
  /// Allows matching Access Service Tokens passed HTTP in a single header with this name.
  /// This works as an alternative to the (CF-Access-Client-Id, CF-Access-Client-Secret) pair of headers.
  /// The header value will be interpreted as a json object similar to:
  /// {
  /// "cf-access-client-id": "88bf3b6d86161464f6509f7219099e57.access.example.com",
  /// "cf-access-client-secret": "bdd31cbc4dec990953e39163fbbb194c93313ca9f0a6e420346af9d326b1d2a5"
  /// }
  final pulumi.Input<String> readServiceTokensFromHeader;
  final pulumi.Input<GetZeroTrustAccessApplicationsResultSaasApp> saasApp;
  /// Sets the SameSite cookie setting, which provides increased security against CSRF attacks.
  final pulumi.Input<String> sameSiteCookieAttribute;
  /// Configuration for provisioning to this application via SCIM. This is currently in closed beta.
  final pulumi.Input<GetZeroTrustAccessApplicationsResultScimConfig> scimConfig;
  /// List of public domains that Access will secure. This field is deprecated in favor of `destinations` and will be supported until **November 21, 2025.** If `destinations` are provided, then `selfHostedDomains` will be ignored.
  final pulumi.Input<List<String>> selfHostedDomains;
  /// Returns a 401 status code when the request is blocked by a Service Auth policy.
  final pulumi.Input<bool> serviceAuth401Redirect;
  /// The amount of time that tokens issued for this application will be valid. Must be in the format `300ms` or `2h45m`. Valid time units are: ns, us (or µs), ms, s, m, h. Note: unsupported for infrastructure type applications.
  final pulumi.Input<String> sessionDuration;
  /// Determines when to skip the App Launcher landing page.
  final pulumi.Input<bool> skipAppLauncherLoginPage;
  /// Enables automatic authentication through cloudflared.
  final pulumi.Input<bool> skipInterstitial;
  /// The tags you want assigned to an application. Tags are used to filter applications in the App Launcher dashboard.
  final pulumi.Input<List<String>> tags;
  final pulumi.Input<List<GetZeroTrustAccessApplicationsResultTargetCriteria>> targetCriterias;
  /// The application type.
  /// Available values: "self*hosted", "saas", "ssh", "vnc", "app*launcher", "warp", "biso", "bookmark", "dash*sso", "infrastructure", "rdp", "mcp", "mcp*portal".
  final pulumi.Input<String> type;

  /// Creates a new [GetZeroTrustAccessApplicationsResult].
  /// [allowAuthenticateViaWarp] When set to true, users can authenticate to this application using their WARP session.  When set to false this application will always require direct IdP authentication. This setting always overrides the organization setting for WARP authentication.
  /// [allowIframe] Enables loading application content in an iFrame.
  /// [allowedIdps] The identity providers your users can select when connecting to this application. Defaults to all IdPs configured in your account.
  /// [appLauncherLogoUrl] The image URL of the logo shown in the App Launcher header.
  /// [appLauncherVisible] Displays the application in the App Launcher.
  /// [aud] Audience tag.
  /// [autoRedirectToIdentity] When set to `true`, users skip the identity provider selection step during login. You must specify only one identity provider in allowed_idps.
  /// [bgColor] The background color of the App Launcher page.
  /// [corsHeaders] Required.
  /// [customDenyMessage] The custom error message shown to a user when they are denied access to the application.
  /// [customDenyUrl] The custom URL a user is redirected to when they are denied access to the application when failing identity-based rules.
  /// [customNonIdentityDenyUrl] The custom URL a user is redirected to when they are denied access to the application when failing non-identity rules.
  /// [customPages] The custom pages that will be displayed when applicable for this application
  /// [destinations] List of destinations secured by Access. This supersedes `selfHostedDomains` to allow for more flexibility in defining different types of domains. If `destinations` are provided, then `selfHostedDomains` will be ignored.
  /// [domain] The primary hostname and path secured by Access. This domain will be displayed if the app is visible in the App Launcher.
  /// [enableBindingCookie] Enables the binding cookie, which increases security against compromised authorization tokens and CSRF attacks.
  /// [footerLinks] The links in the App Launcher footer.
  /// [headerBgColor] The background color of the App Launcher header.
  /// [httpOnlyCookieAttribute] Enables the HttpOnly cookie attribute, which increases security against XSS attacks.
  /// [id] UUID.
  /// [landingPageDesign] The design of the App Launcher landing page shown to users when they log in.
  /// [logoUrl] The image URL for the logo shown in the App Launcher dashboard.
  /// [mfaConfig] Configures multi-factor authentication (MFA) settings for the application. Only valid for self*hosted, ssh, vnc, and rdp application types.
  /// [name] The name of the application.
  /// [optionsPreflightBypass] Allows options preflight requests to bypass Access authentication and go directly to the origin. Cannot turn on if corsHeaders is set.
  /// [pathCookieAttribute] Enables cookie paths to scope an application's JWT to the application path. If disabled, the JWT will scope to the hostname by default
  /// [policies] Required.
  /// [readServiceTokensFromHeader] Allows matching Access Service Tokens passed HTTP in a single header with this name.
  /// [saasApp] Required.
  /// [sameSiteCookieAttribute] Sets the SameSite cookie setting, which provides increased security against CSRF attacks.
  /// [scimConfig] Configuration for provisioning to this application via SCIM. This is currently in closed beta.
  /// [selfHostedDomains] List of public domains that Access will secure. This field is deprecated in favor of `destinations` and will be supported until **November 21, 2025.** If `destinations` are provided, then `selfHostedDomains` will be ignored.
  /// [serviceAuth401Redirect] Returns a 401 status code when the request is blocked by a Service Auth policy.
  /// [sessionDuration] The amount of time that tokens issued for this application will be valid. Must be in the format `300ms` or `2h45m`. Valid time units are: ns, us (or µs), ms, s, m, h. Note: unsupported for infrastructure type applications.
  /// [skipAppLauncherLoginPage] Determines when to skip the App Launcher landing page.
  /// [skipInterstitial] Enables automatic authentication through cloudflared.
  /// [tags] The tags you want assigned to an application. Tags are used to filter applications in the App Launcher dashboard.
  /// [targetCriterias] Required.
  /// [type] The application type.
  const GetZeroTrustAccessApplicationsResult({
    required this.allowAuthenticateViaWarp,
    required this.allowIframe,
    required this.allowedIdps,
    required this.appLauncherLogoUrl,
    required this.appLauncherVisible,
    required this.aud,
    required this.autoRedirectToIdentity,
    required this.bgColor,
    required this.corsHeaders,
    required this.customDenyMessage,
    required this.customDenyUrl,
    required this.customNonIdentityDenyUrl,
    required this.customPages,
    required this.destinations,
    required this.domain,
    required this.enableBindingCookie,
    required this.footerLinks,
    required this.headerBgColor,
    required this.httpOnlyCookieAttribute,
    required this.id,
    required this.landingPageDesign,
    required this.logoUrl,
    required this.mfaConfig,
    required this.name,
    required this.optionsPreflightBypass,
    required this.pathCookieAttribute,
    required this.policies,
    required this.readServiceTokensFromHeader,
    required this.saasApp,
    required this.sameSiteCookieAttribute,
    required this.scimConfig,
    required this.selfHostedDomains,
    required this.serviceAuth401Redirect,
    required this.sessionDuration,
    required this.skipAppLauncherLoginPage,
    required this.skipInterstitial,
    required this.tags,
    required this.targetCriterias,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowAuthenticateViaWarp': allowAuthenticateViaWarp,
      'allowIframe': allowIframe,
      'allowedIdps': allowedIdps,
      'appLauncherLogoUrl': appLauncherLogoUrl,
      'appLauncherVisible': appLauncherVisible,
      'aud': aud,
      'autoRedirectToIdentity': autoRedirectToIdentity,
      'bgColor': bgColor,
      'corsHeaders': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationsResultCorsHeaders, Map<String, dynamic>>(corsHeaders, (value) => value.toMap()),
      'customDenyMessage': customDenyMessage,
      'customDenyUrl': customDenyUrl,
      'customNonIdentityDenyUrl': customNonIdentityDenyUrl,
      'customPages': customPages,
      'destinations': pulumi.Input.mapInputValue<List<GetZeroTrustAccessApplicationsResultDestination>, List<Map<String, dynamic>>>(destinations, (value) => pulumi.Input.encodeList<GetZeroTrustAccessApplicationsResultDestination, Map<String, dynamic>>(value, (value) => value.toMap())),
      'domain': domain,
      'enableBindingCookie': enableBindingCookie,
      'footerLinks': pulumi.Input.mapInputValue<List<GetZeroTrustAccessApplicationsResultFooterLink>, List<Map<String, dynamic>>>(footerLinks, (value) => pulumi.Input.encodeList<GetZeroTrustAccessApplicationsResultFooterLink, Map<String, dynamic>>(value, (value) => value.toMap())),
      'headerBgColor': headerBgColor,
      'httpOnlyCookieAttribute': httpOnlyCookieAttribute,
      'id': id,
      'landingPageDesign': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationsResultLandingPageDesign, Map<String, dynamic>>(landingPageDesign, (value) => value.toMap()),
      'logoUrl': logoUrl,
      'mfaConfig': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationsResultMfaConfig, Map<String, dynamic>>(mfaConfig, (value) => value.toMap()),
      'name': name,
      'optionsPreflightBypass': optionsPreflightBypass,
      'pathCookieAttribute': pathCookieAttribute,
      'policies': pulumi.Input.mapInputValue<List<GetZeroTrustAccessApplicationsResultPolicy>, List<Map<String, dynamic>>>(policies, (value) => pulumi.Input.encodeList<GetZeroTrustAccessApplicationsResultPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'readServiceTokensFromHeader': readServiceTokensFromHeader,
      'saasApp': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationsResultSaasApp, Map<String, dynamic>>(saasApp, (value) => value.toMap()),
      'sameSiteCookieAttribute': sameSiteCookieAttribute,
      'scimConfig': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationsResultScimConfig, Map<String, dynamic>>(scimConfig, (value) => value.toMap()),
      'selfHostedDomains': selfHostedDomains,
      'serviceAuth401Redirect': serviceAuth401Redirect,
      'sessionDuration': sessionDuration,
      'skipAppLauncherLoginPage': skipAppLauncherLoginPage,
      'skipInterstitial': skipInterstitial,
      'tags': tags,
      'targetCriterias': pulumi.Input.mapInputValue<List<GetZeroTrustAccessApplicationsResultTargetCriteria>, List<Map<String, dynamic>>>(targetCriterias, (value) => pulumi.Input.encodeList<GetZeroTrustAccessApplicationsResultTargetCriteria, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
    };
  }

  factory GetZeroTrustAccessApplicationsResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationsResult(
      allowAuthenticateViaWarp: pulumi.Input.fromValue(map['allowAuthenticateViaWarp'] as bool),
      allowIframe: pulumi.Input.fromValue(map['allowIframe'] as bool),
      allowedIdps: pulumi.Input.fromValue((map['allowedIdps'] as List).cast<String>()),
      appLauncherLogoUrl: pulumi.Input.fromValue(map['appLauncherLogoUrl'] as String),
      appLauncherVisible: pulumi.Input.fromValue(map['appLauncherVisible'] as bool),
      aud: pulumi.Input.fromValue(map['aud'] as String),
      autoRedirectToIdentity: pulumi.Input.fromValue(map['autoRedirectToIdentity'] as bool),
      bgColor: pulumi.Input.fromValue(map['bgColor'] as String),
      corsHeaders: pulumi.Input.fromValue(GetZeroTrustAccessApplicationsResultCorsHeaders.fromMap((map['corsHeaders']! as Map).cast<String, dynamic>())),
      customDenyMessage: pulumi.Input.fromValue(map['customDenyMessage'] as String),
      customDenyUrl: pulumi.Input.fromValue(map['customDenyUrl'] as String),
      customNonIdentityDenyUrl: pulumi.Input.fromValue(map['customNonIdentityDenyUrl'] as String),
      customPages: pulumi.Input.fromValue((map['customPages'] as List).cast<String>()),
      destinations: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustAccessApplicationsResultDestination>(map['destinations']!, (value) => GetZeroTrustAccessApplicationsResultDestination.fromMap((value as Map).cast<String, dynamic>()))),
      domain: pulumi.Input.fromValue(map['domain'] as String),
      enableBindingCookie: pulumi.Input.fromValue(map['enableBindingCookie'] as bool),
      footerLinks: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustAccessApplicationsResultFooterLink>(map['footerLinks']!, (value) => GetZeroTrustAccessApplicationsResultFooterLink.fromMap((value as Map).cast<String, dynamic>()))),
      headerBgColor: pulumi.Input.fromValue(map['headerBgColor'] as String),
      httpOnlyCookieAttribute: pulumi.Input.fromValue(map['httpOnlyCookieAttribute'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      landingPageDesign: pulumi.Input.fromValue(GetZeroTrustAccessApplicationsResultLandingPageDesign.fromMap((map['landingPageDesign']! as Map).cast<String, dynamic>())),
      logoUrl: pulumi.Input.fromValue(map['logoUrl'] as String),
      mfaConfig: pulumi.Input.fromValue(GetZeroTrustAccessApplicationsResultMfaConfig.fromMap((map['mfaConfig']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
      optionsPreflightBypass: pulumi.Input.fromValue(map['optionsPreflightBypass'] as bool),
      pathCookieAttribute: pulumi.Input.fromValue(map['pathCookieAttribute'] as bool),
      policies: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustAccessApplicationsResultPolicy>(map['policies']!, (value) => GetZeroTrustAccessApplicationsResultPolicy.fromMap((value as Map).cast<String, dynamic>()))),
      readServiceTokensFromHeader: pulumi.Input.fromValue(map['readServiceTokensFromHeader'] as String),
      saasApp: pulumi.Input.fromValue(GetZeroTrustAccessApplicationsResultSaasApp.fromMap((map['saasApp']! as Map).cast<String, dynamic>())),
      sameSiteCookieAttribute: pulumi.Input.fromValue(map['sameSiteCookieAttribute'] as String),
      scimConfig: pulumi.Input.fromValue(GetZeroTrustAccessApplicationsResultScimConfig.fromMap((map['scimConfig']! as Map).cast<String, dynamic>())),
      selfHostedDomains: pulumi.Input.fromValue((map['selfHostedDomains'] as List).cast<String>()),
      serviceAuth401Redirect: pulumi.Input.fromValue(map['serviceAuth401Redirect'] as bool),
      sessionDuration: pulumi.Input.fromValue(map['sessionDuration'] as String),
      skipAppLauncherLoginPage: pulumi.Input.fromValue(map['skipAppLauncherLoginPage'] as bool),
      skipInterstitial: pulumi.Input.fromValue(map['skipInterstitial'] as bool),
      tags: pulumi.Input.fromValue((map['tags'] as List).cast<String>()),
      targetCriterias: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustAccessApplicationsResultTargetCriteria>(map['targetCriterias']!, (value) => GetZeroTrustAccessApplicationsResultTargetCriteria.fromMap((value as Map).cast<String, dynamic>()))),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
