// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinuxWebAppSlotAuthSettingsMicrosoft {
  /// The OAuth 2.0 client ID that was created for the app used for authentication.
  final pulumi.Input<String> clientId;

  /// The OAuth 2.0 client secret that was created for the app used for authentication. Cannot be specified with `client_secret_setting_name`.
  final pulumi.Input<String>? clientSecret;

  /// The app setting name containing the OAuth 2.0 client secret that was created for the app used for authentication. Cannot be specified with `client_secret`.
  final pulumi.Input<String>? clientSecretSettingName;

  /// Specifies a list of OAuth 2.0 scopes that will be requested as part of Microsoft Account authentication. If not specified, "wl.basic" is used as the default scope.
  final pulumi.Input<List<String>>? oauthScopes;

  /// Creates a new [LinuxWebAppSlotAuthSettingsMicrosoft].
  /// [clientId] The OAuth 2.0 client ID that was created for the app used for authentication.
  /// [clientSecret] The OAuth 2.0 client secret that was created for the app used for authentication. Cannot be specified with `client_secret_setting_name`.
  /// [clientSecretSettingName] The app setting name containing the OAuth 2.0 client secret that was created for the app used for authentication. Cannot be specified with `client_secret`.
  /// [oauthScopes] Specifies a list of OAuth 2.0 scopes that will be requested as part of Microsoft Account authentication. If not specified, "wl.basic" is used as the default scope.
  LinuxWebAppSlotAuthSettingsMicrosoft({
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

  factory LinuxWebAppSlotAuthSettingsMicrosoft.fromMap(
    Map<String, dynamic> map,
  ) {
    return LinuxWebAppSlotAuthSettingsMicrosoft(
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      clientSecret: (() {
        final guardedValue = map['clientSecret'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clientSecretSettingName: (() {
        final guardedValue = map['clientSecretSettingName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      oauthScopes: (() {
        final guardedValue = map['oauthScopes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
