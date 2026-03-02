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
  AppCheckDeviceCheckConfigState({
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
      appId: map['appId'] == null ? null : (map['appId']! as String).input(),
      keyId: map['keyId'] == null ? null : (map['keyId']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      privateKey: map['privateKey'] == null ? null : (map['privateKey']! as String).input(),
      privateKeySet: map['privateKeySet'] == null ? null : (map['privateKeySet']! as bool).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      tokenTtl: map['tokenTtl'] == null ? null : (map['tokenTtl']! as String).input(),
    );
  }
}

