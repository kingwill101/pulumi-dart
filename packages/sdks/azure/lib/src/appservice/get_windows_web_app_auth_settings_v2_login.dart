// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWindowsWebAppAuthSettingsV2Login {
  /// External URLs that can be redirected to as part of logging in or logging out of the app.
  final pulumi.Input<List<String>> allowedExternalRedirectUrls;
  /// The method by which cookies expire.
  final pulumi.Input<String> cookieExpirationConvention;
  /// The time after the request is made when the session cookie should expire.
  final pulumi.Input<String> cookieExpirationTime;
  /// The endpoint to which logout requests are made.
  final pulumi.Input<String> logoutEndpoint;
  /// The time after the request is made when the nonce should expire.
  final pulumi.Input<String> nonceExpirationTime;
  /// Are the fragments from the request preserved after the login request is made.
  final pulumi.Input<bool> preserveUrlFragmentsForLogins;
  /// The number of hours after session token expiration that a session token can be used to call the token refresh API.
  final pulumi.Input<double> tokenRefreshExtensionTime;
  /// Is the Token Store configuration Enabled.
  final pulumi.Input<bool> tokenStoreEnabled;
  /// The directory path in the App Filesystem in which the tokens are stored.
  final pulumi.Input<String> tokenStorePath;
  /// The name of the app setting which contains the SAS URL of the blob storage containing the tokens.
  final pulumi.Input<String> tokenStoreSasSettingName;
  /// Is the nonce validated while completing the login flow.
  final pulumi.Input<bool> validateNonce;

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
      allowedExternalRedirectUrls: ((map['allowedExternalRedirectUrls'] as List).cast<String>()).input(),
      cookieExpirationConvention: (map['cookieExpirationConvention'] as String).input(),
      cookieExpirationTime: (map['cookieExpirationTime'] as String).input(),
      logoutEndpoint: (map['logoutEndpoint'] as String).input(),
      nonceExpirationTime: (map['nonceExpirationTime'] as String).input(),
      preserveUrlFragmentsForLogins: (map['preserveUrlFragmentsForLogins'] as bool).input(),
      tokenRefreshExtensionTime: (map['tokenRefreshExtensionTime'] as double).input(),
      tokenStoreEnabled: (map['tokenStoreEnabled'] as bool).input(),
      tokenStorePath: (map['tokenStorePath'] as String).input(),
      tokenStoreSasSettingName: (map['tokenStoreSasSettingName'] as String).input(),
      validateNonce: (map['validateNonce'] as bool).input(),
    );
  }
}

