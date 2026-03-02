// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_virtual_cluster_args_doc}
/// The set of arguments for VirtualCluster.
/// {@endtemplate}
/// {@macro pulumi_sql_virtual_cluster_args_doc}
class VirtualClusterArgs {
  /// Resource location.
  final pulumi.Input<String>? location;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Virtual cluster version.
  final pulumi.Input<String>? version;
  /// The name of the virtual cluster.
  final pulumi.Input<String>? virtualClusterName;

  /// Creates a new [VirtualClusterArgs].
  /// [location] Resource location.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [tags] Resource tags.
  /// [version] Virtual cluster version.
  /// [virtualClusterName] The name of the virtual cluster.
  VirtualClusterArgs({
    this.location,
    required this.resourceGroupName,
    this.tags,
    this.version,
    this.virtualClusterName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'version': ?version,
      'virtualClusterName': ?virtualClusterName,
    };
  }

  factory VirtualClusterArgs.fromMap(Map<String, dynamic> map) {
    return VirtualClusterArgs(
      location: map['location'] == null ? null : (map['location'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
      virtualClusterName: map['virtualClusterName'] == null ? null : (map['virtualClusterName'] as String).input(),
    );
  }
}

