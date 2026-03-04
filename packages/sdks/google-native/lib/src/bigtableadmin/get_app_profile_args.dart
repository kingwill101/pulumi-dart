// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bigtableadmin_v2_get_app_profile_args_doc}
/// Arguments for getAppProfile.
/// {@endtemplate}
/// {@macro pulumi_bigtableadmin_v2_get_app_profile_args_doc}
class GetAppProfileArgs {
  final pulumi.Input<String> appProfileId;
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetAppProfileArgs].
  /// [appProfileId] Required.
  /// [instanceId] Required.
  /// [project] Optional.
  GetAppProfileArgs({
    required this.appProfileId,
    required this.instanceId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appProfileId': appProfileId,
      'instanceId': instanceId,
      'project': ?project,
    };
  }

  factory GetAppProfileArgs.fromMap(Map<String, dynamic> map) {
    return GetAppProfileArgs(
      appProfileId: pulumi.Input.fromValue(map['appProfileId'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
