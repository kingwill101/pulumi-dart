// ignore_for_file: unused_element, unnecessary_cast


class WindowsWebAppAuthSettingsV2Login {
  /// External URLs that can be redirected to as part of logging in or logging out of the app. This is an advanced setting typically only needed by Windows Store application backends.
  ///
  /// > **Note:** URLs within the current domain are always implicitly allowed.
  final List<String>? allowedExternalRedirectUrls;
  /// The method by which cookies expire. Possible values include: `FixedTime`, and `IdentityProviderDerived`. Defaults to `FixedTime`.
  final String? cookieExpirationConvention;
  /// The time after the request is made when the session cookie should expire. Defaults to `08:00:00`.
  final String? cookieExpirationTime;
  /// The endpoint to which logout requests should be made.
  final String? logoutEndpoint;
  /// The time after the request is made when the nonce should expire. Defaults to `00:05:00`.
  final String? nonceExpirationTime;
  /// Should the fragments from the request be preserved after the login request is made. Defaults to `false`.
  final bool? preserveUrlFragmentsForLogins;
  /// The number of hours after session token expiration that a session token can be used to call the token refresh API. Defaults to `72` hours.
  final double? tokenRefreshExtensionTime;
  /// Should the Token Store configuration Enabled. Defaults to `false`
  final bool? tokenStoreEnabled;
  /// The directory path in the App Filesystem in which the tokens will be stored.
  final String? tokenStorePath;
  /// The name of the app setting which contains the SAS URL of the blob storage containing the tokens.
  final String? tokenStoreSasSettingName;
  /// Should the nonce be validated while completing the login flow. Defaults to `true`.
  final bool? validateNonce;

  /// Creates a new [WindowsWebAppAuthSettingsV2Login].
  /// [allowedExternalRedirectUrls] External URLs that can be redirected to as part of logging in or logging out of the app. This is an advanced setting typically only needed by Windows Store application backends.
  /// [cookieExpirationConvention] The method by which cookies expire. Possible values include: `FixedTime`, and `IdentityProviderDerived`. Defaults to `FixedTime`.
  /// [cookieExpirationTime] The time after the request is made when the session cookie should expire. Defaults to `08:00:00`.
  /// [logoutEndpoint] The endpoint to which logout requests should be made.
  /// [nonceExpirationTime] The time after the request is made when the nonce should expire. Defaults to `00:05:00`.
  /// [preserveUrlFragmentsForLogins] Should the fragments from the request be preserved after the login request is made. Defaults to `false`.
  /// [tokenRefreshExtensionTime] The number of hours after session token expiration that a session token can be used to call the token refresh API. Defaults to `72` hours.
  /// [tokenStoreEnabled] Should the Token Store configuration Enabled. Defaults to `false`
  /// [tokenStorePath] The directory path in the App Filesystem in which the tokens will be stored.
  /// [tokenStoreSasSettingName] The name of the app setting which contains the SAS URL of the blob storage containing the tokens.
  /// [validateNonce] Should the nonce be validated while completing the login flow. Defaults to `true`.
  WindowsWebAppAuthSettingsV2Login({
    this.allowedExternalRedirectUrls,
    this.cookieExpirationConvention,
    this.cookieExpirationTime,
    this.logoutEndpoint,
    this.nonceExpirationTime,
    this.preserveUrlFragmentsForLogins,
    this.tokenRefreshExtensionTime,
    this.tokenStoreEnabled,
    this.tokenStorePath,
    this.tokenStoreSasSettingName,
    this.validateNonce,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedExternalRedirectUrls': ?allowedExternalRedirectUrls,
      'cookieExpirationConvention': ?cookieExpirationConvention,
      'cookieExpirationTime': ?cookieExpirationTime,
      'logoutEndpoint': ?logoutEndpoint,
      'nonceExpirationTime': ?nonceExpirationTime,
      'preserveUrlFragmentsForLogins': ?preserveUrlFragmentsForLogins,
      'tokenRefreshExtensionTime': ?tokenRefreshExtensionTime,
      'tokenStoreEnabled': ?tokenStoreEnabled,
      'tokenStorePath': ?tokenStorePath,
      'tokenStoreSasSettingName': ?tokenStoreSasSettingName,
      'validateNonce': ?validateNonce,
    };
  }

  factory WindowsWebAppAuthSettingsV2Login.fromMap(Map<String, dynamic> map) {
    return WindowsWebAppAuthSettingsV2Login(
      allowedExternalRedirectUrls: map['allowedExternalRedirectUrls'] == null ? null : (map['allowedExternalRedirectUrls'] as List).cast<String>(),
      cookieExpirationConvention: map['cookieExpirationConvention'] == null ? null : map['cookieExpirationConvention'] as String,
      cookieExpirationTime: map['cookieExpirationTime'] == null ? null : map['cookieExpirationTime'] as String,
      logoutEndpoint: map['logoutEndpoint'] == null ? null : map['logoutEndpoint'] as String,
      nonceExpirationTime: map['nonceExpirationTime'] == null ? null : map['nonceExpirationTime'] as String,
      preserveUrlFragmentsForLogins: map['preserveUrlFragmentsForLogins'] == null ? null : map['preserveUrlFragmentsForLogins'] as bool,
      tokenRefreshExtensionTime: map['tokenRefreshExtensionTime'] == null ? null : map['tokenRefreshExtensionTime'] as double,
      tokenStoreEnabled: map['tokenStoreEnabled'] == null ? null : map['tokenStoreEnabled'] as bool,
      tokenStorePath: map['tokenStorePath'] == null ? null : map['tokenStorePath'] as String,
      tokenStoreSasSettingName: map['tokenStoreSasSettingName'] == null ? null : map['tokenStoreSasSettingName'] as String,
      validateNonce: map['validateNonce'] == null ? null : map['validateNonce'] as bool,
    );
  }
}

