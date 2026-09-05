// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'catalog_catalog_adogit.dart';
import 'catalog_catalog_github.dart';

/// {@template pulumi_devcenter_catalog_catalog_args_doc}
/// The set of arguments for Catalog.
/// {@endtemplate}
/// {@macro pulumi_devcenter_catalog_catalog_args_doc}
class CatalogArgs {
  /// A `catalogAdogit` block as defined below.
  final pulumi.Input<CatalogCatalogAdogit?>? catalogAdogit;
  /// A `catalogGithub` block as defined below.
  final pulumi.Input<CatalogCatalogGithub?>? catalogGithub;
  /// Specifies the Dev Center Id within which this Dev Center Catalog should exist. Changing this forces a new Dev Center Catalog to be created.
  final pulumi.Input<String> devCenterId;
  /// Specifies the name of this Dev Center Catalog. Changing this forces a new Dev Center to be created.
  final pulumi.Input<String?>? name;
  /// Specifies the name of the Resource Group within which this Dev Center Catalog should exist. Changing this forces a new Dev Center to be created.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [CatalogArgs].
  /// [catalogAdogit] A `catalogAdogit` block as defined below.
  /// [catalogGithub] A `catalogGithub` block as defined below.
  /// [devCenterId] Specifies the Dev Center Id within which this Dev Center Catalog should exist. Changing this forces a new Dev Center Catalog to be created.
  /// [name] Specifies the name of this Dev Center Catalog. Changing this forces a new Dev Center to be created.
  /// [resourceGroupName] Specifies the name of the Resource Group within which this Dev Center Catalog should exist. Changing this forces a new Dev Center to be created.
  const CatalogArgs({
    this.catalogAdogit,
    this.catalogGithub,
    required this.devCenterId,
    this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogAdogit': ?pulumi.Input.mapOptionalInputValue<CatalogCatalogAdogit, Map<String, dynamic>>(catalogAdogit, (value) => value.toMap()),
      'catalogGithub': ?pulumi.Input.mapOptionalInputValue<CatalogCatalogGithub, Map<String, dynamic>>(catalogGithub, (value) => value.toMap()),
      'devCenterId': devCenterId,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory CatalogArgs.fromMap(Map<String, dynamic> map) {
    return CatalogArgs(
      catalogAdogit: (() { final guardedValue = map['catalogAdogit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CatalogCatalogAdogit.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      catalogGithub: (() { final guardedValue = map['catalogGithub']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CatalogCatalogGithub.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      devCenterId: pulumi.Input.fromValue(map['devCenterId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
