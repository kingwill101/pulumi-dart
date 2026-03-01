// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'built_in_authentication_provider.dart';
import 'unauthenticated_client_action.dart';

/// {@template pulumi_web_web_app_auth_settings_args_doc}
/// The set of arguments for WebAppAuthSettings.
/// {@endtemplate}
/// {@macro pulumi_web_web_app_auth_settings_args_doc}
class WebAppAuthSettingsArgs {
  /// Gets a JSON string containing the Azure AD Acl settings.
  final pulumi.Input<String>? aadClaimsAuthorization;
  /// Login parameters to send to the OpenID Connect authorization endpoint when
  /// a user logs in. Each parameter must be in the form "key=value".
  final pulumi.Input<List<String>>? additionalLoginParams;
  /// Allowed audience values to consider when validating JSON Web Tokens issued by
  /// Azure Active Directory. Note that the <code>ClientID</code> value is always considered an
  /// allowed audience, regardless of this setting.
  final pulumi.Input<List<String>>? allowedAudiences;
  /// External URLs that can be redirected to as part of logging in or logging out of the app. Note that the query string part of the URL is ignored.
  /// This is an advanced setting typically only needed by Windows Store application backends.
  /// Note that URLs within the current domain are always implicitly allowed.
  final pulumi.Input<List<String>>? allowedExternalRedirectUrls;
  /// The path of the config file containing auth settings.
  /// If the path is relative, base will the site's root directory.
  final pulumi.Input<String>? authFilePath;
  /// The Client ID of this relying party application, known as the client_id.
  /// This setting is required for enabling OpenID Connection authentication with Azure Active Directory or
  /// other 3rd party OpenID Connect providers.
  /// More information on OpenID Connect: http://openid.net/specs/openid-connect-core-1_0.html
  final pulumi.Input<String>? clientId;
  /// The Client Secret of this relying party application (in Azure Active Directory, this is also referred to as the Key).
  /// This setting is optional. If no client secret is configured, the OpenID Connect implicit auth flow is used to authenticate end users.
  /// Otherwise, the OpenID Connect Authorization Code Flow is used to authenticate end users.
  /// More information on OpenID Connect: http://openid.net/specs/openid-connect-core-1_0.html
  final pulumi.Input<String>? clientSecret;
  /// An alternative to the client secret, that is the thumbprint of a certificate used for signing purposes. This property acts as
  /// a replacement for the Client Secret. It is also optional.
  final pulumi.Input<String>? clientSecretCertificateThumbprint;
  /// The app setting name that contains the client secret of the relying party application.
  final pulumi.Input<String>? clientSecretSettingName;
  /// The ConfigVersion of the Authentication / Authorization feature in use for the current app.
  /// The setting in this value can control the behavior of the control plane for Authentication / Authorization.
  final pulumi.Input<String>? configVersion;
  /// The default authentication provider to use when multiple providers are configured.
  /// This setting is only needed if multiple providers are configured and the unauthenticated client
  /// action is set to "RedirectToLoginPage".
  final pulumi.Input<BuiltInAuthenticationProvider>? defaultProvider;
  /// <code>true</code> if the Authentication / Authorization feature is enabled for the current app; otherwise, <code>false</code>.
  final pulumi.Input<bool>? enabled;
  /// The App ID of the Facebook app used for login.
  /// This setting is required for enabling Facebook Login.
  /// Facebook Login documentation: https://developers.facebook.com/docs/facebook-login
  final pulumi.Input<String>? facebookAppId;
  /// The App Secret of the Facebook app used for Facebook Login.
  /// This setting is required for enabling Facebook Login.
  /// Facebook Login documentation: https://developers.facebook.com/docs/facebook-login
  final pulumi.Input<String>? facebookAppSecret;
  /// The app setting name that contains the app secret used for Facebook Login.
  final pulumi.Input<String>? facebookAppSecretSettingName;
  /// The OAuth 2.0 scopes that will be requested as part of Facebook Login authentication.
  /// This setting is optional.
  /// Facebook Login documentation: https://developers.facebook.com/docs/facebook-login
  final pulumi.Input<List<String>>? facebookOAuthScopes;
  /// The Client Id of the GitHub app used for login.
  /// This setting is required for enabling Github login
  final pulumi.Input<String>? gitHubClientId;
  /// The Client Secret of the GitHub app used for Github Login.
  /// This setting is required for enabling Github login.
  final pulumi.Input<String>? gitHubClientSecret;
  /// The app setting name that contains the client secret of the Github
  /// app used for GitHub Login.
  final pulumi.Input<String>? gitHubClientSecretSettingName;
  /// The OAuth 2.0 scopes that will be requested as part of GitHub Login authentication.
  /// This setting is optional
  final pulumi.Input<List<String>>? gitHubOAuthScopes;
  /// The OpenID Connect Client ID for the Google web application.
  /// This setting is required for enabling Google Sign-In.
  /// Google Sign-In documentation: https://developers.google.com/identity/sign-in/web/
  final pulumi.Input<String>? googleClientId;
  /// The client secret associated with the Google web application.
  /// This setting is required for enabling Google Sign-In.
  /// Google Sign-In documentation: https://developers.google.com/identity/sign-in/web/
  final pulumi.Input<String>? googleClientSecret;
  /// The app setting name that contains the client secret associated with
  /// the Google web application.
  final pulumi.Input<String>? googleClientSecretSettingName;
  /// The OAuth 2.0 scopes that will be requested as part of Google Sign-In authentication.
  /// This setting is optional. If not specified, "openid", "profile", and "email" are used as default scopes.
  /// Google Sign-In documentation: https://developers.google.com/identity/sign-in/web/
  final pulumi.Input<List<String>>? googleOAuthScopes;
  /// "true" if the auth config settings should be read from a file,
  /// "false" otherwise
  final pulumi.Input<String>? isAuthFromFile;
  /// The OpenID Connect Issuer URI that represents the entity which issues access tokens for this application.
  /// When using Azure Active Directory, this value is the URI of the directory tenant, e.g. `https://sts.windows.net/{tenant-guid}/`.
  /// This URI is a case-sensitive identifier for the token issuer.
  /// More information on OpenID Connect Discovery: http://openid.net/specs/openid-connect-discovery-1_0.html
  final pulumi.Input<String>? issuer;
  /// Kind of resource.
  final pulumi.Input<String>? kind;
  /// The OAuth 2.0 client ID that was created for the app used for authentication.
  /// This setting is required for enabling Microsoft Account authentication.
  /// Microsoft Account OAuth documentation: https://dev.onedrive.com/auth/msa_oauth.htm
  final pulumi.Input<String>? microsoftAccountClientId;
  /// The OAuth 2.0 client secret that was created for the app used for authentication.
  /// This setting is required for enabling Microsoft Account authentication.
  /// Microsoft Account OAuth documentation: https://dev.onedrive.com/auth/msa_oauth.htm
  final pulumi.Input<String>? microsoftAccountClientSecret;
  /// The app setting name containing the OAuth 2.0 client secret that was created for the
  /// app used for authentication.
  final pulumi.Input<String>? microsoftAccountClientSecretSettingName;
  /// The OAuth 2.0 scopes that will be requested as part of Microsoft Account authentication.
  /// This setting is optional. If not specified, "wl.basic" is used as the default scope.
  /// Microsoft Account Scopes and permissions documentation: https://msdn.microsoft.com/en-us/library/dn631845.aspx
  final pulumi.Input<List<String>>? microsoftAccountOAuthScopes;
  /// Name of web app.
  final pulumi.Input<String> name;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;
  /// The RuntimeVersion of the Authentication / Authorization feature in use for the current app.
  /// The setting in this value can control the behavior of certain features in the Authentication / Authorization module.
  final pulumi.Input<String>? runtimeVersion;
  /// The number of hours after session token expiration that a session token can be used to
  /// call the token refresh API. The default is 72 hours.
  final pulumi.Input<double>? tokenRefreshExtensionHours;
  /// <code>true</code> to durably store platform-specific security tokens that are obtained during login flows; otherwise, <code>false</code>.
  /// The default is <code>false</code>.
  final pulumi.Input<bool>? tokenStoreEnabled;
  /// The OAuth 1.0a consumer key of the Twitter application used for sign-in.
  /// This setting is required for enabling Twitter Sign-In.
  /// Twitter Sign-In documentation: https://dev.twitter.com/web/sign-in
  final pulumi.Input<String>? twitterConsumerKey;
  /// The OAuth 1.0a consumer secret of the Twitter application used for sign-in.
  /// This setting is required for enabling Twitter Sign-In.
  /// Twitter Sign-In documentation: https://dev.twitter.com/web/sign-in
  final pulumi.Input<String>? twitterConsumerSecret;
  /// The app setting name that contains the OAuth 1.0a consumer secret of the Twitter
  /// application used for sign-in.
  final pulumi.Input<String>? twitterConsumerSecretSettingName;
  /// The action to take when an unauthenticated client attempts to access the app.
  final pulumi.Input<UnauthenticatedClientAction>? unauthenticatedClientAction;
  /// Gets a value indicating whether the issuer should be a valid HTTPS url and be validated as such.
  final pulumi.Input<bool>? validateIssuer;

