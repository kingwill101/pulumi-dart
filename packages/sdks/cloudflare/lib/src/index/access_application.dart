import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_application_args.dart';
import 'access_application_cors_headers.dart';
import 'access_application_destination.dart';
import 'access_application_footer_link.dart';
import 'access_application_landing_page_design.dart';
import 'access_application_mfa_config.dart';
import 'access_application_oauth_configuration.dart';
import 'access_application_policy.dart';
import 'access_application_saas_app.dart';
import 'access_application_scim_config.dart';
import 'access_application_state.dart';
import 'access_application_target_criteria.dart';

/// ## Example Usage
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/accessApplication:AccessApplication example '<{accounts|zones}/{account_id|zone_id}>/<app_id>'
/// ```
class AccessApplication extends pulumi.CustomResource {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  late final pulumi.Output<String?> accountId;
  /// When set to true, users can authenticate to this application using their WARP session.  When set to false this application will always require direct IdP authentication. This setting always overrides the organization setting for WARP authentication.
  late final pulumi.Output<bool?> allowAuthenticateViaWarp;
  /// Enables loading application content in an iFrame.
  late final pulumi.Output<bool?> allowIframe;
  /// The identity providers your users can select when connecting to this application. Defaults to all IdPs configured in your account.
  late final pulumi.Output<List<String>?> allowedIdps;
  /// The image URL of the logo shown in the App Launcher header.
  late final pulumi.Output<String?> appLauncherLogoUrl;
  /// Displays the application in the App Launcher.
  late final pulumi.Output<bool> appLauncherVisible;
  /// Audience tag.
  late final pulumi.Output<String> aud;
  /// When set to `true`, users skip the identity provider selection step during login. You must specify only one identity provider in allowed_idps.
  late final pulumi.Output<bool?> autoRedirectToIdentity;
  /// The background color of the App Launcher page.
  late final pulumi.Output<String?> bgColor;
  late final pulumi.Output<AccessApplicationCorsHeaders?> corsHeaders;
  /// The custom error message shown to a user when they are denied access to the application.
  late final pulumi.Output<String?> customDenyMessage;
  /// The custom URL a user is redirected to when they are denied access to the application when failing identity-based rules.
  late final pulumi.Output<String?> customDenyUrl;
  /// The custom URL a user is redirected to when they are denied access to the application when failing non-identity rules.
  late final pulumi.Output<String?> customNonIdentityDenyUrl;
  /// The custom pages that will be displayed when applicable for this application
  late final pulumi.Output<List<String>?> customPages;
  /// List of destinations secured by Access. This supersedes `selfHostedDomains` to allow for more flexibility in defining different types of domains. If `destinations` are provided, then `selfHostedDomains` will be ignored.
  late final pulumi.Output<List<AccessApplicationDestination>> destinations;
  /// The primary hostname and path secured by Access. This domain will be displayed if the app is visible in the App Launcher.
  late final pulumi.Output<String> domain;
  /// Enables the binding cookie, which increases security against compromised authorization tokens and CSRF attacks.
  late final pulumi.Output<bool?> enableBindingCookie;
  /// The links in the App Launcher footer.
  late final pulumi.Output<List<AccessApplicationFooterLink>?> footerLinks;
  /// The background color of the App Launcher header.
  late final pulumi.Output<String?> headerBgColor;
  /// Enables the HttpOnly cookie attribute, which increases security against XSS attacks.
  late final pulumi.Output<bool> httpOnlyCookieAttribute;
  /// The design of the App Launcher landing page shown to users when they log in.
  late final pulumi.Output<AccessApplicationLandingPageDesign?> landingPageDesign;
  /// The image URL for the logo shown in the App Launcher dashboard.
  late final pulumi.Output<String?> logoUrl;
  /// Configures multi-factor authentication (MFA) settings for the application. Only valid for self*hosted, ssh, vnc, and rdp application types.
  late final pulumi.Output<AccessApplicationMfaConfig?> mfaConfig;
  /// The name of the application.
  late final pulumi.Output<String> name;
  /// Optional configuration for managing an OAuth authorization flow controlled by Access. When set, Access will act as the OAuth authorization server for this application. This feature is currently in beta.
  late final pulumi.Output<AccessApplicationOauthConfiguration?> oauthConfiguration;
  /// Allows options preflight requests to bypass Access authentication and go directly to the origin. Cannot turn on if corsHeaders is set.
  late final pulumi.Output<bool?> optionsPreflightBypass;
  /// Enables cookie paths to scope an application's JWT to the application path. If disabled, the JWT will scope to the hostname by default
  late final pulumi.Output<bool?> pathCookieAttribute;
  /// The policies that Access applies to the application, in ascending order of precedence. Items can reference existing policies or create new policies exclusive to the application.
  late final pulumi.Output<List<AccessApplicationPolicy>?> policies;
  /// Allows matching Access Service Tokens passed HTTP in a single header with this name.
  /// This works as an alternative to the (CF-Access-Client-Id, CF-Access-Client-Secret) pair of headers.
  /// The header value will be interpreted as a json object similar to:
  /// {
  /// "cf-access-client-id": "88bf3b6d86161464f6509f7219099e57.access.example.com",
  /// "cf-access-client-secret": "bdd31cbc4dec990953e39163fbbb194c93313ca9f0a6e420346af9d326b1d2a5"
  /// }
  late final pulumi.Output<String?> readServiceTokensFromHeader;
  late final pulumi.Output<AccessApplicationSaasApp?> saasApp;
  /// Sets the SameSite cookie setting, which provides increased security against CSRF attacks.
  late final pulumi.Output<String?> sameSiteCookieAttribute;
  /// Configuration for provisioning to this application via SCIM. This is currently in closed beta.
  late final pulumi.Output<AccessApplicationScimConfig?> scimConfig;
  /// List of public domains that Access will secure. This field is deprecated in favor of `destinations` and will be supported until **November 21, 2025.** If `destinations` are provided, then `selfHostedDomains` will be ignored.
  late final pulumi.Output<List<String>> selfHostedDomains;
  /// Returns a 401 status code when the request is blocked by a Service Auth policy.
  late final pulumi.Output<bool?> serviceAuth401Redirect;
  /// The amount of time that tokens issued for this application will be valid. Must be in the format `300ms` or `2h45m`. Valid time units are: ns, us (or µs), ms, s, m, h. Note: unsupported for infrastructure type applications.
  late final pulumi.Output<String> sessionDuration;
  /// Determines when to skip the App Launcher landing page.
  late final pulumi.Output<bool> skipAppLauncherLoginPage;
  /// Enables automatic authentication through cloudflared.
  late final pulumi.Output<bool?> skipInterstitial;
  /// The tags you want assigned to an application. Tags are used to filter applications in the App Launcher dashboard.
  late final pulumi.Output<List<String>?> tags;
  late final pulumi.Output<List<AccessApplicationTargetCriteria>?> targetCriterias;
  /// The application type.
  /// Available values: "self*hosted", "saas", "ssh", "vnc", "app*launcher", "warp", "biso", "bookmark", "dash*sso", "infrastructure", "rdp", "mcp", "mcp*portal", "proxyEndpoint".
  late final pulumi.Output<String> type;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  late final pulumi.Output<String?> zoneId;

