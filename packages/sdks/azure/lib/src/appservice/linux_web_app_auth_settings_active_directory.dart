// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinuxWebAppAuthSettingsActiveDirectory {
  /// Specifies a list of Allowed audience values to consider when validating JWTs issued by Azure Active Directory.
  ///
  /// &gt; **Note:** The `clientId` value is always considered an allowed audience.
  final pulumi.Input<List<String>>? allowedAudiences;
  /// The ID of the Client to use to authenticate with Azure Active Directory.
  final pulumi.Input<String> clientId;
  /// The Client Secret for the Client ID. Cannot be used with `clientSecretSettingName`.
  final pulumi.Input<String>? clientSecret;
  /// The App Setting name that contains the client secret of the Client. Cannot be used with `clientSecret`.
  final pulumi.Input<String>? clientSecretSettingName;

  /// Creates a new [LinuxWebAppAuthSettingsActiveDirectory].
  /// [allowedAudiences] Specifies a list of Allowed audience values to consider when validating JWTs issued by Azure Active Directory.
  /// [clientId] The ID of the Client to use to authenticate with Azure Active Directory.
  /// [clientSecret] The Client Secret for the Client ID. Cannot be used with `clientSecretSettingName`.
  /// [clientSecretSettingName] The App Setting name that contains the client secret of the Client. Cannot be used with `clientSecret`.
  const LinuxWebAppAuthSettingsActiveDirectory({
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

  factory LinuxWebAppAuthSettingsActiveDirectory.fromMap(Map<String, dynamic> map) {
    return LinuxWebAppAuthSettingsActiveDirectory(
      allowedAudiences: (() { final guardedValue = map['allowedAudiences']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecretSettingName: (() { final guardedValue = map['clientSecretSettingName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
