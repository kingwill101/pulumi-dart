// ignore_for_file: unused_element, unnecessary_cast

import 'volume_provider_parameters_azure_file_response.dart';

/// Result data returned by getVolume.
class GetVolumeResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// This type describes a volume provided by an Azure Files file share.
  final VolumeProviderParametersAzureFileResponse? azureFileParameters;
  /// User readable description of the volume.
  final String? description;
  /// Fully qualified identifier for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// Provider of the volume.
  final String provider;
  /// State of the resource.
  final String provisioningState;
  /// Status of the volume.
  final String status;
  /// Gives additional information about the current status of the volume.
  final String statusDetails;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts.
  final String type;

  /// Creates a new [GetVolumeResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [azureFileParameters] This type describes a volume provided by an Azure Files file share.
  /// [description] User readable description of the volume.
  /// [id] Fully qualified identifier for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provider] Provider of the volume.
  /// [provisioningState] State of the resource.
  /// [status] Status of the volume.
  /// [statusDetails] Gives additional information about the current status of the volume.
  /// [tags] Resource tags.
  /// [type] The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts.
  const GetVolumeResult({
    required this.azureApiVersion,
    this.azureFileParameters,
    this.description,
    required this.id,
    required this.location,
    required this.name,
    required this.provider,
    required this.provisioningState,
    required this.status,
    required this.statusDetails,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'azureFileParameters': ?azureFileParameters?.toMap(),
      'description': ?description,
      'id': id,
      'location': location,
      'name': name,
      'provider': provider,
      'provisioningState': provisioningState,
      'status': status,
      'statusDetails': statusDetails,
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetVolumeResult.fromMap(Map<String, dynamic> map) {
    return GetVolumeResult(
      azureApiVersion: map['azureApiVersion'] as String,
      azureFileParameters: (() { final guardedValue = map['azureFileParameters']; if (guardedValue == null) return null; return VolumeProviderParametersAzureFileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      provider: map['provider'] as String,
      provisioningState: map['provisioningState'] as String,
      status: map['status'] as String,
      statusDetails: map['statusDetails'] as String,
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}
