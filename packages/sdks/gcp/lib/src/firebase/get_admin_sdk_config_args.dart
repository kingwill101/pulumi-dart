// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebase_get_admin_sdk_config_get_admin_sdk_config_args_doc}
/// Arguments for getAdminSdkConfig.
/// {@endtemplate}
/// {@macro pulumi_firebase_get_admin_sdk_config_get_admin_sdk_config_args_doc}
class GetAdminSdkConfigArgs {
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetAdminSdkConfigArgs].
  /// [project] The ID of the project in which the resource belongs. If it
  const GetAdminSdkConfigArgs({
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
    };
  }

  factory GetAdminSdkConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetAdminSdkConfigArgs(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