  /// Creates a new [AccessApplication].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccessApplication]. {@macro pulumi_index_access_application_access_application_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccessApplication(
    String name, {
    AccessApplicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/accessApplication:AccessApplication',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    accountId = registerOutput<String?>('accountId');
    allowAuthenticateViaWarp = registerOutput<bool?>('allowAuthenticateViaWarp');
    allowIframe = registerOutput<bool?>('allowIframe');
    allowedIdps = registerOutput<List<String>?>('allowedIdps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    appLauncherLogoUrl = registerOutput<String?>('appLauncherLogoUrl');
    appLauncherVisible = registerOutput<bool>('appLauncherVisible');
    aud = registerOutput<String>('aud');
    autoRedirectToIdentity = registerOutput<bool?>('autoRedirectToIdentity');
    bgColor = registerOutput<String?>('bgColor');
    corsHeaders = registerOutput<AccessApplicationCorsHeaders?>('corsHeaders', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessApplicationCorsHeaders.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    customDenyMessage = registerOutput<String?>('customDenyMessage');
    customDenyUrl = registerOutput<String?>('customDenyUrl');
    customNonIdentityDenyUrl = registerOutput<String?>('customNonIdentityDenyUrl');
    customPages = registerOutput<List<String>?>('customPages', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    destinations = registerOutput<List<AccessApplicationDestination>>('destinations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccessApplicationDestination>(guardedValue, (value) => AccessApplicationDestination.fromMap((value as Map).cast<String, dynamic>())); });
    domain = registerOutput<String>('domain');
    enableBindingCookie = registerOutput<bool?>('enableBindingCookie');
    footerLinks = registerOutput<List<AccessApplicationFooterLink>?>('footerLinks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccessApplicationFooterLink>(guardedValue, (value) => AccessApplicationFooterLink.fromMap((value as Map).cast<String, dynamic>())); });
    headerBgColor = registerOutput<String?>('headerBgColor');
    httpOnlyCookieAttribute = registerOutput<bool>('httpOnlyCookieAttribute');
    landingPageDesign = registerOutput<AccessApplicationLandingPageDesign?>('landingPageDesign', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessApplicationLandingPageDesign.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    logoUrl = registerOutput<String?>('logoUrl');
    mfaConfig = registerOutput<AccessApplicationMfaConfig?>('mfaConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessApplicationMfaConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    oauthConfiguration = registerOutput<AccessApplicationOauthConfiguration?>('oauthConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessApplicationOauthConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    optionsPreflightBypass = registerOutput<bool?>('optionsPreflightBypass');
    pathCookieAttribute = registerOutput<bool?>('pathCookieAttribute');
    policies = registerOutput<List<AccessApplicationPolicy>?>('policies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccessApplicationPolicy>(guardedValue, (value) => AccessApplicationPolicy.fromMap((value as Map).cast<String, dynamic>())); });
    readServiceTokensFromHeader = registerOutput<String?>('readServiceTokensFromHeader');
    saasApp = registerOutput<AccessApplicationSaasApp?>('saasApp', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessApplicationSaasApp.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sameSiteCookieAttribute = registerOutput<String?>('sameSiteCookieAttribute');
    scimConfig = registerOutput<AccessApplicationScimConfig?>('scimConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessApplicationScimConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    selfHostedDomains = registerOutput<List<String>>('selfHostedDomains', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    serviceAuth401Redirect = registerOutput<bool?>('serviceAuth401Redirect');
    sessionDuration = registerOutput<String>('sessionDuration');
    skipAppLauncherLoginPage = registerOutput<bool>('skipAppLauncherLoginPage');
    skipInterstitial = registerOutput<bool?>('skipInterstitial');
    tags = registerOutput<List<String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    targetCriterias = registerOutput<List<AccessApplicationTargetCriteria>?>('targetCriterias', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccessApplicationTargetCriteria>(guardedValue, (value) => AccessApplicationTargetCriteria.fromMap((value as Map).cast<String, dynamic>())); });
    type = registerOutput<String>('type');
    zoneId = registerOutput<String?>('zoneId');
  }

  /// Gets an existing [AccessApplication] resource's state with the given [name] and [id].
  static AccessApplication get(
    String name,
    pulumi.Input<String> id, {
    AccessApplicationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AccessApplication._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AccessApplication._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/accessApplication:AccessApplication',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String?>('accountId');
    allowAuthenticateViaWarp = registerOutput<bool?>('allowAuthenticateViaWarp');
    allowIframe = registerOutput<bool?>('allowIframe');
    allowedIdps = registerOutput<List<String>?>('allowedIdps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    appLauncherLogoUrl = registerOutput<String?>('appLauncherLogoUrl');
    appLauncherVisible = registerOutput<bool>('appLauncherVisible');
    aud = registerOutput<String>('aud');
    autoRedirectToIdentity = registerOutput<bool?>('autoRedirectToIdentity');
    bgColor = registerOutput<String?>('bgColor');
    corsHeaders = registerOutput<AccessApplicationCorsHeaders?>('corsHeaders', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessApplicationCorsHeaders.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    customDenyMessage = registerOutput<String?>('customDenyMessage');
    customDenyUrl = registerOutput<String?>('customDenyUrl');
    customNonIdentityDenyUrl = registerOutput<String?>('customNonIdentityDenyUrl');
    customPages = registerOutput<List<String>?>('customPages', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    destinations = registerOutput<List<AccessApplicationDestination>>('destinations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccessApplicationDestination>(guardedValue, (value) => AccessApplicationDestination.fromMap((value as Map).cast<String, dynamic>())); });
    domain = registerOutput<String>('domain');
    enableBindingCookie = registerOutput<bool?>('enableBindingCookie');
    footerLinks = registerOutput<List<AccessApplicationFooterLink>?>('footerLinks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccessApplicationFooterLink>(guardedValue, (value) => AccessApplicationFooterLink.fromMap((value as Map).cast<String, dynamic>())); });
    headerBgColor = registerOutput<String?>('headerBgColor');
    httpOnlyCookieAttribute = registerOutput<bool>('httpOnlyCookieAttribute');
    landingPageDesign = registerOutput<AccessApplicationLandingPageDesign?>('landingPageDesign', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessApplicationLandingPageDesign.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    logoUrl = registerOutput<String?>('logoUrl');
    mfaConfig = registerOutput<AccessApplicationMfaConfig?>('mfaConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessApplicationMfaConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    oauthConfiguration = registerOutput<AccessApplicationOauthConfiguration?>('oauthConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessApplicationOauthConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    optionsPreflightBypass = registerOutput<bool?>('optionsPreflightBypass');
    pathCookieAttribute = registerOutput<bool?>('pathCookieAttribute');
    policies = registerOutput<List<AccessApplicationPolicy>?>('policies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccessApplicationPolicy>(guardedValue, (value) => AccessApplicationPolicy.fromMap((value as Map).cast<String, dynamic>())); });
    readServiceTokensFromHeader = registerOutput<String?>('readServiceTokensFromHeader');
    saasApp = registerOutput<AccessApplicationSaasApp?>('saasApp', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessApplicationSaasApp.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sameSiteCookieAttribute = registerOutput<String?>('sameSiteCookieAttribute');
    scimConfig = registerOutput<AccessApplicationScimConfig?>('scimConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessApplicationScimConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    selfHostedDomains = registerOutput<List<String>>('selfHostedDomains', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    serviceAuth401Redirect = registerOutput<bool?>('serviceAuth401Redirect');
    sessionDuration = registerOutput<String>('sessionDuration');
    skipAppLauncherLoginPage = registerOutput<bool>('skipAppLauncherLoginPage');
    skipInterstitial = registerOutput<bool?>('skipInterstitial');
    tags = registerOutput<List<String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    targetCriterias = registerOutput<List<AccessApplicationTargetCriteria>?>('targetCriterias', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccessApplicationTargetCriteria>(guardedValue, (value) => AccessApplicationTargetCriteria.fromMap((value as Map).cast<String, dynamic>())); });
    type = registerOutput<String>('type');
    zoneId = registerOutput<String?>('zoneId');
  }

  /// Creates a typed reference to an existing [AccessApplication] resource.
  AccessApplication.reference(String urn)
    : super(
        'cloudflare:index/accessApplication:AccessApplication',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String?>('accountId');
    allowAuthenticateViaWarp = registerOutput<bool?>('allowAuthenticateViaWarp');
    allowIframe = registerOutput<bool?>('allowIframe');
    allowedIdps = registerOutput<List<String>?>('allowedIdps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    appLauncherLogoUrl = registerOutput<String?>('appLauncherLogoUrl');
    appLauncherVisible = registerOutput<bool>('appLauncherVisible');
    aud = registerOutput<String>('aud');
    autoRedirectToIdentity = registerOutput<bool?>('autoRedirectToIdentity');
    bgColor = registerOutput<String?>('bgColor');
    corsHeaders = registerOutput<AccessApplicationCorsHeaders?>('corsHeaders', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessApplicationCorsHeaders.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    customDenyMessage = registerOutput<String?>('customDenyMessage');
    customDenyUrl = registerOutput<String?>('customDenyUrl');
    customNonIdentityDenyUrl = registerOutput<String?>('customNonIdentityDenyUrl');
    customPages = registerOutput<List<String>?>('customPages', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    destinations = registerOutput<List<AccessApplicationDestination>>('destinations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccessApplicationDestination>(guardedValue, (value) => AccessApplicationDestination.fromMap((value as Map).cast<String, dynamic>())); });
    domain = registerOutput<String>('domain');
    enableBindingCookie = registerOutput<bool?>('enableBindingCookie');
    footerLinks = registerOutput<List<AccessApplicationFooterLink>?>('footerLinks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccessApplicationFooterLink>(guardedValue, (value) => AccessApplicationFooterLink.fromMap((value as Map).cast<String, dynamic>())); });
    headerBgColor = registerOutput<String?>('headerBgColor');
    httpOnlyCookieAttribute = registerOutput<bool>('httpOnlyCookieAttribute');
    landingPageDesign = registerOutput<AccessApplicationLandingPageDesign?>('landingPageDesign', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessApplicationLandingPageDesign.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    logoUrl = registerOutput<String?>('logoUrl');
    mfaConfig = registerOutput<AccessApplicationMfaConfig?>('mfaConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessApplicationMfaConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    oauthConfiguration = registerOutput<AccessApplicationOauthConfiguration?>('oauthConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessApplicationOauthConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    optionsPreflightBypass = registerOutput<bool?>('optionsPreflightBypass');
    pathCookieAttribute = registerOutput<bool?>('pathCookieAttribute');
    policies = registerOutput<List<AccessApplicationPolicy>?>('policies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccessApplicationPolicy>(guardedValue, (value) => AccessApplicationPolicy.fromMap((value as Map).cast<String, dynamic>())); });
    readServiceTokensFromHeader = registerOutput<String?>('readServiceTokensFromHeader');
    saasApp = registerOutput<AccessApplicationSaasApp?>('saasApp', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessApplicationSaasApp.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sameSiteCookieAttribute = registerOutput<String?>('sameSiteCookieAttribute');
    scimConfig = registerOutput<AccessApplicationScimConfig?>('scimConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessApplicationScimConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    selfHostedDomains = registerOutput<List<String>>('selfHostedDomains', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    serviceAuth401Redirect = registerOutput<bool?>('serviceAuth401Redirect');
    sessionDuration = registerOutput<String>('sessionDuration');
    skipAppLauncherLoginPage = registerOutput<bool>('skipAppLauncherLoginPage');
    skipInterstitial = registerOutput<bool?>('skipInterstitial');
    tags = registerOutput<List<String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    targetCriterias = registerOutput<List<AccessApplicationTargetCriteria>?>('targetCriterias', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccessApplicationTargetCriteria>(guardedValue, (value) => AccessApplicationTargetCriteria.fromMap((value as Map).cast<String, dynamic>())); });
    type = registerOutput<String>('type');
    zoneId = registerOutput<String?>('zoneId');
  }
}
