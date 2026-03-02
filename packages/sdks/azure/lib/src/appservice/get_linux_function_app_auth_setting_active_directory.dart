// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLinuxFunctionAppAuthSettingActiveDirectory {
  /// The list of Allowed Audiences that are be requested as part of Microsoft Sign-In authentication.
  final pulumi.Input<List<String>> allowedAudiences;
  /// The OAuth 2.0 client ID that was created for the app used for authentication.
  final pulumi.Input<String> clientId;
  /// The OAuth 2.0 client secret that was created for the app used for authentication.
  final pulumi.Input<String> clientSecret;
  /// The app setting name containing the OAuth 2.0 client secret that was created for the app used for authentication.
  final pulumi.Input<String> clientSecretSettingName;

  /// Creates a new [GetLinuxFunctionAppAuthSettingActiveDirectory].
  /// [allowedAudiences] The list of Allowed Audiences that are be requested as part of Microsoft Sign-In authentication.
  /// [clientId] The OAuth 2.0 client ID that was created for the app used for authentication.
  /// [clientSecret] The OAuth 2.0 client secret that was created for the app used for authentication.
  /// [clientSecretSettingName] The app setting name containing the OAuth 2.0 client secret that was created for the app used for authentication.
  GetLinuxFunctionAppAuthSettingActiveDirectory({
    required this.allowedAudiences,
    required this.clientId,
    required this.clientSecret,
    required this.clientSecretSettingName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedAudiences': allowedAudiences,
      'clientId': clientId,
      'clientSecret': clientSecret,
      'clientSecretSettingName': clientSecretSettingName,
    };
  }

  factory GetLinuxFunctionAppAuthSettingActiveDirectory.fromMap(Map<String, dynamic> map) {
    return GetLinuxFunctionAppAuthSettingActiveDirectory(
      allowedAudiences: ((map['allowedAudiences'] as List).cast<String>()).input(),
      clientId: (map['clientId'] as String).input(),
      clientSecret: (map['clientSecret'] as String).input(),
      clientSecretSettingName: (map['clientSecretSettingName'] as String).input(),
    );
  }
}

