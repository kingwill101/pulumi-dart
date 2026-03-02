// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebase_get_android_app_config_get_android_app_config_args_doc}
/// Arguments for getAndroidAppConfig.
/// {@endtemplate}
/// {@macro pulumi_firebase_get_android_app_config_get_android_app_config_args_doc}
class GetAndroidAppConfigArgs {
  final pulumi.Input<String> appId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetAndroidAppConfigArgs].
  /// [appId] Required.
  /// [project] Optional.
  GetAndroidAppConfigArgs({
    required this.appId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'project': ?project,
    };
  }

  factory GetAndroidAppConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetAndroidAppConfigArgs(
      appId: (map['appId'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

