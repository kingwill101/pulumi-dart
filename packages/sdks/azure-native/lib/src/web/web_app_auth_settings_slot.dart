import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_app_auth_settings_slot_args.dart';

/// Configuration settings for the Azure App Service Authentication / Authorization feature.
///
/// Uses Azure REST API version 2024-04-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:web:WebAppAuthSettingsSlot myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/sites/{name}/slots/{slot}/config/authsettings
/// ```
class WebAppAuthSettingsSlot extends pulumi.CustomResource {
  /// Gets a JSON string containing the Azure AD Acl settings.
  late final pulumi.Output<String?> aadClaimsAuthorization;

  /// Login parameters to send to the OpenID Connect authorization endpoint when
  /// a user logs in. Each parameter must be in the form "key=value".
  late final pulumi.Output<List<String>?> additionalLoginParams;

  /// Allowed audience values to consider when validating JSON Web Tokens issued by
  /// Azure Active Directory. Note that the &lt;code&gt;ClientID&lt;/code&gt; value is always considered an
  /// allowed audience, regardless of this setting.
  late final pulumi.Output<List<String>?> allowedAudiences;

  /// External URLs that can be redirected to as part of logging in or logging out of the app. Note that the query string part of the URL is ignored.
  /// This is an advanced setting typically only needed by Windows Store application backends.
  /// Note that URLs within the current domain are always implicitly allowed.
  late final pulumi.Output<List<String>?> allowedExternalRedirectUrls;

  /// The path of the config file containing auth settings.
  /// If the path is relative, base will the site's root directory.
  late final pulumi.Output<String?> authFilePath;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The Client ID of this relying party application, known as the client_id.
  /// This setting is required for enabling OpenID Connection authentication with Azure Active Directory or
  /// other 3rd party OpenID Connect providers.
  /// More information on OpenID Connect: http://openid.net/specs/openid-connect-core-1_0.html
  late final pulumi.Output<String?> clientId;

  /// The Client Secret of this relying party application (in Azure Active Directory, this is also referred to as the Key).
  /// This setting is optional. If no client secret is configured, the OpenID Connect implicit auth flow is used to authenticate end users.
  /// Otherwise, the OpenID Connect Authorization Code Flow is used to authenticate end users.
  /// More information on OpenID Connect: http://openid.net/specs/openid-connect-core-1_0.html
  late final pulumi.Output<String?> clientSecret;

  /// An alternative to the client secret, that is the thumbprint of a certificate used for signing purposes. This property acts as
  /// a replacement for the Client Secret. It is also optional.
  late final pulumi.Output<String?> clientSecretCertificateThumbprint;

  /// The app setting name that contains the client secret of the relying party application.
  late final pulumi.Output<String?> clientSecretSettingName;

  /// The ConfigVersion of the Authentication / Authorization feature in use for the current app.
  /// The setting in this value can control the behavior of the control plane for Authentication / Authorization.
  late final pulumi.Output<String?> configVersion;

  /// The default authentication provider to use when multiple providers are configured.
  /// This setting is only needed if multiple providers are configured and the unauthenticated client
  /// action is set to "RedirectToLoginPage".
  late final pulumi.Output<String?> defaultProvider;

  /// &lt;code&gt;true&lt;/code&gt; if the Authentication / Authorization feature is enabled for the current app; otherwise, &lt;code&gt;false&lt;/code&gt;.
  late final pulumi.Output<bool?> enabled;

  /// The App ID of the Facebook app used for login.
  /// This setting is required for enabling Facebook Login.
  /// Facebook Login documentation: https://developers.facebook.com/docs/facebook-login
  late final pulumi.Output<String?> facebookAppId;

  /// The App Secret of the Facebook app used for Facebook Login.
  /// This setting is required for enabling Facebook Login.
  /// Facebook Login documentation: https://developers.facebook.com/docs/facebook-login
  late final pulumi.Output<String?> facebookAppSecret;

  /// The app setting name that contains the app secret used for Facebook Login.
  late final pulumi.Output<String?> facebookAppSecretSettingName;

  /// The OAuth 2.0 scopes that will be requested as part of Facebook Login authentication.
  /// This setting is optional.
  /// Facebook Login documentation: https://developers.facebook.com/docs/facebook-login
  late final pulumi.Output<List<String>?> facebookOAuthScopes;

  /// The Client Id of the GitHub app used for login.
  /// This setting is required for enabling Github login
  late final pulumi.Output<String?> gitHubClientId;

