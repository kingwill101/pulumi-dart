// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iceberg_catalog_federated_catalog_options.dart';
import 'iceberg_catalog_replica.dart';
import 'iceberg_catalog_restricted_locations_config.dart';

/// Input properties used for looking up and filtering IcebergCatalog resources.
class IcebergCatalogState {
  /// Output only. The service account used for credential vending. It might be empty if credential vending was never enabled for the catalog.
  final pulumi.Input<String?>? biglakeServiceAccount;
  /// Output only. The unique ID of the service account used for credential vending. Used for federation scenarios.
  final pulumi.Input<String?>? biglakeServiceAccountId;
  /// The catalog type of the IcebergCatalog.
  /// * `CATALOG_TYPE_GCS_BUCKET`: Google Cloud Storage bucket catalog type.
  /// * `CATALOG_TYPE_BIGLAKE`: BigLake catalog type.
  /// * `CATALOG_TYPE_FEDERATED`: Federated catalog type, for integrating with external Iceberg REST Catalogs such as Databricks Unity Catalog or AWS Glue.
  /// Possible values are: `CATALOG_TYPE_GCS_BUCKET`, `CATALOG_TYPE_BIGLAKE`, `CATALOG_TYPE_FEDERATED`.
  final pulumi.Input<String?>? catalogType;
  /// Output only. The creation time of the IcebergCatalog.
  final pulumi.Input<String?>? createTime;
  /// The credential mode used for the catalog. CREDENTIAL_MODE_END_USER - End user credentials, default. The authenticating user must have access to the catalog resources and the corresponding Google Cloud Storage files. CREDENTIAL_MODE_VENDED_CREDENTIALS - Use credential vending. The authenticating user must have access to the catalog resources and the system will provide the caller with downscoped credentials to access the Google Cloud Storage files. All table operations in this mode would require `X-Iceberg-Access-Delegation` header with `vended-credentials` value included. System will generate a service account and the catalog administrator must grant the service account appropriate permissions.
  /// Possible values are: `CREDENTIAL_MODE_END_USER`, `CREDENTIAL_MODE_VENDED_CREDENTIALS`.
  final pulumi.Input<String?>? credentialMode;
  /// The default storage location for the catalog, e.g., `gs://my-bucket`.
  /// Output only when the catalog type is CATALOG_TYPE_GCS_BUCKET.
  /// Required when the catalog type is CATALOG_TYPE_BIGLAKE.
  final pulumi.Input<String?>? defaultLocation;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// A user-provided description of the catalog. Maximum 1024 UTF-8 characters.
  final pulumi.Input<String?>? description;
  /// Options for a CATALOG_TYPE_FEDERATED catalog. Required when catalogType
  /// is CATALOG_TYPE_FEDERATED.
  /// Structure is documented below.
  final pulumi.Input<IcebergCatalogFederatedCatalogOptions?>? federatedCatalogOptions;
  /// The name of the IcebergCatalog.
  /// For CATALOG_TYPE_GCS_BUCKET typed catalogs, the name needs to be the
  /// exact same value of the GCS bucket's name. For example, for a bucket:
  /// gs://bucket-name, the catalog name will be exactly "bucket-name".
  final pulumi.Input<String?>? name;
  /// The primary location for mirroring the remote catalog metadata. It must be
  /// a BigLake-supported location, and it should be proximate to the remote
  /// catalog's location.
  final pulumi.Input<String?>? primaryLocation;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Output only. The replicas for the catalog metadata.
  /// Structure is documented below.
  final pulumi.Input<List<IcebergCatalogReplica>?>? replicas;
  /// Configuration for the additional GCS locations that are permitted for use
  /// by resources within this catalog.
  /// Structure is documented below.
  final pulumi.Input<IcebergCatalogRestrictedLocationsConfig?>? restrictedLocationsConfig;
  /// Output only. The GCP region(s) where the physical metadata for the tables is stored, e.g. `us-central1`, `nam4` or `us`. This will contain one value for all locations, except for the catalogs that are configured to use custom dual region buckets.
  final pulumi.Input<List<String>?>? storageRegions;
  /// Output only. The last modification time of the IcebergCatalog.
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [IcebergCatalogState].
  /// [biglakeServiceAccount] Output only. The service account used for credential vending. It might be empty if credential vending was never enabled for the catalog.
  /// [biglakeServiceAccountId] Output only. The unique ID of the service account used for credential vending. Used for federation scenarios.
  /// [catalogType] The catalog type of the IcebergCatalog.
  /// [createTime] Output only. The creation time of the IcebergCatalog.
  /// [credentialMode] The credential mode used for the catalog. CREDENTIAL_MODE_END_USER - End user credentials, default. The authenticating user must have access to the catalog resources and the corresponding Google Cloud Storage files. CREDENTIAL_MODE_VENDED_CREDENTIALS - Use credential vending. The authenticating user must have access to the catalog resources and the system will provide the caller with downscoped credentials to access the Google Cloud Storage files. All table operations in this mode would require `X-Iceberg-Access-Delegation` header with `vended-credentials` value included. System will generate a service account and the catalog administrator must grant the service account appropriate permissions.
  /// [defaultLocation] The default storage location for the catalog, e.g., `gs://my-bucket`.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] A user-provided description of the catalog. Maximum 1024 UTF-8 characters.
  /// [federatedCatalogOptions] Options for a CATALOG_TYPE_FEDERATED catalog. Required when catalogType
  /// [name] The name of the IcebergCatalog.
  /// [primaryLocation] The primary location for mirroring the remote catalog metadata. It must be
  /// [project] The ID of the project in which the resource belongs.
  /// [replicas] Output only. The replicas for the catalog metadata.
  /// [restrictedLocationsConfig] Configuration for the additional GCS locations that are permitted for use
  /// [storageRegions] Output only. The GCP region(s) where the physical metadata for the tables is stored, e.g. `us-central1`, `nam4` or `us`. This will contain one value for all locations, except for the catalogs that are configured to use custom dual region buckets.
  /// [updateTime] Output only. The last modification time of the IcebergCatalog.
  const IcebergCatalogState({
    this.biglakeServiceAccount,
    this.biglakeServiceAccountId,
    this.catalogType,
    this.createTime,
    this.credentialMode,
    this.defaultLocation,
    this.deletionPolicy,
    this.description,
    this.federatedCatalogOptions,
    this.name,
    this.primaryLocation,
    this.project,
    this.replicas,
    this.restrictedLocationsConfig,
    this.storageRegions,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'biglakeServiceAccount': ?biglakeServiceAccount,
      'biglakeServiceAccountId': ?biglakeServiceAccountId,
      'catalogType': ?catalogType,
      'createTime': ?createTime,
      'credentialMode': ?credentialMode,
      'defaultLocation': ?defaultLocation,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'federatedCatalogOptions': ?pulumi.Input.mapOptionalInputValue<IcebergCatalogFederatedCatalogOptions, Map<String, dynamic>>(federatedCatalogOptions, (value) => value.toMap()),
      'name': ?name,
      'primaryLocation': ?primaryLocation,
      'project': ?project,
      'replicas': ?pulumi.Input.mapOptionalInputValue<List<IcebergCatalogReplica>, List<Map<String, dynamic>>>(replicas, (value) => pulumi.Input.encodeList<IcebergCatalogReplica, Map<String, dynamic>>(value, (value) => value.toMap())),
      'restrictedLocationsConfig': ?pulumi.Input.mapOptionalInputValue<IcebergCatalogRestrictedLocationsConfig, Map<String, dynamic>>(restrictedLocationsConfig, (value) => value.toMap()),
      'storageRegions': ?storageRegions,
      'updateTime': ?updateTime,
    };
  }

  factory IcebergCatalogState.fromMap(Map<String, dynamic> map) {
    return IcebergCatalogState(
      biglakeServiceAccount: (() { final guardedValue = map['biglakeServiceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      biglakeServiceAccountId: (() { final guardedValue = map['biglakeServiceAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      catalogType: (() { final guardedValue = map['catalogType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      credentialMode: (() { final guardedValue = map['credentialMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultLocation: (() { final guardedValue = map['defaultLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      federatedCatalogOptions: (() { final guardedValue = map['federatedCatalogOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IcebergCatalogFederatedCatalogOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryLocation: (() { final guardedValue = map['primaryLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicas: (() { final guardedValue = map['replicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IcebergCatalogReplica>(guardedValue, (value) => IcebergCatalogReplica.fromMap((value as Map).cast<String, dynamic>()))); })(),
      restrictedLocationsConfig: (() { final guardedValue = map['restrictedLocationsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IcebergCatalogRestrictedLocationsConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storageRegions: (() { final guardedValue = map['storageRegions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
