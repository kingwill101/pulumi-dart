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
    required this.catalogId,
    required this.catalogItemId,
    required this.location,
    this.project,
  });

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
      catalogId: pulumi.Input.fromValue(map['catalogId'] as String),
      catalogItemId: pulumi.Input.fromValue(map['catalogItemId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

