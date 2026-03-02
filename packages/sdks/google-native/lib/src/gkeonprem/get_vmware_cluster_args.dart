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
  GetVmwareClusterArgs({
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
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      view: map['view'] == null ? null : (map['view']! as String).input(),
      vmwareClusterId: (map['vmwareClusterId'] as String).input(),
    );
  }
}

