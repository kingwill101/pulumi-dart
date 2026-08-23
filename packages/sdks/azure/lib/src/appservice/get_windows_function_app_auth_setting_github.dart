// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWindowsFunctionAppAuthSettingGithub {
  /// The OAuth 2.0 client ID that was created for the app used for authentication.
  final pulumi.Input<String> clientId;
  /// The OAuth 2.0 client secret that was created for the app used for authentication.
  final pulumi.Input<String> clientSecret;
  /// The app setting name containing the OAuth 2.0 client secret that was created for the app used for authentication.
  final pulumi.Input<String> clientSecretSettingName;
  /// A list of OAuth 2.0 scopes that will be requested as part of Microsoft Account authentication.
  final pulumi.Input<List<String>> oauthScopes;

  /// Creates a new [GetWindowsFunctionAppAuthSettingGithub].
  /// [clientId] The OAuth 2.0 client ID that was created for the app used for authentication.
  /// [clientSecret] The OAuth 2.0 client secret that was created for the app used for authentication.
  /// [clientSecretSettingName] The app setting name containing the OAuth 2.0 client secret that was created for the app used for authentication.
  /// [oauthScopes] A list of OAuth 2.0 scopes that will be requested as part of Microsoft Account authentication.
  const GetWindowsFunctionAppAuthSettingGithub({
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

  factory GetWindowsFunctionAppAuthSettingGithub.fromMap(Map<String, dynamic> map) {
    return GetWindowsFunctionAppAuthSettingGithub(
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      clientSecret: pulumi.Input.fromValue(map['clientSecret'] as String),
      clientSecretSettingName: pulumi.Input.fromValue(map['clientSecretSettingName'] as String),
      oauthScopes: pulumi.Input.fromValue((map['oauthScopes'] as List).cast<String>()),
    );
  }
}
