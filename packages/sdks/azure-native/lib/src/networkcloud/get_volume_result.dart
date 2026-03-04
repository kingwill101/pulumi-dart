// ignore_for_file: unused_element, unnecessary_cast

import 'extended_location_response.dart';
import 'system_data_response.dart';

/// Result data returned by getVolume.
class GetVolumeResult {
  /// The list of resource IDs that attach the volume. It may include virtual machines and Hybrid AKS clusters.
  final List<String> attachedTo;

  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// The more detailed status of the volume.
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

  /// The provisioning state of the volume.
  final String provisioningState;

  /// The unique identifier of the volume.
  final String serialNumber;

  /// The size of the allocation for this volume in Mebibytes.
  final double sizeMiB;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;

  /// Resource tags.
  final Map<String, String>? tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetVolumeResult].
  /// [attachedTo] The list of resource IDs that attach the volume. It may include virtual machines and Hybrid AKS clusters.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [detailedStatus] The more detailed status of the volume.
  /// [detailedStatusMessage] The descriptive message about the current detailed status.
  /// [etag] Resource ETag.
  /// [extendedLocation] The extended location of the cluster associated with the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] The provisioning state of the volume.
  /// [serialNumber] The unique identifier of the volume.
  /// [sizeMiB] The size of the allocation for this volume in Mebibytes.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetVolumeResult({
    required this.attachedTo,
    required this.azureApiVersion,
    required this.detailedStatus,
    required this.detailedStatusMessage,
    required this.etag,
    required this.extendedLocation,
    required this.id,
    required this.location,
    required this.name,
    required this.provisioningState,
    required this.serialNumber,
    required this.sizeMiB,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachedTo': attachedTo,
      'azureApiVersion': azureApiVersion,
      'detailedStatus': detailedStatus,
      'detailedStatusMessage': detailedStatusMessage,
      'etag': etag,
      'extendedLocation': extendedLocation.toMap(),
      'id': id,
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'serialNumber': serialNumber,
      'sizeMiB': sizeMiB,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetVolumeResult.fromMap(Map<String, dynamic> map) {
    return GetVolumeResult(
      attachedTo: (map['attachedTo'] as List).cast<String>(),
      azureApiVersion: map['azureApiVersion'] as String,
      detailedStatus: map['detailedStatus'] as String,
      detailedStatusMessage: map['detailedStatusMessage'] as String,
      etag: map['etag'] as String,
      extendedLocation: ExtendedLocationResponse.fromMap(
        (map['extendedLocation']! as Map).cast<String, dynamic>(),
      ),
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      serialNumber: map['serialNumber'] as String,
      sizeMiB: map['sizeMiB'] as double,
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      type: map['type'] as String,
    );
  }
}
