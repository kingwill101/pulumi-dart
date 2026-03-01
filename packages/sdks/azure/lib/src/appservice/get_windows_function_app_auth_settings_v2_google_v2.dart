// ignore_for_file: unused_element, unnecessary_cast


class GetWindowsFunctionAppAuthSettingsV2GoogleV2 {
  /// The list of Allowed Audiences that are be requested as part of Microsoft Sign-In authentication.
  final List<String> allowedAudiences;
  /// The OAuth 2.0 client ID that was created for the app used for authentication.
  final String clientId;
  /// The app setting name containing the OAuth 2.0 client secret that was created for the app used for authentication.
  final String clientSecretSettingName;
  /// The list of Login scopes that are requested as part of Microsoft Account authentication.
  final List<String> loginScopes;

  /// Creates a new [GetWindowsFunctionAppAuthSettingsV2GoogleV2].
  /// [allowedAudiences] The list of Allowed Audiences that are be requested as part of Microsoft Sign-In authentication.
  /// [clientId] The OAuth 2.0 client ID that was created for the app used for authentication.
  /// [clientSecretSettingName] The app setting name containing the OAuth 2.0 client secret that was created for the app used for authentication.
  /// [loginScopes] The list of Login scopes that are requested as part of Microsoft Account authentication.
  GetWindowsFunctionAppAuthSettingsV2GoogleV2({
    required this.allowedAudiences,
    required this.clientId,
    required this.clientSecretSettingName,
    required this.loginScopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedAudiences': allowedAudiences,
      'clientId': clientId,
      'clientSecretSettingName': clientSecretSettingName,
      'loginScopes': loginScopes,
    };
  }

  factory GetWindowsFunctionAppAuthSettingsV2GoogleV2.fromMap(Map<String, dynamic> map) {
    return GetWindowsFunctionAppAuthSettingsV2GoogleV2(
      allowedAudiences: (map['allowedAudiences'] as List).cast<String>(),
      clientId: map['clientId'] as String,
      clientSecretSettingName: map['clientSecretSettingName'] as String,
      loginScopes: (map['loginScopes'] as List).cast<String>(),
    );
  }
}

