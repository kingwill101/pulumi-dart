// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_biglake_v1_catalog_args_doc}
/// The set of arguments for Catalog.
/// {@endtemplate}
/// {@macro pulumi_biglake_v1_catalog_args_doc}
class CatalogArgs {
  /// Required. The ID to use for the catalog, which will become the final component of the catalog's resource name.
  final pulumi.Input<String> catalogId;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// Creates a new [CatalogArgs].
  /// [catalogId] Required. The ID to use for the catalog, which will become the final component of the catalog's resource name.
  /// [location] Optional.
  /// [project] Optional.
  CatalogArgs({
    required this.catalogId,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': catalogId,
      'location': ?location,
      'project': ?project,
    };
  }

  factory CatalogArgs.fromMap(Map<String, dynamic> map) {
    return CatalogArgs(
      catalogId: (map['catalogId'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

