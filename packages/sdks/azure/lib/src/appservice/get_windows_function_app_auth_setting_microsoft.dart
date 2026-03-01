// ignore_for_file: unused_element, unnecessary_cast


class GetWindowsFunctionAppAuthSettingMicrosoft {
  /// The OAuth 2.0 client ID that was created for the app used for authentication.
  final String clientId;
  /// The OAuth 2.0 client secret that was created for the app used for authentication.
  final String clientSecret;
  /// The app setting name containing the OAuth 2.0 client secret that was created for the app used for authentication.
  final String clientSecretSettingName;
  /// A list of OAuth 2.0 scopes that will be requested as part of Microsoft Account authentication.
  final List<String> oauthScopes;

  /// Creates a new [GetWindowsFunctionAppAuthSettingMicrosoft].
  /// [clientId] The OAuth 2.0 client ID that was created for the app used for authentication.
  /// [clientSecret] The OAuth 2.0 client secret that was created for the app used for authentication.
  /// [clientSecretSettingName] The app setting name containing the OAuth 2.0 client secret that was created for the app used for authentication.
  /// [oauthScopes] A list of OAuth 2.0 scopes that will be requested as part of Microsoft Account authentication.
  GetWindowsFunctionAppAuthSettingMicrosoft({
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

  factory GetWindowsFunctionAppAuthSettingMicrosoft.fromMap(Map<String, dynamic> map) {
    return GetWindowsFunctionAppAuthSettingMicrosoft(
      clientId: map['clientId'] as String,
      clientSecret: map['clientSecret'] as String,
      clientSecretSettingName: map['clientSecretSettingName'] as String,
      oauthScopes: (map['oauthScopes'] as List).cast<String>(),
    );
  }
}

