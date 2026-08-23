// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebase_v1beta1_get_web_app_args_doc}
/// Arguments for getWebApp.
/// {@endtemplate}
/// {@macro pulumi_firebase_v1beta1_get_web_app_args_doc}
class GetWebAppArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> webAppId;

  /// Creates a new [GetWebAppArgs].
  /// [project] Optional.
  /// [webAppId] Required.
  const GetWebAppArgs({
    this.project,
    required this.webAppId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'webAppId': webAppId,
    };
  }

  factory GetWebAppArgs.fromMap(Map<String, dynamic> map) {
    return GetWebAppArgs(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      webAppId: pulumi.Input.fromValue(map['webAppId'] as String),
    );
  }
}