  /// Creates a new [WebAppAuthSettingsArgs].
  /// [aadClaimsAuthorization] Gets a JSON string containing the Azure AD Acl settings.
  /// [additionalLoginParams] Login parameters to send to the OpenID Connect authorization endpoint when
  /// [allowedAudiences] Allowed audience values to consider when validating JSON Web Tokens issued by
  /// [allowedExternalRedirectUrls] External URLs that can be redirected to as part of logging in or logging out of the app. Note that the query string part of the URL is ignored.
  /// [authFilePath] The path of the config file containing auth settings.
  /// [clientId] The Client ID of this relying party application, known as the client_id.
  /// [clientSecret] The Client Secret of this relying party application (in Azure Active Directory, this is also referred to as the Key).
  /// [clientSecretCertificateThumbprint] An alternative to the client secret, that is the thumbprint of a certificate used for signing purposes. This property acts as
  /// [clientSecretSettingName] The app setting name that contains the client secret of the relying party application.
  /// [configVersion] The ConfigVersion of the Authentication / Authorization feature in use for the current app.
  /// [defaultProvider] The default authentication provider to use when multiple providers are configured.
  /// [enabled] <code>true</code> if the Authentication / Authorization feature is enabled for the current app; otherwise, <code>false</code>.
  /// [facebookAppId] The App ID of the Facebook app used for login.
  /// [facebookAppSecret] The App Secret of the Facebook app used for Facebook Login.
  /// [facebookAppSecretSettingName] The app setting name that contains the app secret used for Facebook Login.
  /// [facebookOAuthScopes] The OAuth 2.0 scopes that will be requested as part of Facebook Login authentication.
  /// [gitHubClientId] The Client Id of the GitHub app used for login.
  /// [gitHubClientSecret] The Client Secret of the GitHub app used for Github Login.
  /// [gitHubClientSecretSettingName] The app setting name that contains the client secret of the Github
  /// [gitHubOAuthScopes] The OAuth 2.0 scopes that will be requested as part of GitHub Login authentication.
  /// [googleClientId] The OpenID Connect Client ID for the Google web application.
  /// [googleClientSecret] The client secret associated with the Google web application.
  /// [googleClientSecretSettingName] The app setting name that contains the client secret associated with
  /// [googleOAuthScopes] The OAuth 2.0 scopes that will be requested as part of Google Sign-In authentication.
  /// [isAuthFromFile] "true" if the auth config settings should be read from a file,
  /// [issuer] The OpenID Connect Issuer URI that represents the entity which issues access tokens for this application.
  /// [kind] Kind of resource.
  /// [microsoftAccountClientId] The OAuth 2.0 client ID that was created for the app used for authentication.
  /// [microsoftAccountClientSecret] The OAuth 2.0 client secret that was created for the app used for authentication.
  /// [microsoftAccountClientSecretSettingName] The app setting name containing the OAuth 2.0 client secret that was created for the
  /// [microsoftAccountOAuthScopes] The OAuth 2.0 scopes that will be requested as part of Microsoft Account authentication.
  /// [name] Name of web app.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [runtimeVersion] The RuntimeVersion of the Authentication / Authorization feature in use for the current app.
  /// [tokenRefreshExtensionHours] The number of hours after session token expiration that a session token can be used to
  /// [tokenStoreEnabled] <code>true</code> to durably store platform-specific security tokens that are obtained during login flows; otherwise, <code>false</code>.
  /// [twitterConsumerKey] The OAuth 1.0a consumer key of the Twitter application used for sign-in.
  /// [twitterConsumerSecret] The OAuth 1.0a consumer secret of the Twitter application used for sign-in.
  /// [twitterConsumerSecretSettingName] The app setting name that contains the OAuth 1.0a consumer secret of the Twitter
  /// [unauthenticatedClientAction] The action to take when an unauthenticated client attempts to access the app.
  /// [validateIssuer] Gets a value indicating whether the issuer should be a valid HTTPS url and be validated as such.
  WebAppAuthSettingsArgs({
    pulumi.Output<String>? aadClaimsAuthorization,
    pulumi.Output<List<String>>? additionalLoginParams,
    pulumi.Output<List<String>>? allowedAudiences,
    pulumi.Output<List<String>>? allowedExternalRedirectUrls,
    pulumi.Output<String>? authFilePath,
    pulumi.Output<String>? clientId,
    pulumi.Output<String>? clientSecret,
    pulumi.Output<String>? clientSecretCertificateThumbprint,
    pulumi.Output<String>? clientSecretSettingName,
    pulumi.Output<String>? configVersion,
    pulumi.Output<BuiltInAuthenticationProvider>? defaultProvider,
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? facebookAppId,
    pulumi.Output<String>? facebookAppSecret,
    pulumi.Output<String>? facebookAppSecretSettingName,
    pulumi.Output<List<String>>? facebookOAuthScopes,
    pulumi.Output<String>? gitHubClientId,
    pulumi.Output<String>? gitHubClientSecret,
    pulumi.Output<String>? gitHubClientSecretSettingName,
    pulumi.Output<List<String>>? gitHubOAuthScopes,
    pulumi.Output<String>? googleClientId,
    pulumi.Output<String>? googleClientSecret,
    pulumi.Output<String>? googleClientSecretSettingName,
    pulumi.Output<List<String>>? googleOAuthScopes,
    pulumi.Output<String>? isAuthFromFile,
    pulumi.Output<String>? issuer,
    pulumi.Output<String>? kind,
    pulumi.Output<String>? microsoftAccountClientId,
    pulumi.Output<String>? microsoftAccountClientSecret,
    pulumi.Output<String>? microsoftAccountClientSecretSettingName,
    pulumi.Output<List<String>>? microsoftAccountOAuthScopes,
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? runtimeVersion,
    pulumi.Output<double>? tokenRefreshExtensionHours,
    pulumi.Output<bool>? tokenStoreEnabled,
    pulumi.Output<String>? twitterConsumerKey,
    pulumi.Output<String>? twitterConsumerSecret,
    pulumi.Output<String>? twitterConsumerSecretSettingName,
    pulumi.Output<UnauthenticatedClientAction>? unauthenticatedClientAction,
    pulumi.Output<bool>? validateIssuer,
  }) :
      aadClaimsAuthorization = pulumi.Input.asOptionalInput<String>(aadClaimsAuthorization),
      additionalLoginParams = pulumi.Input.asOptionalInput<List<String>>(additionalLoginParams),
      allowedAudiences = pulumi.Input.asOptionalInput<List<String>>(allowedAudiences),
      allowedExternalRedirectUrls = pulumi.Input.asOptionalInput<List<String>>(allowedExternalRedirectUrls),
      authFilePath = pulumi.Input.asOptionalInput<String>(authFilePath),
      clientId = pulumi.Input.asOptionalInput<String>(clientId),
      clientSecret = pulumi.Input.asOptionalInput<String>(clientSecret),
      clientSecretCertificateThumbprint = pulumi.Input.asOptionalInput<String>(clientSecretCertificateThumbprint),
      clientSecretSettingName = pulumi.Input.asOptionalInput<String>(clientSecretSettingName),
      configVersion = pulumi.Input.asOptionalInput<String>(configVersion),
      defaultProvider = pulumi.Input.asOptionalInput<BuiltInAuthenticationProvider>(defaultProvider),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      facebookAppId = pulumi.Input.asOptionalInput<String>(facebookAppId),
      facebookAppSecret = pulumi.Input.asOptionalInput<String>(facebookAppSecret),
      facebookAppSecretSettingName = pulumi.Input.asOptionalInput<String>(facebookAppSecretSettingName),
      facebookOAuthScopes = pulumi.Input.asOptionalInput<List<String>>(facebookOAuthScopes),
      gitHubClientId = pulumi.Input.asOptionalInput<String>(gitHubClientId),
      gitHubClientSecret = pulumi.Input.asOptionalInput<String>(gitHubClientSecret),
      gitHubClientSecretSettingName = pulumi.Input.asOptionalInput<String>(gitHubClientSecretSettingName),
      gitHubOAuthScopes = pulumi.Input.asOptionalInput<List<String>>(gitHubOAuthScopes),
      googleClientId = pulumi.Input.asOptionalInput<String>(googleClientId),
      googleClientSecret = pulumi.Input.asOptionalInput<String>(googleClientSecret),
      googleClientSecretSettingName = pulumi.Input.asOptionalInput<String>(googleClientSecretSettingName),
      googleOAuthScopes = pulumi.Input.asOptionalInput<List<String>>(googleOAuthScopes),
      isAuthFromFile = pulumi.Input.asOptionalInput<String>(isAuthFromFile),
      issuer = pulumi.Input.asOptionalInput<String>(issuer),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      microsoftAccountClientId = pulumi.Input.asOptionalInput<String>(microsoftAccountClientId),
      microsoftAccountClientSecret = pulumi.Input.asOptionalInput<String>(microsoftAccountClientSecret),
      microsoftAccountClientSecretSettingName = pulumi.Input.asOptionalInput<String>(microsoftAccountClientSecretSettingName),
      microsoftAccountOAuthScopes = pulumi.Input.asOptionalInput<List<String>>(microsoftAccountOAuthScopes),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      runtimeVersion = pulumi.Input.asOptionalInput<String>(runtimeVersion),
      tokenRefreshExtensionHours = pulumi.Input.asOptionalInput<double>(tokenRefreshExtensionHours),
      tokenStoreEnabled = pulumi.Input.asOptionalInput<bool>(tokenStoreEnabled),
      twitterConsumerKey = pulumi.Input.asOptionalInput<String>(twitterConsumerKey),
      twitterConsumerSecret = pulumi.Input.asOptionalInput<String>(twitterConsumerSecret),
      twitterConsumerSecretSettingName = pulumi.Input.asOptionalInput<String>(twitterConsumerSecretSettingName),
      unauthenticatedClientAction = pulumi.Input.asOptionalInput<UnauthenticatedClientAction>(unauthenticatedClientAction),
      validateIssuer = pulumi.Input.asOptionalInput<bool>(validateIssuer);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadClaimsAuthorization': ?aadClaimsAuthorization,
      'additionalLoginParams': ?additionalLoginParams,
      'allowedAudiences': ?allowedAudiences,
      'allowedExternalRedirectUrls': ?allowedExternalRedirectUrls,
      'authFilePath': ?authFilePath,
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'clientSecretCertificateThumbprint': ?clientSecretCertificateThumbprint,
      'clientSecretSettingName': ?clientSecretSettingName,
      'configVersion': ?configVersion,
      'defaultProvider': ?pulumi.Input.mapOptionalInputValue<BuiltInAuthenticationProvider, String>(defaultProvider, (value) => value.value),
      'enabled': ?enabled,
      'facebookAppId': ?facebookAppId,
      'facebookAppSecret': ?facebookAppSecret,
      'facebookAppSecretSettingName': ?facebookAppSecretSettingName,
      'facebookOAuthScopes': ?facebookOAuthScopes,
      'gitHubClientId': ?gitHubClientId,
      'gitHubClientSecret': ?gitHubClientSecret,
      'gitHubClientSecretSettingName': ?gitHubClientSecretSettingName,
      'gitHubOAuthScopes': ?gitHubOAuthScopes,
      'googleClientId': ?googleClientId,
      'googleClientSecret': ?googleClientSecret,
      'googleClientSecretSettingName': ?googleClientSecretSettingName,
      'googleOAuthScopes': ?googleOAuthScopes,
      'isAuthFromFile': ?isAuthFromFile,
      'issuer': ?issuer,
      'kind': ?kind,
      'microsoftAccountClientId': ?microsoftAccountClientId,
      'microsoftAccountClientSecret': ?microsoftAccountClientSecret,
      'microsoftAccountClientSecretSettingName': ?microsoftAccountClientSecretSettingName,
      'microsoftAccountOAuthScopes': ?microsoftAccountOAuthScopes,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'runtimeVersion': ?runtimeVersion,
      'tokenRefreshExtensionHours': ?tokenRefreshExtensionHours,
      'tokenStoreEnabled': ?tokenStoreEnabled,
      'twitterConsumerKey': ?twitterConsumerKey,
      'twitterConsumerSecret': ?twitterConsumerSecret,
      'twitterConsumerSecretSettingName': ?twitterConsumerSecretSettingName,
      'unauthenticatedClientAction': ?pulumi.Input.mapOptionalInputValue<UnauthenticatedClientAction, String>(unauthenticatedClientAction, (value) => value.value),
      'validateIssuer': ?validateIssuer,
    };
  }

  factory WebAppAuthSettingsArgs.fromMap(Map<String, dynamic> map) {
    return WebAppAuthSettingsArgs(
      aadClaimsAuthorization: map['aadClaimsAuthorization'] == null ? null : pulumi.Output.create<String>(map['aadClaimsAuthorization'] as String),
      additionalLoginParams: map['additionalLoginParams'] == null ? null : pulumi.Output.create<List<String>>((map['additionalLoginParams'] as List).cast<String>()),
      allowedAudiences: map['allowedAudiences'] == null ? null : pulumi.Output.create<List<String>>((map['allowedAudiences'] as List).cast<String>()),
      allowedExternalRedirectUrls: map['allowedExternalRedirectUrls'] == null ? null : pulumi.Output.create<List<String>>((map['allowedExternalRedirectUrls'] as List).cast<String>()),
      authFilePath: map['authFilePath'] == null ? null : pulumi.Output.create<String>(map['authFilePath'] as String),
      clientId: map['clientId'] == null ? null : pulumi.Output.create<String>(map['clientId'] as String),
      clientSecret: map['clientSecret'] == null ? null : pulumi.Output.create<String>(map['clientSecret'] as String),
      clientSecretCertificateThumbprint: map['clientSecretCertificateThumbprint'] == null ? null : pulumi.Output.create<String>(map['clientSecretCertificateThumbprint'] as String),
      clientSecretSettingName: map['clientSecretSettingName'] == null ? null : pulumi.Output.create<String>(map['clientSecretSettingName'] as String),
      configVersion: map['configVersion'] == null ? null : pulumi.Output.create<String>(map['configVersion'] as String),
      defaultProvider: map['defaultProvider'] == null ? null : pulumi.Output.create<BuiltInAuthenticationProvider>(BuiltInAuthenticationProvider.fromValue(map['defaultProvider'] as String)),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      facebookAppId: map['facebookAppId'] == null ? null : pulumi.Output.create<String>(map['facebookAppId'] as String),
      facebookAppSecret: map['facebookAppSecret'] == null ? null : pulumi.Output.create<String>(map['facebookAppSecret'] as String),
      facebookAppSecretSettingName: map['facebookAppSecretSettingName'] == null ? null : pulumi.Output.create<String>(map['facebookAppSecretSettingName'] as String),
      facebookOAuthScopes: map['facebookOAuthScopes'] == null ? null : pulumi.Output.create<List<String>>((map['facebookOAuthScopes'] as List).cast<String>()),
      gitHubClientId: map['gitHubClientId'] == null ? null : pulumi.Output.create<String>(map['gitHubClientId'] as String),
      gitHubClientSecret: map['gitHubClientSecret'] == null ? null : pulumi.Output.create<String>(map['gitHubClientSecret'] as String),
      gitHubClientSecretSettingName: map['gitHubClientSecretSettingName'] == null ? null : pulumi.Output.create<String>(map['gitHubClientSecretSettingName'] as String),
      gitHubOAuthScopes: map['gitHubOAuthScopes'] == null ? null : pulumi.Output.create<List<String>>((map['gitHubOAuthScopes'] as List).cast<String>()),
      googleClientId: map['googleClientId'] == null ? null : pulumi.Output.create<String>(map['googleClientId'] as String),
      googleClientSecret: map['googleClientSecret'] == null ? null : pulumi.Output.create<String>(map['googleClientSecret'] as String),
      googleClientSecretSettingName: map['googleClientSecretSettingName'] == null ? null : pulumi.Output.create<String>(map['googleClientSecretSettingName'] as String),
      googleOAuthScopes: map['googleOAuthScopes'] == null ? null : pulumi.Output.create<List<String>>((map['googleOAuthScopes'] as List).cast<String>()),
      isAuthFromFile: map['isAuthFromFile'] == null ? null : pulumi.Output.create<String>(map['isAuthFromFile'] as String),
      issuer: map['issuer'] == null ? null : pulumi.Output.create<String>(map['issuer'] as String),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      microsoftAccountClientId: map['microsoftAccountClientId'] == null ? null : pulumi.Output.create<String>(map['microsoftAccountClientId'] as String),
      microsoftAccountClientSecret: map['microsoftAccountClientSecret'] == null ? null : pulumi.Output.create<String>(map['microsoftAccountClientSecret'] as String),
      microsoftAccountClientSecretSettingName: map['microsoftAccountClientSecretSettingName'] == null ? null : pulumi.Output.create<String>(map['microsoftAccountClientSecretSettingName'] as String),
      microsoftAccountOAuthScopes: map['microsoftAccountOAuthScopes'] == null ? null : pulumi.Output.create<List<String>>((map['microsoftAccountOAuthScopes'] as List).cast<String>()),
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      runtimeVersion: map['runtimeVersion'] == null ? null : pulumi.Output.create<String>(map['runtimeVersion'] as String),
      tokenRefreshExtensionHours: map['tokenRefreshExtensionHours'] == null ? null : pulumi.Output.create<double>(map['tokenRefreshExtensionHours'] as double),
      tokenStoreEnabled: map['tokenStoreEnabled'] == null ? null : pulumi.Output.create<bool>(map['tokenStoreEnabled'] as bool),
      twitterConsumerKey: map['twitterConsumerKey'] == null ? null : pulumi.Output.create<String>(map['twitterConsumerKey'] as String),
      twitterConsumerSecret: map['twitterConsumerSecret'] == null ? null : pulumi.Output.create<String>(map['twitterConsumerSecret'] as String),
      twitterConsumerSecretSettingName: map['twitterConsumerSecretSettingName'] == null ? null : pulumi.Output.create<String>(map['twitterConsumerSecretSettingName'] as String),
      unauthenticatedClientAction: map['unauthenticatedClientAction'] == null ? null : pulumi.Output.create<UnauthenticatedClientAction>(UnauthenticatedClientAction.fromValue(map['unauthenticatedClientAction'] as String)),
      validateIssuer: map['validateIssuer'] == null ? null : pulumi.Output.create<bool>(map['validateIssuer'] as bool),
    );
  }
}

