// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devcenter_get_catalog_get_catalog_args_doc}
/// Arguments for getCatalog.
/// {@endtemplate}
/// {@macro pulumi_devcenter_get_catalog_get_catalog_args_doc}
class GetCatalogArgs {
  /// Specifies the Dev Center Id within which this Dev Center Catalog should exist.
  final pulumi.Input<String> devCenterId;
  /// The name of this Dev Center Catalog.
  final pulumi.Input<String> name;

  /// Creates a new [GetCatalogArgs].
  /// [devCenterId] Specifies the Dev Center Id within which this Dev Center Catalog should exist.
  /// [name] The name of this Dev Center Catalog.
  GetCatalogArgs({
    required this.devCenterId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devCenterId': devCenterId,
      'name': name,
    };
  }

  factory GetCatalogArgs.fromMap(Map<String, dynamic> map) {
    return GetCatalogArgs(
      devCenterId: pulumi.Input.fromValue(map['devCenterId'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

