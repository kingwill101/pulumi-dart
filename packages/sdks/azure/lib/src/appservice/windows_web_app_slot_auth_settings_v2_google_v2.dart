// ignore_for_file: unused_element, unnecessary_cast


class WindowsWebAppSlotAuthSettingsV2GoogleV2 {
  /// Specifies a list of Allowed Audiences that should be requested as part of Google Sign-In authentication.
  final List<String>? allowedAudiences;
  /// The OpenID Connect Client ID for the Google web application.
  final String clientId;
  /// The app setting name that contains the `client_secret` value used for Google Login.
  ///
  /// !> **Note:** A setting with this name must exist in `app_settings` to function correctly.
  final String clientSecretSettingName;
  /// The list of OAuth 2.0 scopes that should be requested as part of Google Sign-In authentication.
  final List<String>? loginScopes;

  /// Creates a new [WindowsWebAppSlotAuthSettingsV2GoogleV2].
  /// [allowedAudiences] Specifies a list of Allowed Audiences that should be requested as part of Google Sign-In authentication.
  /// [clientId] The OpenID Connect Client ID for the Google web application.
  /// [clientSecretSettingName] The app setting name that contains the `client_secret` value used for Google Login.
  /// [loginScopes] The list of OAuth 2.0 scopes that should be requested as part of Google Sign-In authentication.
  WindowsWebAppSlotAuthSettingsV2GoogleV2({
    this.allowedAudiences,
    required this.clientId,
    required this.clientSecretSettingName,
    this.loginScopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedAudiences': ?allowedAudiences,
      'clientId': clientId,
      'clientSecretSettingName': clientSecretSettingName,
      'loginScopes': ?loginScopes,
    };
  }

  factory WindowsWebAppSlotAuthSettingsV2GoogleV2.fromMap(Map<String, dynamic> map) {
    return WindowsWebAppSlotAuthSettingsV2GoogleV2(
      allowedAudiences: map['allowedAudiences'] == null ? null : (map['allowedAudiences'] as List).cast<String>(),
      clientId: map['clientId'] as String,
      clientSecretSettingName: map['clientSecretSettingName'] as String,
      loginScopes: map['loginScopes'] == null ? null : (map['loginScopes'] as List).cast<String>(),
    );
  }
}

