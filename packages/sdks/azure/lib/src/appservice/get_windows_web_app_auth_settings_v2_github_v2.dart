// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWindowsWebAppAuthSettingsV2GithubV2 {
  /// The OAuth 2.0 client ID used by the app for authentication.
  final pulumi.Input<String> clientId;
  /// The app setting name containing the OAuth 2.0 client secret used by the app for authentication.
  final pulumi.Input<String> clientSecretSettingName;
  /// The list of Login scopes that are requested as part of Microsoft Account authentication.
  final pulumi.Input<List<String>> loginScopes;

  /// Creates a new [GetWindowsWebAppAuthSettingsV2GithubV2].
  /// [clientId] The OAuth 2.0 client ID used by the app for authentication.
  /// [clientSecretSettingName] The app setting name containing the OAuth 2.0 client secret used by the app for authentication.
  /// [loginScopes] The list of Login scopes that are requested as part of Microsoft Account authentication.
  const GetWindowsWebAppAuthSettingsV2GithubV2({
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

  factory GetWindowsWebAppAuthSettingsV2GithubV2.fromMap(Map<String, dynamic> map) {
    return GetWindowsWebAppAuthSettingsV2GithubV2(
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      clientSecretSettingName: pulumi.Input.fromValue(map['clientSecretSettingName'] as String),
      loginScopes: pulumi.Input.fromValue((map['loginScopes'] as List).cast<String>()),
    );
  }
}
