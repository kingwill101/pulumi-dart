// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iceberg_catalog_federated_catalog_options_glue_catalog_info.dart';
import 'iceberg_catalog_federated_catalog_options_refresh_options.dart';
import 'iceberg_catalog_federated_catalog_options_refresh_status.dart';
import 'iceberg_catalog_federated_catalog_options_unity_catalog_info.dart';

class IcebergCatalogFederatedCatalogOptions {
  /// Configuration for an AWS Glue remote catalog. Exactly one of
  /// unityCatalogInfo or glueCatalogInfo must be specified.
  /// Structure is documented below.
  final pulumi.Input<IcebergCatalogFederatedCatalogOptionsGlueCatalogInfo>? glueCatalogInfo;
  /// Configuration for metadata synchronization from the remote catalog.
  /// Structure is documented below.
  final pulumi.Input<IcebergCatalogFederatedCatalogOptionsRefreshOptions>? refreshOptions;
  /// (Output)
  /// Output only. The status of the most recent metadata refresh.
  /// Structure is documented below.
  final pulumi.Input<List<IcebergCatalogFederatedCatalogOptionsRefreshStatus>>? refreshStatuses;
  /// The secret resource name in Secret Manager, in the format
  /// `projects/{projectId}/locations/{location}/secrets/{secret_id}`.
  /// Used to store credentials for authenticating with the remote catalog.
  final pulumi.Input<String>? secretName;
  /// The Service Directory service name for private network connectivity
  /// through Cross-Cloud Interconnect.
  final pulumi.Input<String>? serviceDirectoryName;
  /// Configuration for a Databricks Unity Catalog remote catalog. Exactly
  /// one of unityCatalogInfo or glueCatalogInfo must be specified.
  /// Structure is documented below.
  final pulumi.Input<IcebergCatalogFederatedCatalogOptionsUnityCatalogInfo>? unityCatalogInfo;

  /// Creates a new [IcebergCatalogFederatedCatalogOptions].
  /// [glueCatalogInfo] Configuration for an AWS Glue remote catalog. Exactly one of
  /// [refreshOptions] Configuration for metadata synchronization from the remote catalog.
  /// [refreshStatuses] (Output)
  /// [secretName] The secret resource name in Secret Manager, in the format
  /// [serviceDirectoryName] The Service Directory service name for private network connectivity
  /// [unityCatalogInfo] Configuration for a Databricks Unity Catalog remote catalog. Exactly
  const IcebergCatalogFederatedCatalogOptions({
    this.glueCatalogInfo,
    this.refreshOptions,
    this.refreshStatuses,
    this.secretName,
    this.serviceDirectoryName,
    this.unityCatalogInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'glueCatalogInfo': ?pulumi.Input.mapOptionalInputValue<IcebergCatalogFederatedCatalogOptionsGlueCatalogInfo, Map<String, dynamic>>(glueCatalogInfo, (value) => value.toMap()),
      'refreshOptions': ?pulumi.Input.mapOptionalInputValue<IcebergCatalogFederatedCatalogOptionsRefreshOptions, Map<String, dynamic>>(refreshOptions, (value) => value.toMap()),
      'refreshStatuses': ?pulumi.Input.mapOptionalInputValue<List<IcebergCatalogFederatedCatalogOptionsRefreshStatus>, List<Map<String, dynamic>>>(refreshStatuses, (value) => pulumi.Input.encodeList<IcebergCatalogFederatedCatalogOptionsRefreshStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'secretName': ?secretName,
      'serviceDirectoryName': ?serviceDirectoryName,
      'unityCatalogInfo': ?pulumi.Input.mapOptionalInputValue<IcebergCatalogFederatedCatalogOptionsUnityCatalogInfo, Map<String, dynamic>>(unityCatalogInfo, (value) => value.toMap()),
    };
  }

  factory IcebergCatalogFederatedCatalogOptions.fromMap(Map<String, dynamic> map) {
    return IcebergCatalogFederatedCatalogOptions(
      glueCatalogInfo: (() { final guardedValue = map['glueCatalogInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IcebergCatalogFederatedCatalogOptionsGlueCatalogInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      refreshOptions: (() { final guardedValue = map['refreshOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IcebergCatalogFederatedCatalogOptionsRefreshOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      refreshStatuses: (() { final guardedValue = map['refreshStatuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IcebergCatalogFederatedCatalogOptionsRefreshStatus>(guardedValue, (value) => IcebergCatalogFederatedCatalogOptionsRefreshStatus.fromMap((value as Map).cast<String, dynamic>()))); })(),
      secretName: (() { final guardedValue = map['secretName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceDirectoryName: (() { final guardedValue = map['serviceDirectoryName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      unityCatalogInfo: (() { final guardedValue = map['unityCatalogInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IcebergCatalogFederatedCatalogOptionsUnityCatalogInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
