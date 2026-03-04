// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_spanner_v1_get_instance_config_args_doc}
/// Arguments for getInstanceConfig.
/// {@endtemplate}
/// {@macro pulumi_spanner_v1_get_instance_config_args_doc}
class GetInstanceConfigArgs {
  final pulumi.Input<String> instanceConfigId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetInstanceConfigArgs].
  /// [instanceConfigId] Required.
  /// [project] Optional.
  GetInstanceConfigArgs({required this.instanceConfigId, this.project});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceConfigId': instanceConfigId,
      'project': ?project,
    };
  }

  factory GetInstanceConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceConfigArgs(
      instanceConfigId: pulumi.Input.fromValue(
        map['instanceConfigId'] as String,
      ),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
