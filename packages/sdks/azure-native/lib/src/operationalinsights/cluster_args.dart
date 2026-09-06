// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_sku.dart';
import 'key_vault_properties.dart';
import 'managed_service_identity.dart';

/// {@template pulumi_operationalinsights_cluster_args_doc}
/// The set of arguments for Cluster.
/// {@endtemplate}
/// {@macro pulumi_operationalinsights_cluster_args_doc}
class ClusterArgs {
  /// The cluster's billing type.
  final pulumi.Input<dynamic>? billingType;
  /// The name of the Log Analytics cluster.
  final pulumi.Input<String?>? clusterName;
  /// Resource's identity.
  final pulumi.Input<ManagedServiceIdentity?>? identity;
  /// Sets whether the cluster will support availability zones. This can be set as true only in regions where Azure Data Explorer support Availability Zones. This Property can not be modified after cluster creation. Default value is 'true' if region supports Availability Zones.
  final pulumi.Input<bool?>? isAvailabilityZonesEnabled;
  /// Configures whether cluster will use double encryption. This Property can not be modified after cluster creation. Default value is 'true'
  final pulumi.Input<bool?>? isDoubleEncryptionEnabled;
  /// The associated key properties.
  final pulumi.Input<KeyVaultProperties?>? keyVaultProperties;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The sku properties.
  final pulumi.Input<ClusterSku?>? sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [ClusterArgs].
  /// [billingType] The cluster's billing type.
  /// [clusterName] The name of the Log Analytics cluster.
  /// [identity] Resource's identity.
  /// [isAvailabilityZonesEnabled] Sets whether the cluster will support availability zones. This can be set as true only in regions where Azure Data Explorer support Availability Zones. This Property can not be modified after cluster creation. Default value is 'true' if region supports Availability Zones.
  /// [isDoubleEncryptionEnabled] Configures whether cluster will use double encryption. This Property can not be modified after cluster creation. Default value is 'true'
  /// [keyVaultProperties] The associated key properties.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] The sku properties.
  /// [tags] Resource tags.
  const ClusterArgs({
    this.billingType,
    this.clusterName,
    this.identity,
    this.isAvailabilityZonesEnabled,
    this.isDoubleEncryptionEnabled,
    this.keyVaultProperties,
    this.location,
    required this.resourceGroupName,
    this.sku,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingType': ?billingType,
      'clusterName': ?clusterName,
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'isAvailabilityZonesEnabled': ?isAvailabilityZonesEnabled,
      'isDoubleEncryptionEnabled': ?isDoubleEncryptionEnabled,
      'keyVaultProperties': ?pulumi.Input.mapOptionalInputValue<KeyVaultProperties, Map<String, dynamic>>(keyVaultProperties, (value) => value.toMap()),
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<ClusterSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory ClusterArgs.fromMap(Map<String, dynamic> map) {
    return ClusterArgs(
      billingType: (() { final guardedValue = map['billingType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      clusterName: (() { final guardedValue = map['clusterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedServiceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      isAvailabilityZonesEnabled: (() { final guardedValue = map['isAvailabilityZonesEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isDoubleEncryptionEnabled: (() { final guardedValue = map['isDoubleEncryptionEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      keyVaultProperties: (() { final guardedValue = map['keyVaultProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KeyVaultProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterSku.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
