// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinuxFunctionAppAuthSettingsV2Login {
  /// External URLs that can be redirected to as part of logging in or logging out of the app. This is an advanced setting typically only needed by Windows Store application backends.
  ///
  /// &gt; **Note:** URLs within the current domain are always implicitly allowed.
  final pulumi.Input<List<String>>? allowedExternalRedirectUrls;
  /// The method by which cookies expire. Possible values include: `FixedTime`, and `IdentityProviderDerived`. Defaults to `FixedTime`.
  final pulumi.Input<String>? cookieExpirationConvention;
  /// The time after the request is made when the session cookie should expire. Defaults to `08:00:00`.
  final pulumi.Input<String>? cookieExpirationTime;
  /// The endpoint to which logout requests should be made.
  final pulumi.Input<String>? logoutEndpoint;
  /// The time after the request is made when the nonce should expire. Defaults to `00:05:00`.
  final pulumi.Input<String>? nonceExpirationTime;
  /// Should the fragments from the request be preserved after the login request is made. Defaults to `false`.
  final pulumi.Input<bool>? preserveUrlFragmentsForLogins;
  /// The number of hours after session token expiration that a session token can be used to call the token refresh API. Defaults to `72` hours.
  final pulumi.Input<double>? tokenRefreshExtensionTime;
  /// Should the Token Store configuration Enabled. Defaults to `false`
  final pulumi.Input<bool>? tokenStoreEnabled;
  /// The directory path in the App Filesystem in which the tokens will be stored.
  final pulumi.Input<String>? tokenStorePath;
  /// The name of the app setting which contains the SAS URL of the blob storage containing the tokens.
  final pulumi.Input<String>? tokenStoreSasSettingName;
  /// Should the nonce be validated while completing the login flow. Defaults to `true`.
  final pulumi.Input<bool>? validateNonce;

  /// Creates a new [LinuxFunctionAppAuthSettingsV2Login].
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
  const LinuxFunctionAppAuthSettingsV2Login({
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

  factory LinuxFunctionAppAuthSettingsV2Login.fromMap(Map<String, dynamic> map) {
    return LinuxFunctionAppAuthSettingsV2Login(
      allowedExternalRedirectUrls: (() { final guardedValue = map['allowedExternalRedirectUrls']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      cookieExpirationConvention: (() { final guardedValue = map['cookieExpirationConvention']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cookieExpirationTime: (() { final guardedValue = map['cookieExpirationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logoutEndpoint: (() { final guardedValue = map['logoutEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nonceExpirationTime: (() { final guardedValue = map['nonceExpirationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preserveUrlFragmentsForLogins: (() { final guardedValue = map['preserveUrlFragmentsForLogins']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tokenRefreshExtensionTime: (() { final guardedValue = map['tokenRefreshExtensionTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      tokenStoreEnabled: (() { final guardedValue = map['tokenStoreEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tokenStorePath: (() { final guardedValue = map['tokenStorePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tokenStoreSasSettingName: (() { final guardedValue = map['tokenStoreSasSettingName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validateNonce: (() { final guardedValue = map['validateNonce']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
