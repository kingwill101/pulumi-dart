// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebase_get_apple_app_config_get_apple_app_config_args_doc}
/// Arguments for getAppleAppConfig.
/// {@endtemplate}
/// {@macro pulumi_firebase_get_apple_app_config_get_apple_app_config_args_doc}
class GetAppleAppConfigArgs {
  /// The id of the Firebase iOS App.
  ///
  /// - - -
  final pulumi.Input<String> appId;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetAppleAppConfigArgs].
  /// [appId] The id of the Firebase iOS App.
  /// [project] The ID of the project in which the resource belongs. If it
  const GetAppleAppConfigArgs({
    required this.appId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'project': ?project,
    };
  }

  factory GetAppleAppConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetAppleAppConfigArgs(
      appId: pulumi.Input.fromValue(map['appId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
