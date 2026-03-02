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

  factory GetInstanceGroupManagerResizeRequestArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceGroupManagerResizeRequestArgs(
      instanceGroupManager: (map['instanceGroupManager'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      resizeRequest: (map['resizeRequest'] as String).input(),
      zone: (map['zone'] as String).input(),
    );
  }
}

