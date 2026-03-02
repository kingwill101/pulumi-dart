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
    required this.edgeSiteName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'edgeSiteName': edgeSiteName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetEdgeSiteArgs.fromMap(Map<String, dynamic> map) {
    return GetEdgeSiteArgs(
      edgeSiteName: (map['edgeSiteName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

