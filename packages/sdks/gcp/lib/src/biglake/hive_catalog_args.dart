// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_biglake_hive_catalog_hive_catalog_args_doc}
/// The set of arguments for HiveCatalog.
/// {@endtemplate}
/// {@macro pulumi_biglake_hive_catalog_hive_catalog_args_doc}
class HiveCatalogArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Description of the Hive catalog.
  final pulumi.Input<String?>? description;
  /// Cloud Storage location path where the catalog data will be stored. Format: gs://bucket/path/to/catalog
  final pulumi.Input<String> locationUri;
  /// Name of the Hive Catalog.
  final pulumi.Input<String?>? name;
  /// The primary location for mirroring the remote catalog metadata. It must be
  /// a BigLake-supported location, and it should be proximate to the remote
  /// catalog's location.
  final pulumi.Input<String> primaryLocation;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [HiveCatalogArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Description of the Hive catalog.
  /// [locationUri] Cloud Storage location path where the catalog data will be stored. Format: gs://bucket/path/to/catalog
  /// [name] Name of the Hive Catalog.
  /// [primaryLocation] The primary location for mirroring the remote catalog metadata. It must be
  /// [project] The ID of the project in which the resource belongs.
  const HiveCatalogArgs({
    this.deletionPolicy,
    this.description,
    required this.locationUri,
    this.name,
    required this.primaryLocation,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'locationUri': locationUri,
      'name': ?name,
      'primaryLocation': primaryLocation,
      'project': ?project,
    };
  }

  factory HiveCatalogArgs.fromMap(Map<String, dynamic> map) {
    return HiveCatalogArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      locationUri: pulumi.Input.fromValue(map['locationUri'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryLocation: pulumi.Input.fromValue(map['primaryLocation'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
