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
    required pulumi.Output<String> appProfileId,
    required pulumi.Output<String> instanceId,
    pulumi.Output<String>? project,
  }) :
      appProfileId = pulumi.Input.asInput<String>(appProfileId),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appProfileId': appProfileId,
      'instanceId': instanceId,
      'project': ?project,
    };
  }

  factory GetAppProfileArgs.fromMap(Map<String, dynamic> map) {
    return GetAppProfileArgs(
      appProfileId: pulumi.Output.create<String>(map['appProfileId'] as String),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

