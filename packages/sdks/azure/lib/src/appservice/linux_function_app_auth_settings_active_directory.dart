// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinuxFunctionAppAuthSettingsActiveDirectory {
  /// Specifies a list of Allowed audience values to consider when validating JWTs issued by Azure Active Directory.
  ///
  /// > **Note:** The `client_id` value is always considered an allowed audience.
  final pulumi.Input<List<String>>? allowedAudiences;
  /// The ID of the Client to use to authenticate with Azure Active Directory.
  final pulumi.Input<String> clientId;
  /// The Client Secret for the Client ID. Cannot be used with `client_secret_setting_name`.
  final pulumi.Input<String>? clientSecret;
  /// The App Setting name that contains the client secret of the Client. Cannot be used with `client_secret`.
  final pulumi.Input<String>? clientSecretSettingName;

  /// Creates a new [LinuxFunctionAppAuthSettingsActiveDirectory].
  /// [allowedAudiences] Specifies a list of Allowed audience values to consider when validating JWTs issued by Azure Active Directory.
  /// [clientId] The ID of the Client to use to authenticate with Azure Active Directory.
  /// [clientSecret] The Client Secret for the Client ID. Cannot be used with `client_secret_setting_name`.
  /// [clientSecretSettingName] The App Setting name that contains the client secret of the Client. Cannot be used with `client_secret`.
  LinuxFunctionAppAuthSettingsActiveDirectory({
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

  factory LinuxFunctionAppAuthSettingsActiveDirectory.fromMap(Map<String, dynamic> map) {
    return LinuxFunctionAppAuthSettingsActiveDirectory(
      allowedAudiences: map['allowedAudiences'] == null ? null : ((map['allowedAudiences']! as List).cast<String>()).input(),
      clientId: (map['clientId'] as String).input(),
      clientSecret: map['clientSecret'] == null ? null : (map['clientSecret']! as String).input(),
      clientSecretSettingName: map['clientSecretSettingName'] == null ? null : (map['clientSecretSettingName']! as String).input(),
    );
  }
}

