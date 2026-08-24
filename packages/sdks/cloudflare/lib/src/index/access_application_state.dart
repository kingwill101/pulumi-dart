// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_application_cors_headers.dart';
import 'access_application_destination.dart';
import 'access_application_footer_link.dart';
import 'access_application_landing_page_design.dart';
import 'access_application_mfa_config.dart';
import 'access_application_oauth_configuration.dart';
import 'access_application_policy.dart';
import 'access_application_saas_app.dart';
import 'access_application_scim_config.dart';
import 'access_application_target_criteria.dart';

/// Input properties used for looking up and filtering AccessApplication resources.
class AccessApplicationState {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  final pulumi.Input<String?>? accountId;
  /// When set to true, users can authenticate to this application using their WARP session.  When set to false this application will always require direct IdP authentication. This setting always overrides the organization setting for WARP authentication.
  final pulumi.Input<bool?>? allowAuthenticateViaWarp;
  /// Enables loading application content in an iFrame.
  final pulumi.Input<bool?>? allowIframe;
  /// The identity providers your users can select when connecting to this application. Defaults to all IdPs configured in your account.
  final pulumi.Input<List<String>?>? allowedIdps;
  /// The image URL of the logo shown in the App Launcher header.
  final pulumi.Input<String?>? appLauncherLogoUrl;
  /// Displays the application in the App Launcher.
  final pulumi.Input<bool?>? appLauncherVisible;
  /// Audience tag.
  final pulumi.Input<String?>? aud;
  /// When set to `true`, users skip the identity provider selection step during login. You must specify only one identity provider in allowed_idps.
  final pulumi.Input<bool?>? autoRedirectToIdentity;
  /// The background color of the App Launcher page.
  final pulumi.Input<String?>? bgColor;
  final pulumi.Input<AccessApplicationCorsHeaders?>? corsHeaders;
  /// The custom error message shown to a user when they are denied access to the application.
  final pulumi.Input<String?>? customDenyMessage;
  /// The custom URL a user is redirected to when they are denied access to the application when failing identity-based rules.
  final pulumi.Input<String?>? customDenyUrl;
  /// The custom URL a user is redirected to when they are denied access to the application when failing non-identity rules.
  final pulumi.Input<String?>? customNonIdentityDenyUrl;
  /// The custom pages that will be displayed when applicable for this application
  final pulumi.Input<List<String>?>? customPages;
  /// List of destinations secured by Access. This supersedes `selfHostedDomains` to allow for more flexibility in defining different types of domains. If `destinations` are provided, then `selfHostedDomains` will be ignored.
  final pulumi.Input<List<AccessApplicationDestination>?>? destinations;
  /// The primary hostname and path secured by Access. This domain will be displayed if the app is visible in the App Launcher.
  final pulumi.Input<String?>? domain;
  /// Enables the binding cookie, which increases security against compromised authorization tokens and CSRF attacks.
  final pulumi.Input<bool?>? enableBindingCookie;
  /// The links in the App Launcher footer.
  final pulumi.Input<List<AccessApplicationFooterLink>?>? footerLinks;
  /// The background color of the App Launcher header.
  final pulumi.Input<String?>? headerBgColor;
  /// Enables the HttpOnly cookie attribute, which increases security against XSS attacks.
  final pulumi.Input<bool?>? httpOnlyCookieAttribute;
  /// The design of the App Launcher landing page shown to users when they log in.
  final pulumi.Input<AccessApplicationLandingPageDesign?>? landingPageDesign;
  /// The image URL for the logo shown in the App Launcher dashboard.
  final pulumi.Input<String?>? logoUrl;
  /// Configures multi-factor authentication (MFA) settings for the application. Only valid for self*hosted, ssh, vnc, and rdp application types.
  final pulumi.Input<AccessApplicationMfaConfig?>? mfaConfig;
  /// The name of the application.
  final pulumi.Input<String?>? name;
  /// Optional configuration for managing an OAuth authorization flow controlled by Access. When set, Access will act as the OAuth authorization server for this application. This feature is currently in beta.
  final pulumi.Input<AccessApplicationOauthConfiguration?>? oauthConfiguration;
  /// Allows options preflight requests to bypass Access authentication and go directly to the origin. Cannot turn on if corsHeaders is set.
  final pulumi.Input<bool?>? optionsPreflightBypass;
  /// Enables cookie paths to scope an application's JWT to the application path. If disabled, the JWT will scope to the hostname by default
  final pulumi.Input<bool?>? pathCookieAttribute;
  /// The policies that Access applies to the application, in ascending order of precedence. Items can reference existing policies or create new policies exclusive to the application.
  final pulumi.Input<List<AccessApplicationPolicy>?>? policies;
  /// Allows matching Access Service Tokens passed HTTP in a single header with this name.
  /// This works as an alternative to the (CF-Access-Client-Id, CF-Access-Client-Secret) pair of headers.
  /// The header value will be interpreted as a json object similar to:
  /// {
  /// "cf-access-client-id": "88bf3b6d86161464f6509f7219099e57.access.example.com",
  /// "cf-access-client-secret": "bdd31cbc4dec990953e39163fbbb194c93313ca9f0a6e420346af9d326b1d2a5"
  /// }
  final pulumi.Input<String?>? readServiceTokensFromHeader;
  final pulumi.Input<AccessApplicationSaasApp?>? saasApp;
  /// Sets the SameSite cookie setting, which provides increased security against CSRF attacks.
  final pulumi.Input<String?>? sameSiteCookieAttribute;
  /// Configuration for provisioning to this application via SCIM. This is currently in closed beta.
  final pulumi.Input<AccessApplicationScimConfig?>? scimConfig;
  /// List of public domains that Access will secure. This field is deprecated in favor of `destinations` and will be supported until **November 21, 2025.** If `destinations` are provided, then `selfHostedDomains` will be ignored.
  final pulumi.Input<List<String>?>? selfHostedDomains;
  /// Returns a 401 status code when the request is blocked by a Service Auth policy.
  final pulumi.Input<bool?>? serviceAuth401Redirect;
  /// The amount of time that tokens issued for this application will be valid. Must be in the format `300ms` or `2h45m`. Valid time units are: ns, us (or µs), ms, s, m, h. Note: unsupported for infrastructure type applications.
  final pulumi.Input<String?>? sessionDuration;
  /// Determines when to skip the App Launcher landing page.
  final pulumi.Input<bool?>? skipAppLauncherLoginPage;
  /// Enables automatic authentication through cloudflared.
  final pulumi.Input<bool?>? skipInterstitial;
  /// The tags you want assigned to an application. Tags are used to filter applications in the App Launcher dashboard.
  final pulumi.Input<List<String>?>? tags;
  final pulumi.Input<List<AccessApplicationTargetCriteria>?>? targetCriterias;
  /// The application type.
  /// Available values: "self*hosted", "saas", "ssh", "vnc", "app*launcher", "warp", "biso", "bookmark", "dash*sso", "infrastructure", "rdp", "mcp", "mcp*portal", "proxyEndpoint".
  final pulumi.Input<String?>? type;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [AccessApplicationState].
  /// [accountId] The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  /// [allowAuthenticateViaWarp] When set to true, users can authenticate to this application using their WARP session.  When set to false this application will always require direct IdP authentication. This setting always overrides the organization setting for WARP authentication.
  /// [allowIframe] Enables loading application content in an iFrame.
  /// [allowedIdps] The identity providers your users can select when connecting to this application. Defaults to all IdPs configured in your account.
  /// [appLauncherLogoUrl] The image URL of the logo shown in the App Launcher header.
  /// [appLauncherVisible] Displays the application in the App Launcher.
  /// [aud] Audience tag.
  /// [autoRedirectToIdentity] When set to `true`, users skip the identity provider selection step during login. You must specify only one identity provider in allowed_idps.
  /// [bgColor] The background color of the App Launcher page.
  /// [corsHeaders] Optional.
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
  /// [landingPageDesign] The design of the App Launcher landing page shown to users when they log in.
  /// [logoUrl] The image URL for the logo shown in the App Launcher dashboard.
  /// [mfaConfig] Configures multi-factor authentication (MFA) settings for the application. Only valid for self*hosted, ssh, vnc, and rdp application types.
  /// [name] The name of the application.
  /// [oauthConfiguration] Optional configuration for managing an OAuth authorization flow controlled by Access. When set, Access will act as the OAuth authorization server for this application. This feature is currently in beta.
  /// [optionsPreflightBypass] Allows options preflight requests to bypass Access authentication and go directly to the origin. Cannot turn on if corsHeaders is set.
  /// [pathCookieAttribute] Enables cookie paths to scope an application's JWT to the application path. If disabled, the JWT will scope to the hostname by default
  /// [policies] The policies that Access applies to the application, in ascending order of precedence. Items can reference existing policies or create new policies exclusive to the application.
  /// [readServiceTokensFromHeader] Allows matching Access Service Tokens passed HTTP in a single header with this name.
  /// [saasApp] Optional.
  /// [sameSiteCookieAttribute] Sets the SameSite cookie setting, which provides increased security against CSRF attacks.
  /// [scimConfig] Configuration for provisioning to this application via SCIM. This is currently in closed beta.
  /// [selfHostedDomains] List of public domains that Access will secure. This field is deprecated in favor of `destinations` and will be supported until **November 21, 2025.** If `destinations` are provided, then `selfHostedDomains` will be ignored.
  /// [serviceAuth401Redirect] Returns a 401 status code when the request is blocked by a Service Auth policy.
  /// [sessionDuration] The amount of time that tokens issued for this application will be valid. Must be in the format `300ms` or `2h45m`. Valid time units are: ns, us (or µs), ms, s, m, h. Note: unsupported for infrastructure type applications.
  /// [skipAppLauncherLoginPage] Determines when to skip the App Launcher landing page.
  /// [skipInterstitial] Enables automatic authentication through cloudflared.
  /// [tags] The tags you want assigned to an application. Tags are used to filter applications in the App Launcher dashboard.
  /// [targetCriterias] Optional.
  /// [type] The application type.
  /// [zoneId] The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  const AccessApplicationState({
    this.accountId,
    this.allowAuthenticateViaWarp,
    this.allowIframe,
    this.allowedIdps,
    this.appLauncherLogoUrl,
    this.appLauncherVisible,
    this.aud,
    this.autoRedirectToIdentity,
    this.bgColor,
    this.corsHeaders,
    this.customDenyMessage,
    this.customDenyUrl,
    this.customNonIdentityDenyUrl,
    this.customPages,
    this.destinations,
    this.domain,
    this.enableBindingCookie,
    this.footerLinks,
    this.headerBgColor,
    this.httpOnlyCookieAttribute,
    this.landingPageDesign,
    this.logoUrl,
    this.mfaConfig,
    this.name,
    this.oauthConfiguration,
    this.optionsPreflightBypass,
    this.pathCookieAttribute,
    this.policies,
    this.readServiceTokensFromHeader,
    this.saasApp,
    this.sameSiteCookieAttribute,
    this.scimConfig,
    this.selfHostedDomains,
    this.serviceAuth401Redirect,
    this.sessionDuration,
    this.skipAppLauncherLoginPage,
    this.skipInterstitial,
    this.tags,
    this.targetCriterias,
    this.type,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'allowAuthenticateViaWarp': ?allowAuthenticateViaWarp,
      'allowIframe': ?allowIframe,
      'allowedIdps': ?allowedIdps,
      'appLauncherLogoUrl': ?appLauncherLogoUrl,
      'appLauncherVisible': ?appLauncherVisible,
      'aud': ?aud,
      'autoRedirectToIdentity': ?autoRedirectToIdentity,
      'bgColor': ?bgColor,
      'corsHeaders': ?pulumi.Input.mapOptionalInputValue<AccessApplicationCorsHeaders, Map<String, dynamic>>(corsHeaders, (value) => value.toMap()),
      'customDenyMessage': ?customDenyMessage,
      'customDenyUrl': ?customDenyUrl,
      'customNonIdentityDenyUrl': ?customNonIdentityDenyUrl,
      'customPages': ?customPages,
      'destinations': ?pulumi.Input.mapOptionalInputValue<List<AccessApplicationDestination>, List<Map<String, dynamic>>>(destinations, (value) => pulumi.Input.encodeList<AccessApplicationDestination, Map<String, dynamic>>(value, (value) => value.toMap())),
      'domain': ?domain,
      'enableBindingCookie': ?enableBindingCookie,
      'footerLinks': ?pulumi.Input.mapOptionalInputValue<List<AccessApplicationFooterLink>, List<Map<String, dynamic>>>(footerLinks, (value) => pulumi.Input.encodeList<AccessApplicationFooterLink, Map<String, dynamic>>(value, (value) => value.toMap())),
      'headerBgColor': ?headerBgColor,
      'httpOnlyCookieAttribute': ?httpOnlyCookieAttribute,
      'landingPageDesign': ?pulumi.Input.mapOptionalInputValue<AccessApplicationLandingPageDesign, Map<String, dynamic>>(landingPageDesign, (value) => value.toMap()),
      'logoUrl': ?logoUrl,
      'mfaConfig': ?pulumi.Input.mapOptionalInputValue<AccessApplicationMfaConfig, Map<String, dynamic>>(mfaConfig, (value) => value.toMap()),
      'name': ?name,
      'oauthConfiguration': ?pulumi.Input.mapOptionalInputValue<AccessApplicationOauthConfiguration, Map<String, dynamic>>(oauthConfiguration, (value) => value.toMap()),
      'optionsPreflightBypass': ?optionsPreflightBypass,
      'pathCookieAttribute': ?pathCookieAttribute,
      'policies': ?pulumi.Input.mapOptionalInputValue<List<AccessApplicationPolicy>, List<Map<String, dynamic>>>(policies, (value) => pulumi.Input.encodeList<AccessApplicationPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'readServiceTokensFromHeader': ?readServiceTokensFromHeader,
      'saasApp': ?pulumi.Input.mapOptionalInputValue<AccessApplicationSaasApp, Map<String, dynamic>>(saasApp, (value) => value.toMap()),
      'sameSiteCookieAttribute': ?sameSiteCookieAttribute,
      'scimConfig': ?pulumi.Input.mapOptionalInputValue<AccessApplicationScimConfig, Map<String, dynamic>>(scimConfig, (value) => value.toMap()),
      'selfHostedDomains': ?selfHostedDomains,
      'serviceAuth401Redirect': ?serviceAuth401Redirect,
      'sessionDuration': ?sessionDuration,
      'skipAppLauncherLoginPage': ?skipAppLauncherLoginPage,
      'skipInterstitial': ?skipInterstitial,
      'tags': ?tags,
      'targetCriterias': ?pulumi.Input.mapOptionalInputValue<List<AccessApplicationTargetCriteria>, List<Map<String, dynamic>>>(targetCriterias, (value) => pulumi.Input.encodeList<AccessApplicationTargetCriteria, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': ?type,
      'zoneId': ?zoneId,
    };
  }

