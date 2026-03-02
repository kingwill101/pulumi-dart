// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration settings of the registration for the Apple provider
class AppleRegistration {
  /// The Client ID of the app used for login.
  final pulumi.Input<String>? clientId;
  /// The app setting name that contains the client secret.
  final pulumi.Input<String>? clientSecretSettingName;

  /// Creates a new [AppleRegistration].
  /// [clientId] The Client ID of the app used for login.
  /// [clientSecretSettingName] The app setting name that contains the client secret.
  AppleRegistration({
    this.clientId,
    this.clientSecretSettingName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'clientSecretSettingName': ?clientSecretSettingName,
    };
  }

  factory AppleRegistration.fromMap(Map<String, dynamic> map) {
    return AppleRegistration(
      clientId: map['clientId'] == null ? null : (map['clientId'] as String).input(),
      clientSecretSettingName: map['clientSecretSettingName'] == null ? null : (map['clientSecretSettingName'] as String).input(),
    );
  }
}

