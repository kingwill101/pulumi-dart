// ignore_for_file: unused_element, unnecessary_cast

import 'volume_provider_parameters_azure_file_response.dart';

/// Result data returned by getVolume.
class GetVolumeResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// This type describes a volume provided by an Azure Files file share.
  final VolumeProviderParametersAzureFileResponse? azureFileParameters;
  /// User readable description of the volume.
  final String? description;
  /// Fully qualified identifier for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// Provider of the volume.
  final String? provider;
  /// State of the resource.
  final String? provisioningState;
  /// Status of the volume.
  final String? status;
  /// Gives additional information about the current status of the volume.
  final String? statusDetails;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts.
  final String? type;

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
    this.azureApiVersion,
    this.azureFileParameters,
    this.description,
    this.id,
    this.location,
    this.name,
    this.provider,
    this.provisioningState,
    this.status,
    this.statusDetails,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'azureFileParameters': ?azureFileParameters?.toMap(),
      'description': ?description,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'provider': ?provider,
      'provisioningState': ?provisioningState,
      'status': ?status,
      'statusDetails': ?statusDetails,
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetVolumeResult.fromMap(Map<String, dynamic> map) {
    return GetVolumeResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureFileParameters: (() { final guardedValue = map['azureFileParameters']; if (guardedValue == null) return null; return VolumeProviderParametersAzureFileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provider: (() { final guardedValue = map['provider']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      statusDetails: (() { final guardedValue = map['statusDetails']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