  /// The Client Secret of the GitHub app used for Github Login.
  /// This setting is required for enabling Github login.
  late final pulumi.Output<String?> gitHubClientSecret;

  /// The app setting name that contains the client secret of the Github
  /// app used for GitHub Login.
  late final pulumi.Output<String?> gitHubClientSecretSettingName;

  /// The OAuth 2.0 scopes that will be requested as part of GitHub Login authentication.
  /// This setting is optional
  late final pulumi.Output<List<String>?> gitHubOAuthScopes;

  /// The OpenID Connect Client ID for the Google web application.
  /// This setting is required for enabling Google Sign-In.
  /// Google Sign-In documentation: https://developers.google.com/identity/sign-in/web/
  late final pulumi.Output<String?> googleClientId;

  /// The client secret associated with the Google web application.
  /// This setting is required for enabling Google Sign-In.
  /// Google Sign-In documentation: https://developers.google.com/identity/sign-in/web/
  late final pulumi.Output<String?> googleClientSecret;

  /// The app setting name that contains the client secret associated with
  /// the Google web application.
  late final pulumi.Output<String?> googleClientSecretSettingName;

  /// The OAuth 2.0 scopes that will be requested as part of Google Sign-In authentication.
  /// This setting is optional. If not specified, "openid", "profile", and "email" are used as default scopes.
  /// Google Sign-In documentation: https://developers.google.com/identity/sign-in/web/
  late final pulumi.Output<List<String>?> googleOAuthScopes;

  /// "true" if the auth config settings should be read from a file,
  /// "false" otherwise
  late final pulumi.Output<String?> isAuthFromFile;

  /// The OpenID Connect Issuer URI that represents the entity which issues access tokens for this application.
  /// When using Azure Active Directory, this value is the URI of the directory tenant, e.g. `https://sts.windows.net/{tenant-guid}/`.
  /// This URI is a case-sensitive identifier for the token issuer.
  /// More information on OpenID Connect Discovery: http://openid.net/specs/openid-connect-discovery-1_0.html
  late final pulumi.Output<String?> issuer;

  /// Kind of resource.
  late final pulumi.Output<String?> kind;

  /// The OAuth 2.0 client ID that was created for the app used for authentication.
  /// This setting is required for enabling Microsoft Account authentication.
  /// Microsoft Account OAuth documentation: https://dev.onedrive.com/auth/msa_oauth.htm
  late final pulumi.Output<String?> microsoftAccountClientId;

  /// The OAuth 2.0 client secret that was created for the app used for authentication.
  /// This setting is required for enabling Microsoft Account authentication.
  /// Microsoft Account OAuth documentation: https://dev.onedrive.com/auth/msa_oauth.htm
  late final pulumi.Output<String?> microsoftAccountClientSecret;

  /// The app setting name containing the OAuth 2.0 client secret that was created for the
  /// app used for authentication.
  late final pulumi.Output<String?> microsoftAccountClientSecretSettingName;

  /// The OAuth 2.0 scopes that will be requested as part of Microsoft Account authentication.
  /// This setting is optional. If not specified, "wl.basic" is used as the default scope.
  /// Microsoft Account Scopes and permissions documentation: https://msdn.microsoft.com/en-us/library/dn631845.aspx
  late final pulumi.Output<List<String>?> microsoftAccountOAuthScopes;

  /// Resource Name.
  late final pulumi.Output<String> name;

  /// The RuntimeVersion of the Authentication / Authorization feature in use for the current app.
  /// The setting in this value can control the behavior of certain features in the Authentication / Authorization module.
  late final pulumi.Output<String?> runtimeVersion;

  /// The number of hours after session token expiration that a session token can be used to
  /// call the token refresh API. The default is 72 hours.
  late final pulumi.Output<double?> tokenRefreshExtensionHours;

  /// &lt;code&gt;true&lt;/code&gt; to durably store platform-specific security tokens that are obtained during login flows; otherwise, &lt;code&gt;false&lt;/code&gt;.
  /// The default is &lt;code&gt;false&lt;/code&gt;.
  late final pulumi.Output<bool?> tokenStoreEnabled;

  /// The OAuth 1.0a consumer key of the Twitter application used for sign-in.
  /// This setting is required for enabling Twitter Sign-In.
  /// Twitter Sign-In documentation: https://dev.twitter.com/web/sign-in
  late final pulumi.Output<String?> twitterConsumerKey;

