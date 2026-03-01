// ignore_for_file: unused_element, unnecessary_cast


class GetWindowsWebAppAuthSettingsV2Login {
  /// External URLs that can be redirected to as part of logging in or logging out of the app.
  final List<String> allowedExternalRedirectUrls;
  /// The method by which cookies expire.
  final String cookieExpirationConvention;
  /// The time after the request is made when the session cookie should expire.
  final String cookieExpirationTime;
  /// The endpoint to which logout requests are made.
  final String logoutEndpoint;
  /// The time after the request is made when the nonce should expire.
  final String nonceExpirationTime;
  /// Are the fragments from the request preserved after the login request is made.
  final bool preserveUrlFragmentsForLogins;
  /// The number of hours after session token expiration that a session token can be used to call the token refresh API.
  final double tokenRefreshExtensionTime;
  /// Is the Token Store configuration Enabled.
  final bool tokenStoreEnabled;
  /// The directory path in the App Filesystem in which the tokens are stored.
  final String tokenStorePath;
  /// The name of the app setting which contains the SAS URL of the blob storage containing the tokens.
  final String tokenStoreSasSettingName;
  /// Is the nonce validated while completing the login flow.
  final bool validateNonce;

  /// Creates a new [GetWindowsWebAppAuthSettingsV2Login].
  /// [allowedExternalRedirectUrls] External URLs that can be redirected to as part of logging in or logging out of the app.
  /// [cookieExpirationConvention] The method by which cookies expire.
  /// [cookieExpirationTime] The time after the request is made when the session cookie should expire.
  /// [logoutEndpoint] The endpoint to which logout requests are made.
  /// [nonceExpirationTime] The time after the request is made when the nonce should expire.
  /// [preserveUrlFragmentsForLogins] Are the fragments from the request preserved after the login request is made.
  /// [tokenRefreshExtensionTime] The number of hours after session token expiration that a session token can be used to call the token refresh API.
  /// [tokenStoreEnabled] Is the Token Store configuration Enabled.
  /// [tokenStorePath] The directory path in the App Filesystem in which the tokens are stored.
  /// [tokenStoreSasSettingName] The name of the app setting which contains the SAS URL of the blob storage containing the tokens.
  /// [validateNonce] Is the nonce validated while completing the login flow.
  GetWindowsWebAppAuthSettingsV2Login({
    required this.allowedExternalRedirectUrls,
    required this.cookieExpirationConvention,
    required this.cookieExpirationTime,
    required this.logoutEndpoint,
    required this.nonceExpirationTime,
    required this.preserveUrlFragmentsForLogins,
    required this.tokenRefreshExtensionTime,
    required this.tokenStoreEnabled,
    required this.tokenStorePath,
    required this.tokenStoreSasSettingName,
    required this.validateNonce,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedExternalRedirectUrls': allowedExternalRedirectUrls,
      'cookieExpirationConvention': cookieExpirationConvention,
      'cookieExpirationTime': cookieExpirationTime,
      'logoutEndpoint': logoutEndpoint,
      'nonceExpirationTime': nonceExpirationTime,
      'preserveUrlFragmentsForLogins': preserveUrlFragmentsForLogins,
      'tokenRefreshExtensionTime': tokenRefreshExtensionTime,
      'tokenStoreEnabled': tokenStoreEnabled,
      'tokenStorePath': tokenStorePath,
      'tokenStoreSasSettingName': tokenStoreSasSettingName,
      'validateNonce': validateNonce,
    };
  }

  factory GetWindowsWebAppAuthSettingsV2Login.fromMap(Map<String, dynamic> map) {
    return GetWindowsWebAppAuthSettingsV2Login(
      allowedExternalRedirectUrls: (map['allowedExternalRedirectUrls'] as List).cast<String>(),
      cookieExpirationConvention: map['cookieExpirationConvention'] as String,
      cookieExpirationTime: map['cookieExpirationTime'] as String,
      logoutEndpoint: map['logoutEndpoint'] as String,
      nonceExpirationTime: map['nonceExpirationTime'] as String,
      preserveUrlFragmentsForLogins: map['preserveUrlFragmentsForLogins'] as bool,
      tokenRefreshExtensionTime: map['tokenRefreshExtensionTime'] as double,
      tokenStoreEnabled: map['tokenStoreEnabled'] as bool,
      tokenStorePath: map['tokenStorePath'] as String,
      tokenStoreSasSettingName: map['tokenStoreSasSettingName'] as String,
      validateNonce: map['validateNonce'] as bool,
    );
  }
}

