// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'catalog_catalog_adogit.dart';
import 'catalog_catalog_github.dart';

/// {@template pulumi_devcenter_catalog_catalog_args_doc}
/// The set of arguments for Catalog.
/// {@endtemplate}
/// {@macro pulumi_devcenter_catalog_catalog_args_doc}
class CatalogArgs {
  /// A `catalog_adogit` block as defined below.
  final pulumi.Input<CatalogCatalogAdogit>? catalogAdogit;
  /// A `catalog_github` block as defined below.
  final pulumi.Input<CatalogCatalogGithub>? catalogGithub;
  /// Specifies the Dev Center Id within which this Dev Center Catalog should exist. Changing this forces a new Dev Center Catalog to be created.
  final pulumi.Input<String> devCenterId;
  /// Specifies the name of this Dev Center Catalog. Changing this forces a new Dev Center to be created.
  final pulumi.Input<String>? name;
  /// Specifies the name of the Resource Group within which this Dev Center Catalog should exist. Changing this forces a new Dev Center to be created.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [CatalogArgs].
  /// [catalogAdogit] A `catalog_adogit` block as defined below.
  /// [catalogGithub] A `catalog_github` block as defined below.
  /// [devCenterId] Specifies the Dev Center Id within which this Dev Center Catalog should exist. Changing this forces a new Dev Center Catalog to be created.
  /// [name] Specifies the name of this Dev Center Catalog. Changing this forces a new Dev Center to be created.
  /// [resourceGroupName] Specifies the name of the Resource Group within which this Dev Center Catalog should exist. Changing this forces a new Dev Center to be created.
  CatalogArgs({
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
      catalogAdogit: map['catalogAdogit'] == null ? null : (CatalogCatalogAdogit.fromMap((map['catalogAdogit']! as Map).cast<String, dynamic>())).input(),
      catalogGithub: map['catalogGithub'] == null ? null : (CatalogCatalogGithub.fromMap((map['catalogGithub']! as Map).cast<String, dynamic>())).input(),
      devCenterId: (map['devCenterId'] as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

