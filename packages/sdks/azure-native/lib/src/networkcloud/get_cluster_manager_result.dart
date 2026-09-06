// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_available_version_response.dart';
import 'extended_location_response.dart';
import 'managed_resource_group_configuration_response.dart';
import 'managed_service_identity_response.dart';
import 'system_data_response.dart';

/// Result data returned by getClusterManager.
class GetClusterManagerResult {
  /// The resource ID of the Log Analytics workspace that is used for the logs collection.
  final String? analyticsWorkspaceId;
  /// Field deprecated, this value will no longer influence the cluster manager allocation process and will be removed in a future version. The Azure availability zones within the region that will be used to support the cluster manager resource.
  final List<String>? availabilityZones;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The list of the cluster versions the manager supports. It is used as input in clusterVersion property of a cluster resource.
  final List<ClusterAvailableVersionResponse>? clusterVersions;
  /// The detailed status that provides additional information about the cluster manager.
  final String? detailedStatus;
  /// The descriptive message about the current detailed status.
  final String? detailedStatusMessage;
  /// Resource ETag.
  final String? etag;
  /// The resource ID of the fabric controller that has one to one mapping with the cluster manager.
  final String? fabricControllerId;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The identity of the cluster manager.
  final ManagedServiceIdentityResponse? identity;
  /// The geo-location where the resource lives
  final String? location;
  /// The configuration of the managed resource group associated with the resource.
  final ManagedResourceGroupConfigurationResponse? managedResourceGroupConfiguration;
  /// The extended location (custom location) that represents the cluster manager's control plane location. This extended location is used when creating cluster and rack manifest resources.
  final ExtendedLocationResponse? managerExtendedLocation;
  /// The name of the resource
  final String? name;
  /// The provisioning state of the cluster manager.
  final String? provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// Field deprecated, this value will no longer influence the cluster manager allocation process and will be removed in a future version. The size of the Azure virtual machines to use for hosting the cluster manager resource.
  final String? vmSize;

  /// Creates a new [GetClusterManagerResult].
  /// [analyticsWorkspaceId] The resource ID of the Log Analytics workspace that is used for the logs collection.
  /// [availabilityZones] Field deprecated, this value will no longer influence the cluster manager allocation process and will be removed in a future version. The Azure availability zones within the region that will be used to support the cluster manager resource.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [clusterVersions] The list of the cluster versions the manager supports. It is used as input in clusterVersion property of a cluster resource.
  /// [detailedStatus] The detailed status that provides additional information about the cluster manager.
  /// [detailedStatusMessage] The descriptive message about the current detailed status.
  /// [etag] Resource ETag.
  /// [fabricControllerId] The resource ID of the fabric controller that has one to one mapping with the cluster manager.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [identity] The identity of the cluster manager.
  /// [location] The geo-location where the resource lives
  /// [managedResourceGroupConfiguration] The configuration of the managed resource group associated with the resource.
  /// [managerExtendedLocation] The extended location (custom location) that represents the cluster manager's control plane location. This extended location is used when creating cluster and rack manifest resources.
  /// [name] The name of the resource
  /// [provisioningState] The provisioning state of the cluster manager.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [vmSize] Field deprecated, this value will no longer influence the cluster manager allocation process and will be removed in a future version. The size of the Azure virtual machines to use for hosting the cluster manager resource.
  const GetClusterManagerResult({
    this.analyticsWorkspaceId,
    this.availabilityZones,
    this.azureApiVersion,
    this.clusterVersions,
    this.detailedStatus,
    this.detailedStatusMessage,
    this.etag,
    this.fabricControllerId,
    this.id,
    this.identity,
    this.location,
    this.managedResourceGroupConfiguration,
    this.managerExtendedLocation,
    this.name,
    this.provisioningState,
    this.systemData,
    this.tags,
    this.type,
    this.vmSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analyticsWorkspaceId': ?analyticsWorkspaceId,
      'availabilityZones': ?availabilityZones,
      'azureApiVersion': ?azureApiVersion,
      'clusterVersions': ?(() { final guardedValue = clusterVersions; if (guardedValue == null) return null; return pulumi.Input.encodeList<ClusterAvailableVersionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'detailedStatus': ?detailedStatus,
      'detailedStatusMessage': ?detailedStatusMessage,
      'etag': ?etag,
      'fabricControllerId': ?fabricControllerId,
      'id': ?id,
      'identity': ?identity?.toMap(),
      'location': ?location,
      'managedResourceGroupConfiguration': ?managedResourceGroupConfiguration?.toMap(),
      'managerExtendedLocation': ?managerExtendedLocation?.toMap(),
      'name': ?name,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'vmSize': ?vmSize,
    };
  }

  factory GetClusterManagerResult.fromMap(Map<String, dynamic> map) {
    return GetClusterManagerResult(
      analyticsWorkspaceId: (() { final guardedValue = map['analyticsWorkspaceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      availabilityZones: (() { final guardedValue = map['availabilityZones']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clusterVersions: (() { final guardedValue = map['clusterVersions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ClusterAvailableVersionResponse>(guardedValue, (value) => ClusterAvailableVersionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      detailedStatus: (() { final guardedValue = map['detailedStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      detailedStatusMessage: (() { final guardedValue = map['detailedStatusMessage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fabricControllerId: (() { final guardedValue = map['fabricControllerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managedResourceGroupConfiguration: (() { final guardedValue = map['managedResourceGroupConfiguration']; if (guardedValue == null) return null; return ManagedResourceGroupConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      managerExtendedLocation: (() { final guardedValue = map['managerExtendedLocation']; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vmSize: (() { final guardedValue = map['vmSize']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
