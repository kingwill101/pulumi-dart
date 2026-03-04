// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_instance_group_manager_resize_request_args_doc}
/// Arguments for getInstanceGroupManagerResizeRequest.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_instance_group_manager_resize_request_args_doc}
class GetInstanceGroupManagerResizeRequestArgs {
  final pulumi.Input<String> instanceGroupManager;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> resizeRequest;
  final pulumi.Input<String> zone;

  /// Creates a new [GetInstanceGroupManagerResizeRequestArgs].
  /// [instanceGroupManager] Required.
  /// [project] Optional.
  /// [resizeRequest] Required.
  /// [zone] Required.
  GetInstanceGroupManagerResizeRequestArgs({
    required this.instanceGroupManager,
    this.project,
    required this.resizeRequest,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceGroupManager': instanceGroupManager,
      'project': ?project,
      'resizeRequest': resizeRequest,
      'zone': zone,
    };
  }

  factory GetInstanceGroupManagerResizeRequestArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetInstanceGroupManagerResizeRequestArgs(
      instanceGroupManager: pulumi.Input.fromValue(
        map['instanceGroupManager'] as String,
      ),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resizeRequest: pulumi.Input.fromValue(map['resizeRequest'] as String),
      zone: pulumi.Input.fromValue(map['zone'] as String),
    );
  }
}
