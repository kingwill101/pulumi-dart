// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_orbital_get_edge_site_args_doc}
/// Arguments for getEdgeSite.
/// {@endtemplate}
/// {@macro pulumi_orbital_get_edge_site_args_doc}
class GetEdgeSiteArgs {
  /// Edge site name.
  final pulumi.Input<String> edgeSiteName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetEdgeSiteArgs].
  /// [edgeSiteName] Edge site name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetEdgeSiteArgs({
    required pulumi.Output<String> edgeSiteName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      edgeSiteName = pulumi.Input.asInput<String>(edgeSiteName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'edgeSiteName': edgeSiteName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetEdgeSiteArgs.fromMap(Map<String, dynamic> map) {
    return GetEdgeSiteArgs(
      edgeSiteName: pulumi.Output.create<String>(map['edgeSiteName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