  factory AccessApplicationState.fromMap(Map<String, dynamic> map) {
    return AccessApplicationState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      allowAuthenticateViaWarp: (() { final guardedValue = map['allowAuthenticateViaWarp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      allowIframe: (() { final guardedValue = map['allowIframe']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      allowedIdps: (() { final guardedValue = map['allowedIdps']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      appLauncherLogoUrl: (() { final guardedValue = map['appLauncherLogoUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      appLauncherVisible: (() { final guardedValue = map['appLauncherVisible']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      aud: (() { final guardedValue = map['aud']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      autoRedirectToIdentity: (() { final guardedValue = map['autoRedirectToIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      bgColor: (() { final guardedValue = map['bgColor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      corsHeaders: (() { final guardedValue = map['corsHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessApplicationCorsHeaders.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      customDenyMessage: (() { final guardedValue = map['customDenyMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customDenyUrl: (() { final guardedValue = map['customDenyUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customNonIdentityDenyUrl: (() { final guardedValue = map['customNonIdentityDenyUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customPages: (() { final guardedValue = map['customPages']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      destinations: (() { final guardedValue = map['destinations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccessApplicationDestination>(guardedValue, (value) => AccessApplicationDestination.fromMap((value as Map).cast<String, dynamic>()))); })(),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableBindingCookie: (() { final guardedValue = map['enableBindingCookie']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      footerLinks: (() { final guardedValue = map['footerLinks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccessApplicationFooterLink>(guardedValue, (value) => AccessApplicationFooterLink.fromMap((value as Map).cast<String, dynamic>()))); })(),
      headerBgColor: (() { final guardedValue = map['headerBgColor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      httpOnlyCookieAttribute: (() { final guardedValue = map['httpOnlyCookieAttribute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      landingPageDesign: (() { final guardedValue = map['landingPageDesign']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessApplicationLandingPageDesign.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      logoUrl: (() { final guardedValue = map['logoUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mfaConfig: (() { final guardedValue = map['mfaConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessApplicationMfaConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oauthConfiguration: (() { final guardedValue = map['oauthConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessApplicationOauthConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      optionsPreflightBypass: (() { final guardedValue = map['optionsPreflightBypass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      pathCookieAttribute: (() { final guardedValue = map['pathCookieAttribute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      policies: (() { final guardedValue = map['policies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccessApplicationPolicy>(guardedValue, (value) => AccessApplicationPolicy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      readServiceTokensFromHeader: (() { final guardedValue = map['readServiceTokensFromHeader']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      saasApp: (() { final guardedValue = map['saasApp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessApplicationSaasApp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sameSiteCookieAttribute: (() { final guardedValue = map['sameSiteCookieAttribute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scimConfig: (() { final guardedValue = map['scimConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessApplicationScimConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      selfHostedDomains: (() { final guardedValue = map['selfHostedDomains']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      serviceAuth401Redirect: (() { final guardedValue = map['serviceAuth401Redirect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sessionDuration: (() { final guardedValue = map['sessionDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skipAppLauncherLoginPage: (() { final guardedValue = map['skipAppLauncherLoginPage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      skipInterstitial: (() { final guardedValue = map['skipInterstitial']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      targetCriterias: (() { final guardedValue = map['targetCriterias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccessApplicationTargetCriteria>(guardedValue, (value) => AccessApplicationTargetCriteria.fromMap((value as Map).cast<String, dynamic>()))); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
