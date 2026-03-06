// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AppCheckDeviceCheckConfig resources.
class AppCheckDeviceCheckConfigState {
  /// The ID of an
  /// [Apple App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.iosApps#IosApp.FIELDS.app_id).
  final pulumi.Input<String>? appId;
  /// The key identifier of a private key enabled with DeviceCheck, created in your Apple Developer account.
  final pulumi.Input<String>? keyId;
  /// The relative resource name of the DeviceCheck configuration object
  final pulumi.Input<String>? name;
  /// The contents of the private key (.p8) file associated with the key specified by keyId.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? privateKey;
  /// Whether the privateKey field was previously set. Since App Check will never return the
  /// privateKey field, this field is the only way to find out whether it was previously set.
  final pulumi.Input<bool>? privateKeySet;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Specifies the duration for which App Check tokens exchanged from DeviceCheck artifacts will be valid.
  /// If unset, a default value of 1 hour is assumed. Must be between 30 minutes and 7 days, inclusive.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  final pulumi.Input<String>? tokenTtl;

  /// Creates a new [AppCheckDeviceCheckConfigState].
  /// [appId] The ID of an
  /// [keyId] The key identifier of a private key enabled with DeviceCheck, created in your Apple Developer account.
  /// [name] The relative resource name of the DeviceCheck configuration object
  /// [privateKey] The contents of the private key (.p8) file associated with the key specified by keyId.
  /// [privateKeySet] Whether the privateKey field was previously set. Since App Check will never return the
  /// [project] The ID of the project in which the resource belongs.
  /// [tokenTtl] Specifies the duration for which App Check tokens exchanged from DeviceCheck artifacts will be valid.
  const AppCheckDeviceCheckConfigState({
    this.appId,
    this.keyId,
    this.name,
    this.privateKey,
    this.privateKeySet,
    this.project,
    this.tokenTtl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': ?appId,
      'keyId': ?keyId,
      'name': ?name,
      'privateKey': ?privateKey,
      'privateKeySet': ?privateKeySet,
      'project': ?project,
      'tokenTtl': ?tokenTtl,
    };
  }

  factory AppCheckDeviceCheckConfigState.fromMap(Map<String, dynamic> map) {
    return AppCheckDeviceCheckConfigState(
      appId: (() { final guardedValue = map['appId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyId: (() { final guardedValue = map['keyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateKey: (() { final guardedValue = map['privateKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateKeySet: (() { final guardedValue = map['privateKeySet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tokenTtl: (() { final guardedValue = map['tokenTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

