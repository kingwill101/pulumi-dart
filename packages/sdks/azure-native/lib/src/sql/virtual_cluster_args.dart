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
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? version,
    pulumi.Output<String>? virtualClusterName,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      version = pulumi.Input.asOptionalInput<String>(version),
      virtualClusterName = pulumi.Input.asOptionalInput<String>(virtualClusterName);

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
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
      virtualClusterName: map['virtualClusterName'] == null ? null : pulumi.Output.create<String>(map['virtualClusterName'] as String),
    );
  }
}

