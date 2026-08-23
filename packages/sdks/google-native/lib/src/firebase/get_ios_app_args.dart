// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebase_v1beta1_get_ios_app_args_doc}
/// Arguments for getIosApp.
/// {@endtemplate}
/// {@macro pulumi_firebase_v1beta1_get_ios_app_args_doc}
class GetIosAppArgs {
  final pulumi.Input<String> iosAppId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetIosAppArgs].
  /// [iosAppId] Required.
  /// [project] Optional.
  const GetIosAppArgs({
    required this.iosAppId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iosAppId': iosAppId,
      'project': ?project,
    };
  }

  factory GetIosAppArgs.fromMap(Map<String, dynamic> map) {
    return GetIosAppArgs(
      iosAppId: pulumi.Input.fromValue(map['iosAppId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
