// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_recommendationengine_v1beta1_get_catalog_item_args_doc}
/// Arguments for getCatalogItem.
/// {@endtemplate}
/// {@macro pulumi_recommendationengine_v1beta1_get_catalog_item_args_doc}
class GetCatalogItemArgs {
  final pulumi.Input<String> catalogId;
  final pulumi.Input<String> catalogItemId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetCatalogItemArgs].
  /// [catalogId] Required.
  /// [catalogItemId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetCatalogItemArgs({
    required pulumi.Output<String> catalogId,
    required pulumi.Output<String> catalogItemId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      catalogId = pulumi.Input.asInput<String>(catalogId),
      catalogItemId = pulumi.Input.asInput<String>(catalogItemId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': catalogId,
      'catalogItemId': catalogItemId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetCatalogItemArgs.fromMap(Map<String, dynamic> map) {
    return GetCatalogItemArgs(
      catalogId: pulumi.Output.create<String>(map['catalogId'] as String),
      catalogItemId: pulumi.Output.create<String>(map['catalogItemId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

