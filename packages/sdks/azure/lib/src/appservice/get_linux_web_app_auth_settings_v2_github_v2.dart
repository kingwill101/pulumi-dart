// ignore_for_file: unused_element, unnecessary_cast


class GetLinuxWebAppAuthSettingsV2GithubV2 {
  /// The OAuth 2.0 client ID used by the app for authentication.
  final String clientId;
  /// The app setting name containing the OAuth 2.0 client secret used by the app for authentication.
  final String clientSecretSettingName;
  /// The list of Login scopes that are requested as part of Microsoft Account authentication.
  final List<String> loginScopes;

  /// Creates a new [GetLinuxWebAppAuthSettingsV2GithubV2].
  /// [clientId] The OAuth 2.0 client ID used by the app for authentication.
  /// [clientSecretSettingName] The app setting name containing the OAuth 2.0 client secret used by the app for authentication.
  /// [loginScopes] The list of Login scopes that are requested as part of Microsoft Account authentication.
  GetLinuxWebAppAuthSettingsV2GithubV2({
    required this.clientId,
    required this.clientSecretSettingName,
    required this.loginScopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'clientSecretSettingName': clientSecretSettingName,
      'loginScopes': loginScopes,
    };
  }

  factory GetLinuxWebAppAuthSettingsV2GithubV2.fromMap(Map<String, dynamic> map) {
    return GetLinuxWebAppAuthSettingsV2GithubV2(
      clientId: map['clientId'] as String,
      clientSecretSettingName: map['clientSecretSettingName'] as String,
      loginScopes: (map['loginScopes'] as List).cast<String>(),
    );
  }
}

