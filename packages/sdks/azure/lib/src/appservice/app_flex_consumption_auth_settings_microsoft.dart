// ignore_for_file: unused_element, unnecessary_cast


class AppFlexConsumptionAuthSettingsMicrosoft {
  /// The OAuth 2.0 client ID that was created for the app used for authentication.
  final String clientId;
  /// The OAuth 2.0 client secret that was created for the app used for authentication. Cannot be specified with `client_secret_setting_name`.
  final String? clientSecret;
  /// The app setting name containing the OAuth 2.0 client secret that was created for the app used for authentication. Cannot be specified with `client_secret`.
  final String? clientSecretSettingName;
  /// Specifies a list of OAuth 2.0 scopes that will be requested as part of Microsoft Account authentication. If not specified, `wl.basic` is used as the default scope.
  final List<String>? oauthScopes;

  /// Creates a new [AppFlexConsumptionAuthSettingsMicrosoft].
  /// [clientId] The OAuth 2.0 client ID that was created for the app used for authentication.
  /// [clientSecret] The OAuth 2.0 client secret that was created for the app used for authentication. Cannot be specified with `client_secret_setting_name`.
  /// [clientSecretSettingName] The app setting name containing the OAuth 2.0 client secret that was created for the app used for authentication. Cannot be specified with `client_secret`.
  /// [oauthScopes] Specifies a list of OAuth 2.0 scopes that will be requested as part of Microsoft Account authentication. If not specified, `wl.basic` is used as the default scope.
  AppFlexConsumptionAuthSettingsMicrosoft({
    required this.clientId,
    this.clientSecret,
    this.clientSecretSettingName,
    this.oauthScopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'clientSecret': ?clientSecret,
      'clientSecretSettingName': ?clientSecretSettingName,
      'oauthScopes': ?oauthScopes,
    };
  }

  factory AppFlexConsumptionAuthSettingsMicrosoft.fromMap(Map<String, dynamic> map) {
    return AppFlexConsumptionAuthSettingsMicrosoft(
      clientId: map['clientId'] as String,
      clientSecret: map['clientSecret'] == null ? null : map['clientSecret'] as String,
      clientSecretSettingName: map['clientSecretSettingName'] == null ? null : map['clientSecretSettingName'] as String,
      oauthScopes: map['oauthScopes'] == null ? null : (map['oauthScopes'] as List).cast<String>(),
    );
  }
}

