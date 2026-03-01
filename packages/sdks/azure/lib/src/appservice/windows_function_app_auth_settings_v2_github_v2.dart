// ignore_for_file: unused_element, unnecessary_cast


class WindowsFunctionAppAuthSettingsV2GithubV2 {
  /// The ID of the GitHub app used for login.
  final String clientId;
  /// The app setting name that contains the `client_secret` value used for GitHub Login.
  ///
  /// !> **Note:** A setting with this name must exist in `app_settings` to function correctly.
  final String clientSecretSettingName;
  /// The list of OAuth 2.0 scopes that should be requested as part of GitHub Login authentication.
  final List<String>? loginScopes;

  /// Creates a new [WindowsFunctionAppAuthSettingsV2GithubV2].
  /// [clientId] The ID of the GitHub app used for login.
  /// [clientSecretSettingName] The app setting name that contains the `client_secret` value used for GitHub Login.
  /// [loginScopes] The list of OAuth 2.0 scopes that should be requested as part of GitHub Login authentication.
  WindowsFunctionAppAuthSettingsV2GithubV2({
    required this.clientId,
    required this.clientSecretSettingName,
    this.loginScopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'clientSecretSettingName': clientSecretSettingName,
      'loginScopes': ?loginScopes,
    };
  }

  factory WindowsFunctionAppAuthSettingsV2GithubV2.fromMap(Map<String, dynamic> map) {
    return WindowsFunctionAppAuthSettingsV2GithubV2(
      clientId: map['clientId'] as String,
      clientSecretSettingName: map['clientSecretSettingName'] as String,
      loginScopes: map['loginScopes'] == null ? null : (map['loginScopes'] as List).cast<String>(),
    );
  }
}

