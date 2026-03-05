// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'built_in_authentication_provider.dart';
import 'unauthenticated_client_action.dart';

/// {@template pulumi_web_web_app_auth_settings_slot_args_doc}
/// The set of arguments for WebAppAuthSettingsSlot.
/// {@endtemplate}
/// {@macro pulumi_web_web_app_auth_settings_slot_args_doc}
class WebAppAuthSettingsSlotArgs {
  /// Gets a JSON string containing the Azure AD Acl settings.
  final pulumi.Input<String>? aadClaimsAuthorization;
  /// Login parameters to send to the OpenID Connect authorization endpoint when
  /// a user logs in. Each parameter must be in the form "key=value".
  final pulumi.Input<List<String>>? additionalLoginParams;
  /// Allowed audience values to consider when validating JSON Web Tokens issued by
  /// Azure Active Directory. Note that the &lt;code&gt;ClientID&lt;/code&gt; value is always considered an
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
  /// &lt;code&gt;true&lt;/code&gt; if the Authentication / Authorization feature is enabled for the current app; otherwise, &lt;code&gt;false&lt;/code&gt;.
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
  /// Name of web app slot. If not specified then will default to production slot.
  final pulumi.Input<String> slot;
  /// The number of hours after session token expiration that a session token can be used to
  /// call the token refresh API. The default is 72 hours.
  final pulumi.Input<double>? tokenRefreshExtensionHours;
  /// &lt;code&gt;true&lt;/code&gt; to durably store platform-specific security tokens that are obtained during login flows; otherwise, &lt;code&gt;false&lt;/code&gt;.
  /// The default is &lt;code&gt;false&lt;/code&gt;.
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

