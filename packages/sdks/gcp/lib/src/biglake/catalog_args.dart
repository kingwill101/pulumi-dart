// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_biglake_catalog_catalog_args_doc}
/// The set of arguments for Catalog.
/// {@endtemplate}
/// {@macro pulumi_biglake_catalog_catalog_args_doc}
class CatalogArgs {
  /// The geographic location where the Catalog should reside.
  final pulumi.Input<String> location;
  /// The name of the Catalog. Format:
  /// projects/{project_id_or_number}/locations/{locationId}/catalogs/{catalogId}
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [CatalogArgs].
  /// [location] The geographic location where the Catalog should reside.
  /// [name] The name of the Catalog. Format:
  /// [project] The ID of the project in which the resource belongs.
  CatalogArgs({
    required pulumi.Output<String> location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
  }) :
      location = pulumi.Input.asInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'name': ?name,
      'project': ?project,
    };
  }

  factory CatalogArgs.fromMap(Map<String, dynamic> map) {
    return CatalogArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

