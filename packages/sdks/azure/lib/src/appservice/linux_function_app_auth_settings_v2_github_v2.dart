// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinuxFunctionAppAuthSettingsV2GithubV2 {
  /// The ID of the GitHub app used for login..
  final pulumi.Input<String> clientId;
  /// The app setting name that contains the `clientSecret` value used for GitHub Login.
  ///
  /// &gt; **Note:** A setting with this name must exist in `appSettings` to function correctly.
  final pulumi.Input<String> clientSecretSettingName;
  /// The list of OAuth 2.0 scopes that should be requested as part of GitHub Login authentication.
  final pulumi.Input<List<String>?>? loginScopes;

  /// Creates a new [LinuxFunctionAppAuthSettingsV2GithubV2].
  /// [clientId] The ID of the GitHub app used for login..
  /// [clientSecretSettingName] The app setting name that contains the `clientSecret` value used for GitHub Login.
  /// [loginScopes] The list of OAuth 2.0 scopes that should be requested as part of GitHub Login authentication.
  const LinuxFunctionAppAuthSettingsV2GithubV2({
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

  factory LinuxFunctionAppAuthSettingsV2GithubV2.fromMap(Map<String, dynamic> map) {
    return LinuxFunctionAppAuthSettingsV2GithubV2(
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      clientSecretSettingName: pulumi.Input.fromValue(map['clientSecretSettingName'] as String),
      loginScopes: (() { final guardedValue = map['loginScopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
