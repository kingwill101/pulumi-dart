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
    pulumi.Output<CatalogCatalogAdogit>? catalogAdogit,
    pulumi.Output<CatalogCatalogGithub>? catalogGithub,
    required pulumi.Output<String> devCenterId,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      catalogAdogit = pulumi.Input.asOptionalInput<CatalogCatalogAdogit>(catalogAdogit),
      catalogGithub = pulumi.Input.asOptionalInput<CatalogCatalogGithub>(catalogGithub),
      devCenterId = pulumi.Input.asInput<String>(devCenterId),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      catalogAdogit: map['catalogAdogit'] == null ? null : pulumi.Output.create<CatalogCatalogAdogit>(CatalogCatalogAdogit.fromMap((map['catalogAdogit'] as Map).cast<String, dynamic>())),
      catalogGithub: map['catalogGithub'] == null ? null : pulumi.Output.create<CatalogCatalogGithub>(CatalogCatalogGithub.fromMap((map['catalogGithub'] as Map).cast<String, dynamic>())),
      devCenterId: pulumi.Output.create<String>(map['devCenterId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

