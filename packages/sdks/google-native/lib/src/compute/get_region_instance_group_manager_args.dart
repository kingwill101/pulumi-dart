// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_region_instance_group_manager_args_doc}
/// Arguments for getRegionInstanceGroupManager.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_region_instance_group_manager_args_doc}
class GetRegionInstanceGroupManagerArgs {
  final pulumi.Input<String> instanceGroupManager;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetRegionInstanceGroupManagerArgs].
  /// [instanceGroupManager] Required.
  /// [project] Optional.
  /// [region] Required.
  GetRegionInstanceGroupManagerArgs({
    required this.instanceGroupManager,
    this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceGroupManager': instanceGroupManager,
      'project': ?project,
      'region': region,
    };
  }

  factory GetRegionInstanceGroupManagerArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionInstanceGroupManagerArgs(
      instanceGroupManager: pulumi.Input.fromValue(
        map['instanceGroupManager'] as String,
      ),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}
