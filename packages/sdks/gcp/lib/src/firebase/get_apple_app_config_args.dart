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
  GetAppleAppConfigArgs({
    required pulumi.Output<String> appId,
    pulumi.Output<String>? project,
  }) :
      appId = pulumi.Input.asInput<String>(appId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'project': ?project,
    };
  }

  factory GetAppleAppConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetAppleAppConfigArgs(
      appId: pulumi.Output.create<String>(map['appId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

