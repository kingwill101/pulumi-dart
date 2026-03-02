// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_biglake_iceberg_catalog_iceberg_catalog_args_doc}
/// The set of arguments for IcebergCatalog.
/// {@endtemplate}
/// {@macro pulumi_biglake_iceberg_catalog_iceberg_catalog_args_doc}
class IcebergCatalogArgs {
  /// The catalog type of the IcebergCatalog. Currently only supports the type for Google Cloud Storage Buckets.
  /// Possible values are: `CATALOG_TYPE_GCS_BUCKET`.
  final pulumi.Input<String> catalogType;
  /// The credential mode used for the catalog. CREDENTIAL_MODE_END_USER - End user credentials, default. The authenticating user must have access to the catalog resources and the corresponding Google Cloud Storage files. CREDENTIAL_MODE_VENDED_CREDENTIALS - Use credential vending. The authenticating user must have access to the catalog resources and the system will provide the caller with downscoped credentials to access the Google Cloud Storage files. All table operations in this mode would require `X-Iceberg-Access-Delegation` header with `vended-credentials` value included. System will generate a service account and the catalog administrator must grant the service account appropriate permissions.
  /// Possible values are: `CREDENTIAL_MODE_END_USER`, `CREDENTIAL_MODE_VENDED_CREDENTIALS`.
  final pulumi.Input<String>? credentialMode;
  /// The name of the IcebergCatalog. Format:
  /// projects/{project_id_or_number}/catalogs/{iceberg_catalog_id}
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [IcebergCatalogArgs].
  /// [catalogType] The catalog type of the IcebergCatalog. Currently only supports the type for Google Cloud Storage Buckets.
  /// [credentialMode] The credential mode used for the catalog. CREDENTIAL_MODE_END_USER - End user credentials, default. The authenticating user must have access to the catalog resources and the corresponding Google Cloud Storage files. CREDENTIAL_MODE_VENDED_CREDENTIALS - Use credential vending. The authenticating user must have access to the catalog resources and the system will provide the caller with downscoped credentials to access the Google Cloud Storage files. All table operations in this mode would require `X-Iceberg-Access-Delegation` header with `vended-credentials` value included. System will generate a service account and the catalog administrator must grant the service account appropriate permissions.
  /// [name] The name of the IcebergCatalog. Format:
  /// [project] The ID of the project in which the resource belongs.
  IcebergCatalogArgs({
    required this.catalogType,
    this.credentialMode,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogType': catalogType,
      'credentialMode': ?credentialMode,
      'name': ?name,
      'project': ?project,
    };
  }

  factory IcebergCatalogArgs.fromMap(Map<String, dynamic> map) {
    return IcebergCatalogArgs(
      catalogType: (map['catalogType'] as String).input(),
      credentialMode: map['credentialMode'] == null ? null : (map['credentialMode']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

