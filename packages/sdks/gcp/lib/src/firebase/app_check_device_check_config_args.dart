// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebase_app_check_device_check_config_app_check_device_check_config_args_doc}
/// The set of arguments for AppCheckDeviceCheckConfig.
/// {@endtemplate}
/// {@macro pulumi_firebase_app_check_device_check_config_app_check_device_check_config_args_doc}
class AppCheckDeviceCheckConfigArgs {
  /// The ID of an
  /// [Apple App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.iosApps#IosApp.FIELDS.app_id).
  final pulumi.Input<String> appId;
  /// The key identifier of a private key enabled with DeviceCheck, created in your Apple Developer account.
  final pulumi.Input<String> keyId;
  /// The contents of the private key (.p8) file associated with the key specified by keyId.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String> privateKey;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Specifies the duration for which App Check tokens exchanged from DeviceCheck artifacts will be valid.
  /// If unset, a default value of 1 hour is assumed. Must be between 30 minutes and 7 days, inclusive.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  final pulumi.Input<String>? tokenTtl;

  /// Creates a new [AppCheckDeviceCheckConfigArgs].
  /// [appId] The ID of an
  /// [keyId] The key identifier of a private key enabled with DeviceCheck, created in your Apple Developer account.
  /// [privateKey] The contents of the private key (.p8) file associated with the key specified by keyId.
  /// [project] The ID of the project in which the resource belongs.
  /// [tokenTtl] Specifies the duration for which App Check tokens exchanged from DeviceCheck artifacts will be valid.
  AppCheckDeviceCheckConfigArgs({
    required pulumi.Output<String> appId,
    required pulumi.Output<String> keyId,
    required pulumi.Output<String> privateKey,
    pulumi.Output<String>? project,
    pulumi.Output<String>? tokenTtl,
  }) :
      appId = pulumi.Input.asInput<String>(appId),
      keyId = pulumi.Input.asInput<String>(keyId),
      privateKey = pulumi.Input.asInput<String>(privateKey),
      project = pulumi.Input.asOptionalInput<String>(project),
      tokenTtl = pulumi.Input.asOptionalInput<String>(tokenTtl);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'keyId': keyId,
      'privateKey': privateKey,
      'project': ?project,
      'tokenTtl': ?tokenTtl,
    };
  }

  factory AppCheckDeviceCheckConfigArgs.fromMap(Map<String, dynamic> map) {
    return AppCheckDeviceCheckConfigArgs(
      appId: pulumi.Output.create<String>(map['appId'] as String),
      keyId: pulumi.Output.create<String>(map['keyId'] as String),
      privateKey: pulumi.Output.create<String>(map['privateKey'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      tokenTtl: map['tokenTtl'] == null ? null : pulumi.Output.create<String>(map['tokenTtl'] as String),
    );
  }
}

