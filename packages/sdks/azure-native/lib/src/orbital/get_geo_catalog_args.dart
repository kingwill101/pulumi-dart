// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_orbital_get_geo_catalog_args_doc}
/// Arguments for getGeoCatalog.
/// {@endtemplate}
/// {@macro pulumi_orbital_get_geo_catalog_args_doc}
class GetGeoCatalogArgs {
  /// The name of the catalog
  final pulumi.Input<String> catalogName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetGeoCatalogArgs].
  /// [catalogName] The name of the catalog
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetGeoCatalogArgs({
    required this.catalogName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogName': catalogName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetGeoCatalogArgs.fromMap(Map<String, dynamic> map) {
    return GetGeoCatalogArgs(
      catalogName: pulumi.Input.fromValue(map['catalogName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

