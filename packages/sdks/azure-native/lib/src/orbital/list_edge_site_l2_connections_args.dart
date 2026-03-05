// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_orbital_list_edge_site_l2_connections_args_doc}
/// Arguments for listEdgeSiteL2Connections.
/// {@endtemplate}
/// {@macro pulumi_orbital_list_edge_site_l2_connections_args_doc}
class ListEdgeSiteL2ConnectionsArgs {
  /// Edge site name.
  final pulumi.Input<String> edgeSiteName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListEdgeSiteL2ConnectionsArgs].
  /// [edgeSiteName] Edge site name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  ListEdgeSiteL2ConnectionsArgs({
    required this.edgeSiteName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'edgeSiteName': edgeSiteName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListEdgeSiteL2ConnectionsArgs.fromMap(Map<String, dynamic> map) {
    return ListEdgeSiteL2ConnectionsArgs(
      edgeSiteName: pulumi.Input.fromValue(map['edgeSiteName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

