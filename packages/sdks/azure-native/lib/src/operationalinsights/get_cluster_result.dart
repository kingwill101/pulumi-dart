// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'associated_workspace_response.dart';
import 'capacity_reservation_properties_response.dart';
import 'cluster_sku_response.dart';
import 'key_vault_properties_response.dart';
import 'managed_service_identity_response.dart';

/// Result data returned by getCluster.
class GetClusterResult {
  /// The list of Log Analytics workspaces associated with the cluster
  final List<AssociatedWorkspaceResponse>? associatedWorkspaces;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The cluster's billing type.
  final String? billingType;
  /// Additional properties for capacity reservation
  final CapacityReservationPropertiesResponse? capacityReservationProperties;
  /// The ID associated with the cluster.
  final String clusterId;
  /// The cluster creation time
  final String createdDate;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Resource's identity.
  final ManagedServiceIdentityResponse? identity;
  /// Sets whether the cluster will support availability zones. This can be set as true only in regions where Azure Data Explorer support Availability Zones. This Property can not be modified after cluster creation. Default value is 'true' if region supports Availability Zones.
  final bool? isAvailabilityZonesEnabled;
  /// Configures whether cluster will use double encryption. This Property can not be modified after cluster creation. Default value is 'true'
  final bool? isDoubleEncryptionEnabled;
  /// The associated key properties.
  final KeyVaultPropertiesResponse? keyVaultProperties;
  /// The last time the cluster was updated.
  final String lastModifiedDate;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// The provisioning state of the cluster.
  final String provisioningState;
  /// The sku properties.
  final ClusterSkuResponse? sku;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetClusterResult].
  /// [associatedWorkspaces] The list of Log Analytics workspaces associated with the cluster
  /// [azureApiVersion] The Azure API version of the resource.
  /// [billingType] The cluster's billing type.
  /// [capacityReservationProperties] Additional properties for capacity reservation
  /// [clusterId] The ID associated with the cluster.
  /// [createdDate] The cluster creation time
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [identity] Resource's identity.
  /// [isAvailabilityZonesEnabled] Sets whether the cluster will support availability zones. This can be set as true only in regions where Azure Data Explorer support Availability Zones. This Property can not be modified after cluster creation. Default value is 'true' if region supports Availability Zones.
  /// [isDoubleEncryptionEnabled] Configures whether cluster will use double encryption. This Property can not be modified after cluster creation. Default value is 'true'
  /// [keyVaultProperties] The associated key properties.
  /// [lastModifiedDate] The last time the cluster was updated.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] The provisioning state of the cluster.
  /// [sku] The sku properties.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetClusterResult({
    this.associatedWorkspaces,
    required this.azureApiVersion,
    this.billingType,
    this.capacityReservationProperties,
    required this.clusterId,
    required this.createdDate,
    required this.id,
    this.identity,
    this.isAvailabilityZonesEnabled,
    this.isDoubleEncryptionEnabled,
    this.keyVaultProperties,
    required this.lastModifiedDate,
    required this.location,
    required this.name,
    required this.provisioningState,
    this.sku,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associatedWorkspaces': ?(() { final guardedValue = associatedWorkspaces; if (guardedValue == null) return null; return pulumi.Input.encodeList<AssociatedWorkspaceResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'azureApiVersion': azureApiVersion,
      'billingType': ?billingType,
      'capacityReservationProperties': ?capacityReservationProperties?.toMap(),
      'clusterId': clusterId,
      'createdDate': createdDate,
      'id': id,
      'identity': ?identity?.toMap(),
      'isAvailabilityZonesEnabled': ?isAvailabilityZonesEnabled,
      'isDoubleEncryptionEnabled': ?isDoubleEncryptionEnabled,
      'keyVaultProperties': ?keyVaultProperties?.toMap(),
      'lastModifiedDate': lastModifiedDate,
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'sku': ?sku?.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetClusterResult.fromMap(Map<String, dynamic> map) {
    return GetClusterResult(
      associatedWorkspaces: (() { final guardedValue = map['associatedWorkspaces']; if (guardedValue == null) return null; return pulumi.Input.decodeList<AssociatedWorkspaceResponse>(guardedValue, (value) => AssociatedWorkspaceResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      azureApiVersion: map['azureApiVersion'] as String,
      billingType: (() { final guardedValue = map['billingType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      capacityReservationProperties: (() { final guardedValue = map['capacityReservationProperties']; if (guardedValue == null) return null; return CapacityReservationPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      clusterId: map['clusterId'] as String,
      createdDate: map['createdDate'] as String,
      id: map['id'] as String,
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      isAvailabilityZonesEnabled: (() { final guardedValue = map['isAvailabilityZonesEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      isDoubleEncryptionEnabled: (() { final guardedValue = map['isDoubleEncryptionEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      keyVaultProperties: (() { final guardedValue = map['keyVaultProperties']; if (guardedValue == null) return null; return KeyVaultPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      lastModifiedDate: map['lastModifiedDate'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return ClusterSkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}
