// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_biglake_v1_get_catalog_args_doc}
/// Arguments for getCatalog.
/// {@endtemplate}
/// {@macro pulumi_biglake_v1_get_catalog_args_doc}
class GetCatalogArgs {
  final pulumi.Input<String> catalogId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetCatalogArgs].
  /// [catalogId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetCatalogArgs({
    required pulumi.Output<String> catalogId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      catalogId = pulumi.Input.asInput<String>(catalogId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': catalogId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetCatalogArgs.fromMap(Map<String, dynamic> map) {
    return GetCatalogArgs(
      catalogId: pulumi.Output.create<String>(map['catalogId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

