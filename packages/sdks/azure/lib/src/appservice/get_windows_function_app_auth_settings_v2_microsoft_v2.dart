// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWindowsFunctionAppAuthSettingsV2MicrosoftV2 {
  /// The list of Allowed Audiences that are be requested as part of Microsoft Sign-In authentication.
  final pulumi.Input<List<String>> allowedAudiences;

  /// The OAuth 2.0 client ID that was created for the app used for authentication.
  final pulumi.Input<String> clientId;

  /// The app setting name containing the OAuth 2.0 client secret that was created for the app used for authentication.
  final pulumi.Input<String> clientSecretSettingName;

  /// The list of Login scopes that are requested as part of Microsoft Account authentication.
  final pulumi.Input<List<String>> loginScopes;

  /// Creates a new [GetWindowsFunctionAppAuthSettingsV2MicrosoftV2].
  /// [allowedAudiences] The list of Allowed Audiences that are be requested as part of Microsoft Sign-In authentication.
  /// [clientId] The OAuth 2.0 client ID that was created for the app used for authentication.
  /// [clientSecretSettingName] The app setting name containing the OAuth 2.0 client secret that was created for the app used for authentication.
  /// [loginScopes] The list of Login scopes that are requested as part of Microsoft Account authentication.
  GetWindowsFunctionAppAuthSettingsV2MicrosoftV2({
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

  factory GetWindowsFunctionAppAuthSettingsV2MicrosoftV2.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetWindowsFunctionAppAuthSettingsV2MicrosoftV2(
      allowedAudiences: pulumi.Input.fromValue(
        (map['allowedAudiences'] as List).cast<String>(),
      ),
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      clientSecretSettingName: pulumi.Input.fromValue(
        map['clientSecretSettingName'] as String,
      ),
      loginScopes: pulumi.Input.fromValue(
        (map['loginScopes'] as List).cast<String>(),
      ),
    );
  }
}