  /// The OAuth 1.0a consumer secret of the Twitter application used for sign-in.
  /// This setting is required for enabling Twitter Sign-In.
  /// Twitter Sign-In documentation: https://dev.twitter.com/web/sign-in
  late final pulumi.Output<String?> twitterConsumerSecret;

  /// The app setting name that contains the OAuth 1.0a consumer secret of the Twitter
  /// application used for sign-in.
  late final pulumi.Output<String?> twitterConsumerSecretSettingName;

  /// Resource type.
  late final pulumi.Output<String> type;

  /// The action to take when an unauthenticated client attempts to access the app.
  late final pulumi.Output<String?> unauthenticatedClientAction;

  /// Gets a value indicating whether the issuer should be a valid HTTPS url and be validated as such.
  late final pulumi.Output<bool?> validateIssuer;

  /// Creates a new [WebAppAuthSettingsSlot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebAppAuthSettingsSlot]. {@macro pulumi_web_web_app_auth_settings_slot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebAppAuthSettingsSlot(
    String name, {
    WebAppAuthSettingsSlotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:web:WebAppAuthSettingsSlot',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    aadClaimsAuthorization = registerOutput<String?>('aadClaimsAuthorization');
    additionalLoginParams = registerOutput<List<String>?>(
      'additionalLoginParams',
    );
    allowedAudiences = registerOutput<List<String>?>('allowedAudiences');
    allowedExternalRedirectUrls = registerOutput<List<String>?>(
      'allowedExternalRedirectUrls',
    );
    authFilePath = registerOutput<String?>('authFilePath');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    clientId = registerOutput<String?>('clientId');
    clientSecret = registerOutput<String?>('clientSecret');
    clientSecretCertificateThumbprint = registerOutput<String?>(
      'clientSecretCertificateThumbprint',
    );
    clientSecretSettingName = registerOutput<String?>(
      'clientSecretSettingName',
    );
    configVersion = registerOutput<String?>('configVersion');
    defaultProvider = registerOutput<String?>('defaultProvider');
    enabled = registerOutput<bool?>('enabled');
    facebookAppId = registerOutput<String?>('facebookAppId');
    facebookAppSecret = registerOutput<String?>('facebookAppSecret');
    facebookAppSecretSettingName = registerOutput<String?>(
      'facebookAppSecretSettingName',
    );
    facebookOAuthScopes = registerOutput<List<String>?>('facebookOAuthScopes');
    gitHubClientId = registerOutput<String?>('gitHubClientId');
    gitHubClientSecret = registerOutput<String?>('gitHubClientSecret');
    gitHubClientSecretSettingName = registerOutput<String?>(
      'gitHubClientSecretSettingName',
    );
    gitHubOAuthScopes = registerOutput<List<String>?>('gitHubOAuthScopes');
    googleClientId = registerOutput<String?>('googleClientId');
    googleClientSecret = registerOutput<String?>('googleClientSecret');
    googleClientSecretSettingName = registerOutput<String?>(
      'googleClientSecretSettingName',
    );
    googleOAuthScopes = registerOutput<List<String>?>('googleOAuthScopes');
    isAuthFromFile = registerOutput<String?>('isAuthFromFile');
    issuer = registerOutput<String?>('issuer');
    kind = registerOutput<String?>('kind');
    microsoftAccountClientId = registerOutput<String?>(
      'microsoftAccountClientId',
    );
    microsoftAccountClientSecret = registerOutput<String?>(
      'microsoftAccountClientSecret',
    );
    microsoftAccountClientSecretSettingName = registerOutput<String?>(
      'microsoftAccountClientSecretSettingName',
    );
    microsoftAccountOAuthScopes = registerOutput<List<String>?>(
      'microsoftAccountOAuthScopes',
    );
    this.name = registerOutput<String>('name');
    runtimeVersion = registerOutput<String?>('runtimeVersion');
    tokenRefreshExtensionHours = registerOutput<double?>(
      'tokenRefreshExtensionHours',
    );
    tokenStoreEnabled = registerOutput<bool?>('tokenStoreEnabled');
    twitterConsumerKey = registerOutput<String?>('twitterConsumerKey');
    twitterConsumerSecret = registerOutput<String?>('twitterConsumerSecret');
    twitterConsumerSecretSettingName = registerOutput<String?>(
      'twitterConsumerSecretSettingName',
    );
    type = registerOutput<String>('type');
    unauthenticatedClientAction = registerOutput<String?>(
      'unauthenticatedClientAction',
    );
    validateIssuer = registerOutput<bool?>('validateIssuer');
  }
}
