// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinuxWebAppSlotAuthSettingsGithub {
  /// The ID of the GitHub app used for login.
  final pulumi.Input<String> clientId;
  /// The Client Secret of the GitHub app used for GitHub login. Cannot be specified with `clientSecretSettingName`.
  final pulumi.Input<String>? clientSecret;
  /// The app setting name that contains the `clientSecret` value used for GitHub login. Cannot be specified with `clientSecret`.
  final pulumi.Input<String>? clientSecretSettingName;
  /// Specifies a list of OAuth 2.0 scopes that will be requested as part of GitHub login authentication.
  final pulumi.Input<List<String>>? oauthScopes;

  /// Creates a new [LinuxWebAppSlotAuthSettingsGithub].
  /// [clientId] The ID of the GitHub app used for login.
  /// [clientSecret] The Client Secret of the GitHub app used for GitHub login. Cannot be specified with `clientSecretSettingName`.
  /// [clientSecretSettingName] The app setting name that contains the `clientSecret` value used for GitHub login. Cannot be specified with `clientSecret`.
  /// [oauthScopes] Specifies a list of OAuth 2.0 scopes that will be requested as part of GitHub login authentication.
  const LinuxWebAppSlotAuthSettingsGithub({
    required this.clientId,
    this.clientSecret,
    this.clientSecretSettingName,
    this.oauthScopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'clientSecret': ?clientSecret,
      'clientSecretSettingName': ?clientSecretSettingName,
      'oauthScopes': ?oauthScopes,
    };
  }

  factory LinuxWebAppSlotAuthSettingsGithub.fromMap(Map<String, dynamic> map) {
    return LinuxWebAppSlotAuthSettingsGithub(
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecretSettingName: (() { final guardedValue = map['clientSecretSettingName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oauthScopes: (() { final guardedValue = map['oauthScopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
