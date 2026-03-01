// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iceberg_catalog_replica.dart';

/// Input properties used for looking up and filtering IcebergCatalog resources.
class IcebergCatalogState {
  /// Output only. The service account used for credential vending. It might be empty if credential vending was never enabled for the catalog.
  final pulumi.Input<String>? biglakeServiceAccount;
  /// The catalog type of the IcebergCatalog. Currently only supports the type for Google Cloud Storage Buckets.
  /// Possible values are: `CATALOG_TYPE_GCS_BUCKET`.
  final pulumi.Input<String>? catalogType;
  /// Output only. The creation time of the IcebergCatalog.
  final pulumi.Input<String>? createTime;
  /// The credential mode used for the catalog. CREDENTIAL_MODE_END_USER - End user credentials, default. The authenticating user must have access to the catalog resources and the corresponding Google Cloud Storage files. CREDENTIAL_MODE_VENDED_CREDENTIALS - Use credential vending. The authenticating user must have access to the catalog resources and the system will provide the caller with downscoped credentials to access the Google Cloud Storage files. All table operations in this mode would require `X-Iceberg-Access-Delegation` header with `vended-credentials` value included. System will generate a service account and the catalog administrator must grant the service account appropriate permissions.
  /// Possible values are: `CREDENTIAL_MODE_END_USER`, `CREDENTIAL_MODE_VENDED_CREDENTIALS`.
  final pulumi.Input<String>? credentialMode;
  /// Output only. The default storage location for the catalog, e.g., `gs://my-bucket`.
  final pulumi.Input<String>? defaultLocation;
  /// The name of the IcebergCatalog. Format:
  /// projects/{project_id_or_number}/catalogs/{iceberg_catalog_id}
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Output only. The replicas for the catalog metadata.
  /// Structure is documented below.
  final pulumi.Input<List<IcebergCatalogReplica>>? replicas;
  /// Output only. The GCP region(s) where the physical metadata for the tables is stored, e.g. `us-central1`, `nam4` or `us`. This will contain one value for all locations, except for the catalogs that are configured to use custom dual region buckets.
  final pulumi.Input<List<String>>? storageRegions;
  /// Output only. The last modification time of the IcebergCatalog.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [IcebergCatalogState].
  /// [biglakeServiceAccount] Output only. The service account used for credential vending. It might be empty if credential vending was never enabled for the catalog.
  /// [catalogType] The catalog type of the IcebergCatalog. Currently only supports the type for Google Cloud Storage Buckets.
  /// [createTime] Output only. The creation time of the IcebergCatalog.
  /// [credentialMode] The credential mode used for the catalog. CREDENTIAL_MODE_END_USER - End user credentials, default. The authenticating user must have access to the catalog resources and the corresponding Google Cloud Storage files. CREDENTIAL_MODE_VENDED_CREDENTIALS - Use credential vending. The authenticating user must have access to the catalog resources and the system will provide the caller with downscoped credentials to access the Google Cloud Storage files. All table operations in this mode would require `X-Iceberg-Access-Delegation` header with `vended-credentials` value included. System will generate a service account and the catalog administrator must grant the service account appropriate permissions.
  /// [defaultLocation] Output only. The default storage location for the catalog, e.g., `gs://my-bucket`.
  /// [name] The name of the IcebergCatalog. Format:
  /// [project] The ID of the project in which the resource belongs.
  /// [replicas] Output only. The replicas for the catalog metadata.
  /// [storageRegions] Output only. The GCP region(s) where the physical metadata for the tables is stored, e.g. `us-central1`, `nam4` or `us`. This will contain one value for all locations, except for the catalogs that are configured to use custom dual region buckets.
  /// [updateTime] Output only. The last modification time of the IcebergCatalog.
  IcebergCatalogState({
    pulumi.Output<String>? biglakeServiceAccount,
    pulumi.Output<String>? catalogType,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? credentialMode,
    pulumi.Output<String>? defaultLocation,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<List<IcebergCatalogReplica>>? replicas,
    pulumi.Output<List<String>>? storageRegions,
    pulumi.Output<String>? updateTime,
  }) :
      biglakeServiceAccount = pulumi.Input.asOptionalInput<String>(biglakeServiceAccount),
      catalogType = pulumi.Input.asOptionalInput<String>(catalogType),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      credentialMode = pulumi.Input.asOptionalInput<String>(credentialMode),
      defaultLocation = pulumi.Input.asOptionalInput<String>(defaultLocation),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      replicas = pulumi.Input.asOptionalInput<List<IcebergCatalogReplica>>(replicas),
      storageRegions = pulumi.Input.asOptionalInput<List<String>>(storageRegions),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'biglakeServiceAccount': ?biglakeServiceAccount,
      'catalogType': ?catalogType,
      'createTime': ?createTime,
      'credentialMode': ?credentialMode,
      'defaultLocation': ?defaultLocation,
      'name': ?name,
      'project': ?project,
      'replicas': ?pulumi.Input.mapOptionalInputValue<List<IcebergCatalogReplica>, List<Map<String, dynamic>>>(replicas, (value) => pulumi.Input.encodeList<IcebergCatalogReplica, Map<String, dynamic>>(value, (value) => value.toMap())),
      'storageRegions': ?storageRegions,
      'updateTime': ?updateTime,
    };
  }

  factory IcebergCatalogState.fromMap(Map<String, dynamic> map) {
    return IcebergCatalogState(
      biglakeServiceAccount: map['biglakeServiceAccount'] == null ? null : pulumi.Output.create<String>(map['biglakeServiceAccount'] as String),
      catalogType: map['catalogType'] == null ? null : pulumi.Output.create<String>(map['catalogType'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      credentialMode: map['credentialMode'] == null ? null : pulumi.Output.create<String>(map['credentialMode'] as String),
      defaultLocation: map['defaultLocation'] == null ? null : pulumi.Output.create<String>(map['defaultLocation'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      replicas: map['replicas'] == null ? null : pulumi.Output.create<List<IcebergCatalogReplica>>(pulumi.Input.decodeList<IcebergCatalogReplica>(map['replicas'], (value) => IcebergCatalogReplica.fromMap((value as Map).cast<String, dynamic>()))),
      storageRegions: map['storageRegions'] == null ? null : pulumi.Output.create<List<String>>((map['storageRegions'] as List).cast<String>()),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

