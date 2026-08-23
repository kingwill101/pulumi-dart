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
  const GetCatalogArgs({
    required this.catalogId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': catalogId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetCatalogArgs.fromMap(Map<String, dynamic> map) {
    return GetCatalogArgs(
      catalogId: pulumi.Input.fromValue(map['catalogId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
