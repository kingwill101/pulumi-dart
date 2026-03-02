// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkeonprem_v1_get_vmware_node_pool_args_doc}
/// Arguments for getVmwareNodePool.
/// {@endtemplate}
/// {@macro pulumi_gkeonprem_v1_get_vmware_node_pool_args_doc}
class GetVmwareNodePoolArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? view;
  final pulumi.Input<String> vmwareClusterId;
  final pulumi.Input<String> vmwareNodePoolId;

  /// Creates a new [GetVmwareNodePoolArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [view] Optional.
  /// [vmwareClusterId] Required.
  /// [vmwareNodePoolId] Required.
  GetVmwareNodePoolArgs({
    required this.location,
    this.project,
    this.view,
    required this.vmwareClusterId,
    required this.vmwareNodePoolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'view': ?view,
      'vmwareClusterId': vmwareClusterId,
      'vmwareNodePoolId': vmwareNodePoolId,
    };
  }

  factory GetVmwareNodePoolArgs.fromMap(Map<String, dynamic> map) {
    return GetVmwareNodePoolArgs(
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      view: map['view'] == null ? null : (map['view'] as String).input(),
      vmwareClusterId: (map['vmwareClusterId'] as String).input(),
      vmwareNodePoolId: (map['vmwareNodePoolId'] as String).input(),
    );
  }
}

