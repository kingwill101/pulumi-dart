// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration settings of the app registration for providers that have app ids and app secrets
class AppRegistration {
  /// The App ID of the app used for login.
  final pulumi.Input<String>? appId;
  /// The app setting name that contains the app secret.
  final pulumi.Input<String>? appSecretSettingName;

  /// Creates a new [AppRegistration].
  /// [appId] The App ID of the app used for login.
  /// [appSecretSettingName] The app setting name that contains the app secret.
  AppRegistration({
    this.appId,
    this.appSecretSettingName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': ?appId,
      'appSecretSettingName': ?appSecretSettingName,
    };
  }

  factory AppRegistration.fromMap(Map<String, dynamic> map) {
    return AppRegistration(
      appId: map['appId'] == null ? null : (map['appId']! as String).input(),
      appSecretSettingName: map['appSecretSettingName'] == null ? null : (map['appSecretSettingName']! as String).input(),
    );
  }
}

