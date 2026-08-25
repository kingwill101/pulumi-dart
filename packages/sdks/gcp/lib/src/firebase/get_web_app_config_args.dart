// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebase_get_web_app_config_get_web_app_config_args_doc}
/// Arguments for getWebAppConfig.
/// {@endtemplate}
/// {@macro pulumi_firebase_get_web_app_config_get_web_app_config_args_doc}
class GetWebAppConfigArgs {
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// the id of the firebase web app
  ///
  /// - - -
  final pulumi.Input<String> webAppId;

  /// Creates a new [GetWebAppConfigArgs].
  /// [project] The ID of the project in which the resource belongs. If it
  /// [webAppId] the id of the firebase web app
  const GetWebAppConfigArgs({
    this.project,
    required this.webAppId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'webAppId': webAppId,
    };
  }

  factory GetWebAppConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetWebAppConfigArgs(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      webAppId: pulumi.Input.fromValue(map['webAppId'] as String),
    );
  }
}
