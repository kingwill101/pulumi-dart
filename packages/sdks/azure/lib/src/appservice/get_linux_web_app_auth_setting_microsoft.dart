// ignore_for_file: unused_element, unnecessary_cast


class GetLinuxWebAppAuthSettingMicrosoft {
  /// The OAuth 2.0 client ID used by the app for authentication.
  final String clientId;
  /// The OAuth 2.0 client secret used by the app for authentication.
  final String clientSecret;
  /// The app setting name containing the OAuth 2.0 client secret used by the app for authentication.
  final String clientSecretSettingName;
  /// A list of OAuth 2.0 scopes requested as part of Microsoft Account authentication.
  final List<String> oauthScopes;

  /// Creates a new [GetLinuxWebAppAuthSettingMicrosoft].
  /// [clientId] The OAuth 2.0 client ID used by the app for authentication.
  /// [clientSecret] The OAuth 2.0 client secret used by the app for authentication.
  /// [clientSecretSettingName] The app setting name containing the OAuth 2.0 client secret used by the app for authentication.
  /// [oauthScopes] A list of OAuth 2.0 scopes requested as part of Microsoft Account authentication.
  GetLinuxWebAppAuthSettingMicrosoft({
    required this.clientId,
    required this.clientSecret,
    required this.clientSecretSettingName,
    required this.oauthScopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'clientSecret': clientSecret,
      'clientSecretSettingName': clientSecretSettingName,
      'oauthScopes': oauthScopes,
    };
  }

  factory GetLinuxWebAppAuthSettingMicrosoft.fromMap(Map<String, dynamic> map) {
    return GetLinuxWebAppAuthSettingMicrosoft(
      clientId: map['clientId'] as String,
      clientSecret: map['clientSecret'] as String,
      clientSecretSettingName: map['clientSecretSettingName'] as String,
      oauthScopes: (map['oauthScopes'] as List).cast<String>(),
    );
  }
}

