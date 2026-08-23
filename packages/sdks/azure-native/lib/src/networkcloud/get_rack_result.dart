// ignore_for_file: unused_element, unnecessary_cast

import 'extended_location_response.dart';
import 'system_data_response.dart';

/// Result data returned by getRack.
class GetRackResult {
  /// The value that will be used for machines in this rack to represent the availability zones that can be referenced by Hybrid AKS Clusters for node arrangement.
  final String availabilityZone;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The resource ID of the cluster the rack is created for. This value is set when the rack is created by the cluster.
  final String clusterId;
  /// The more detailed status of the rack.
  final String detailedStatus;
  /// The descriptive message about the current detailed status.
  final String detailedStatusMessage;
  /// Resource ETag.
  final String etag;
  /// The extended location of the cluster associated with the resource.
  final ExtendedLocationResponse extendedLocation;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// The provisioning state of the rack resource.
  final String provisioningState;
  /// The free-form description of the rack location. (e.g. “DTN Datacenter, Floor 3, Isle 9, Rack 2B”)
  final String rackLocation;
  /// The unique identifier for the rack within Network Cloud cluster. An alternate unique alphanumeric value other than a serial number may be provided if desired.
  final String rackSerialNumber;
  /// The SKU for the rack.
  final String rackSkuId;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetRackResult].
  /// [availabilityZone] The value that will be used for machines in this rack to represent the availability zones that can be referenced by Hybrid AKS Clusters for node arrangement.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [clusterId] The resource ID of the cluster the rack is created for. This value is set when the rack is created by the cluster.
  /// [detailedStatus] The more detailed status of the rack.
  /// [detailedStatusMessage] The descriptive message about the current detailed status.
  /// [etag] Resource ETag.
  /// [extendedLocation] The extended location of the cluster associated with the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] The provisioning state of the rack resource.
  /// [rackLocation] The free-form description of the rack location. (e.g. “DTN Datacenter, Floor 3, Isle 9, Rack 2B”)
  /// [rackSerialNumber] The unique identifier for the rack within Network Cloud cluster. An alternate unique alphanumeric value other than a serial number may be provided if desired.
  /// [rackSkuId] The SKU for the rack.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetRackResult({
    required this.availabilityZone,
    required this.azureApiVersion,
    required this.clusterId,
    required this.detailedStatus,
    required this.detailedStatusMessage,
    required this.etag,
    required this.extendedLocation,
    required this.id,
    required this.location,
    required this.name,
    required this.provisioningState,
    required this.rackLocation,
    required this.rackSerialNumber,
    required this.rackSkuId,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZone': availabilityZone,
      'azureApiVersion': azureApiVersion,
      'clusterId': clusterId,
      'detailedStatus': detailedStatus,
      'detailedStatusMessage': detailedStatusMessage,
      'etag': etag,
      'extendedLocation': extendedLocation.toMap(),
      'id': id,
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'rackLocation': rackLocation,
      'rackSerialNumber': rackSerialNumber,
      'rackSkuId': rackSkuId,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetRackResult.fromMap(Map<String, dynamic> map) {
    return GetRackResult(
      availabilityZone: map['availabilityZone'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      clusterId: map['clusterId'] as String,
      detailedStatus: map['detailedStatus'] as String,
      detailedStatusMessage: map['detailedStatusMessage'] as String,
      etag: map['etag'] as String,
      extendedLocation: ExtendedLocationResponse.fromMap((map['extendedLocation']! as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      rackLocation: map['rackLocation'] as String,
      rackSerialNumber: map['rackSerialNumber'] as String,
      rackSkuId: map['rackSkuId'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}