  /// Creates a new [WebAppAuthSettingsSlotArgs].
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
  /// [enabled] &lt;code&gt;true&lt;/code&gt; if the Authentication / Authorization feature is enabled for the current app; otherwise, &lt;code&gt;false&lt;/code&gt;.
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
  /// [slot] Name of web app slot. If not specified then will default to production slot.
  /// [tokenRefreshExtensionHours] The number of hours after session token expiration that a session token can be used to
  /// [tokenStoreEnabled] &lt;code&gt;true&lt;/code&gt; to durably store platform-specific security tokens that are obtained during login flows; otherwise, &lt;code&gt;false&lt;/code&gt;.
  /// [twitterConsumerKey] The OAuth 1.0a consumer key of the Twitter application used for sign-in.
  /// [twitterConsumerSecret] The OAuth 1.0a consumer secret of the Twitter application used for sign-in.
  /// [twitterConsumerSecretSettingName] The app setting name that contains the OAuth 1.0a consumer secret of the Twitter
  /// [unauthenticatedClientAction] The action to take when an unauthenticated client attempts to access the app.
  /// [validateIssuer] Gets a value indicating whether the issuer should be a valid HTTPS url and be validated as such.
  WebAppAuthSettingsSlotArgs({
    this.aadClaimsAuthorization,
    this.additionalLoginParams,
    this.allowedAudiences,
    this.allowedExternalRedirectUrls,
    this.authFilePath,
    this.clientId,
    this.clientSecret,
    this.clientSecretCertificateThumbprint,
    this.clientSecretSettingName,
    this.configVersion,
    this.defaultProvider,
    this.enabled,
    this.facebookAppId,
    this.facebookAppSecret,
    this.facebookAppSecretSettingName,
    this.facebookOAuthScopes,
    this.gitHubClientId,
    this.gitHubClientSecret,
    this.gitHubClientSecretSettingName,
    this.gitHubOAuthScopes,
    this.googleClientId,
    this.googleClientSecret,
    this.googleClientSecretSettingName,
    this.googleOAuthScopes,
    this.isAuthFromFile,
    this.issuer,
    this.kind,
    this.microsoftAccountClientId,
    this.microsoftAccountClientSecret,
    this.microsoftAccountClientSecretSettingName,
    this.microsoftAccountOAuthScopes,
    required this.name,
    required this.resourceGroupName,
    this.runtimeVersion,
    required this.slot,
    this.tokenRefreshExtensionHours,
    this.tokenStoreEnabled,
    this.twitterConsumerKey,
    this.twitterConsumerSecret,
    this.twitterConsumerSecretSettingName,
    this.unauthenticatedClientAction,
    this.validateIssuer,
  });

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
      'defaultProvider': ?pulumi.Input.mapOptionalInputValue<BuiltInAuthenticationProvider, String>(defaultProvider, (value) => value.wireValue),
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
      'slot': slot,
      'tokenRefreshExtensionHours': ?tokenRefreshExtensionHours,
      'tokenStoreEnabled': ?tokenStoreEnabled,
      'twitterConsumerKey': ?twitterConsumerKey,
      'twitterConsumerSecret': ?twitterConsumerSecret,
      'twitterConsumerSecretSettingName': ?twitterConsumerSecretSettingName,
      'unauthenticatedClientAction': ?pulumi.Input.mapOptionalInputValue<UnauthenticatedClientAction, String>(unauthenticatedClientAction, (value) => value.wireValue),
      'validateIssuer': ?validateIssuer,
    };
  }

  factory WebAppAuthSettingsSlotArgs.fromMap(Map<String, dynamic> map) {
    return WebAppAuthSettingsSlotArgs(
      aadClaimsAuthorization: (() { final guardedValue = map['aadClaimsAuthorization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      additionalLoginParams: (() { final guardedValue = map['additionalLoginParams']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      allowedAudiences: (() { final guardedValue = map['allowedAudiences']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      allowedExternalRedirectUrls: (() { final guardedValue = map['allowedExternalRedirectUrls']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      authFilePath: (() { final guardedValue = map['authFilePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecretCertificateThumbprint: (() { final guardedValue = map['clientSecretCertificateThumbprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecretSettingName: (() { final guardedValue = map['clientSecretSettingName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configVersion: (() { final guardedValue = map['configVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultProvider: (() { final guardedValue = map['defaultProvider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BuiltInAuthenticationProvider.fromValue(guardedValue as String)); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      facebookAppId: (() { final guardedValue = map['facebookAppId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      facebookAppSecret: (() { final guardedValue = map['facebookAppSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      facebookAppSecretSettingName: (() { final guardedValue = map['facebookAppSecretSettingName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      facebookOAuthScopes: (() { final guardedValue = map['facebookOAuthScopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      gitHubClientId: (() { final guardedValue = map['gitHubClientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gitHubClientSecret: (() { final guardedValue = map['gitHubClientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gitHubClientSecretSettingName: (() { final guardedValue = map['gitHubClientSecretSettingName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gitHubOAuthScopes: (() { final guardedValue = map['gitHubOAuthScopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      googleClientId: (() { final guardedValue = map['googleClientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      googleClientSecret: (() { final guardedValue = map['googleClientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      googleClientSecretSettingName: (() { final guardedValue = map['googleClientSecretSettingName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      googleOAuthScopes: (() { final guardedValue = map['googleOAuthScopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      isAuthFromFile: (() { final guardedValue = map['isAuthFromFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      issuer: (() { final guardedValue = map['issuer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      microsoftAccountClientId: (() { final guardedValue = map['microsoftAccountClientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      microsoftAccountClientSecret: (() { final guardedValue = map['microsoftAccountClientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      microsoftAccountClientSecretSettingName: (() { final guardedValue = map['microsoftAccountClientSecretSettingName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      microsoftAccountOAuthScopes: (() { final guardedValue = map['microsoftAccountOAuthScopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      runtimeVersion: (() { final guardedValue = map['runtimeVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      slot: pulumi.Input.fromValue(map['slot'] as String),
      tokenRefreshExtensionHours: (() { final guardedValue = map['tokenRefreshExtensionHours']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      tokenStoreEnabled: (() { final guardedValue = map['tokenStoreEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      twitterConsumerKey: (() { final guardedValue = map['twitterConsumerKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      twitterConsumerSecret: (() { final guardedValue = map['twitterConsumerSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      twitterConsumerSecretSettingName: (() { final guardedValue = map['twitterConsumerSecretSettingName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      unauthenticatedClientAction: (() { final guardedValue = map['unauthenticatedClientAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UnauthenticatedClientAction.fromValue(guardedValue as String)); })(),
      validateIssuer: (() { final guardedValue = map['validateIssuer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

