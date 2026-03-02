// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebase_get_web_app_get_web_app_args_doc}
/// Arguments for getWebApp.
/// {@endtemplate}
/// {@macro pulumi_firebase_get_web_app_get_web_app_args_doc}
class GetWebAppArgs {
  /// The app_ip of name of the Firebase webApp.
  ///
  ///
  /// - - -
  final pulumi.Input<String> appId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetWebAppArgs].
  /// [appId] The app_ip of name of the Firebase webApp.
  /// [project] The ID of the project in which the resource belongs.
  GetWebAppArgs({
    required this.appId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'project': ?project,
    };
  }

  factory GetWebAppArgs.fromMap(Map<String, dynamic> map) {
    return GetWebAppArgs(
      appId: (map['appId'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

