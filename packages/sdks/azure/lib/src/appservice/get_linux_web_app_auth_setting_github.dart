// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLinuxWebAppAuthSettingGithub {
  /// The OAuth 2.0 client ID used by the app for authentication.
  final pulumi.Input<String> clientId;
  /// The OAuth 2.0 client secret used by the app for authentication.
  final pulumi.Input<String> clientSecret;
  /// The app setting name containing the OAuth 2.0 client secret used by the app for authentication.
  final pulumi.Input<String> clientSecretSettingName;
  /// A list of OAuth 2.0 scopes requested as part of Microsoft Account authentication.
  final pulumi.Input<List<String>> oauthScopes;

  /// Creates a new [GetLinuxWebAppAuthSettingGithub].
  /// [clientId] The OAuth 2.0 client ID used by the app for authentication.
  /// [clientSecret] The OAuth 2.0 client secret used by the app for authentication.
  /// [clientSecretSettingName] The app setting name containing the OAuth 2.0 client secret used by the app for authentication.
  /// [oauthScopes] A list of OAuth 2.0 scopes requested as part of Microsoft Account authentication.
  GetLinuxWebAppAuthSettingGithub({
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

  factory GetLinuxWebAppAuthSettingGithub.fromMap(Map<String, dynamic> map) {
    return GetLinuxWebAppAuthSettingGithub(
      clientId: (map['clientId'] as String).input(),
      clientSecret: (map['clientSecret'] as String).input(),
      clientSecretSettingName: (map['clientSecretSettingName'] as String).input(),
      oauthScopes: ((map['oauthScopes'] as List).cast<String>()).input(),
    );
  }
}

