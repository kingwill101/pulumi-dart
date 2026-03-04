// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WindowsFunctionAppSlotAuthSettingsActiveDirectory {
  /// Specifies a list of Allowed audience values to consider when validating JWTs issued by Azure Active Directory.
  ///
  /// &gt; **Note:** The `client_id` value is always considered an allowed audience.
  final pulumi.Input<List<String>>? allowedAudiences;

  /// The ID of the Client to use to authenticate with Azure Active Directory.
  final pulumi.Input<String> clientId;

  /// The Client Secret for the Client ID. Cannot be used with `client_secret_setting_name`.
  final pulumi.Input<String>? clientSecret;

  /// The App Setting name that contains the client secret of the Client. Cannot be used with `client_secret`.
  final pulumi.Input<String>? clientSecretSettingName;

  /// Creates a new [WindowsFunctionAppSlotAuthSettingsActiveDirectory].
  /// [allowedAudiences] Specifies a list of Allowed audience values to consider when validating JWTs issued by Azure Active Directory.
  /// [clientId] The ID of the Client to use to authenticate with Azure Active Directory.
  /// [clientSecret] The Client Secret for the Client ID. Cannot be used with `client_secret_setting_name`.
  /// [clientSecretSettingName] The App Setting name that contains the client secret of the Client. Cannot be used with `client_secret`.
  WindowsFunctionAppSlotAuthSettingsActiveDirectory({
    this.allowedAudiences,
    required this.clientId,
    this.clientSecret,
    this.clientSecretSettingName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedAudiences': ?allowedAudiences,
      'clientId': clientId,
      'clientSecret': ?clientSecret,
      'clientSecretSettingName': ?clientSecretSettingName,
    };
  }

  factory WindowsFunctionAppSlotAuthSettingsActiveDirectory.fromMap(
    Map<String, dynamic> map,
  ) {
    return WindowsFunctionAppSlotAuthSettingsActiveDirectory(
      allowedAudiences: (() {
        final guardedValue = map['allowedAudiences'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
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
    );
  }
}
