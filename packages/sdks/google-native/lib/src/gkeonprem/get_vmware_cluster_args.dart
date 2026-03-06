// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkeonprem_v1_get_vmware_cluster_args_doc}
/// Arguments for getVmwareCluster.
/// {@endtemplate}
/// {@macro pulumi_gkeonprem_v1_get_vmware_cluster_args_doc}
class GetVmwareClusterArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? view;
  final pulumi.Input<String> vmwareClusterId;

  /// Creates a new [GetVmwareClusterArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [view] Optional.
  /// [vmwareClusterId] Required.
  const GetVmwareClusterArgs({
    required this.location,
    this.project,
    this.view,
    required this.vmwareClusterId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'view': ?view,
      'vmwareClusterId': vmwareClusterId,
    };
  }

  factory GetVmwareClusterArgs.fromMap(Map<String, dynamic> map) {
    return GetVmwareClusterArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      view: (() { final guardedValue = map['view']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vmwareClusterId: pulumi.Input.fromValue(map['vmwareClusterId'] as String),
    );
  }
}

