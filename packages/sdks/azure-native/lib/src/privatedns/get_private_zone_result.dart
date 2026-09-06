// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getPrivateZone.
class GetPrivateZoneResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The ETag of the zone.
  final String? etag;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// Private zone internal Id
  final String? internalId;
  /// The Azure Region where the resource lives
  final String? location;
  /// The maximum number of record sets that can be created in this Private DNS zone. This is a read-only property and any attempt to set this value will be ignored.
  final double? maxNumberOfRecordSets;
  /// The maximum number of virtual networks that can be linked to this Private DNS zone. This is a read-only property and any attempt to set this value will be ignored.
  final double? maxNumberOfVirtualNetworkLinks;
  /// The maximum number of virtual networks that can be linked to this Private DNS zone with registration enabled. This is a read-only property and any attempt to set this value will be ignored.
  final double? maxNumberOfVirtualNetworkLinksWithRegistration;
  /// The name of the resource
  final String? name;
  /// The current number of record sets in this Private DNS zone. This is a read-only property and any attempt to set this value will be ignored.
  final double? numberOfRecordSets;
  /// The current number of virtual networks that are linked to this Private DNS zone. This is a read-only property and any attempt to set this value will be ignored.
  final double? numberOfVirtualNetworkLinks;
  /// The current number of virtual networks that are linked to this Private DNS zone with registration enabled. This is a read-only property and any attempt to set this value will be ignored.
  final double? numberOfVirtualNetworkLinksWithRegistration;
  /// The provisioning state of the resource. This is a read-only property and any attempt to set this value will be ignored.
  final String? provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetPrivateZoneResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] The ETag of the zone.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [internalId] Private zone internal Id
  /// [location] The Azure Region where the resource lives
  /// [maxNumberOfRecordSets] The maximum number of record sets that can be created in this Private DNS zone. This is a read-only property and any attempt to set this value will be ignored.
  /// [maxNumberOfVirtualNetworkLinks] The maximum number of virtual networks that can be linked to this Private DNS zone. This is a read-only property and any attempt to set this value will be ignored.
  /// [maxNumberOfVirtualNetworkLinksWithRegistration] The maximum number of virtual networks that can be linked to this Private DNS zone with registration enabled. This is a read-only property and any attempt to set this value will be ignored.
  /// [name] The name of the resource
  /// [numberOfRecordSets] The current number of record sets in this Private DNS zone. This is a read-only property and any attempt to set this value will be ignored.
  /// [numberOfVirtualNetworkLinks] The current number of virtual networks that are linked to this Private DNS zone. This is a read-only property and any attempt to set this value will be ignored.
  /// [numberOfVirtualNetworkLinksWithRegistration] The current number of virtual networks that are linked to this Private DNS zone with registration enabled. This is a read-only property and any attempt to set this value will be ignored.
  /// [provisioningState] The provisioning state of the resource. This is a read-only property and any attempt to set this value will be ignored.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetPrivateZoneResult({
    this.azureApiVersion,
    this.etag,
    this.id,
    this.internalId,
    this.location,
    this.maxNumberOfRecordSets,
    this.maxNumberOfVirtualNetworkLinks,
    this.maxNumberOfVirtualNetworkLinksWithRegistration,
    this.name,
    this.numberOfRecordSets,
    this.numberOfVirtualNetworkLinks,
    this.numberOfVirtualNetworkLinksWithRegistration,
    this.provisioningState,
    this.systemData,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'etag': ?etag,
      'id': ?id,
      'internalId': ?internalId,
      'location': ?location,
      'maxNumberOfRecordSets': ?maxNumberOfRecordSets,
      'maxNumberOfVirtualNetworkLinks': ?maxNumberOfVirtualNetworkLinks,
      'maxNumberOfVirtualNetworkLinksWithRegistration': ?maxNumberOfVirtualNetworkLinksWithRegistration,
      'name': ?name,
      'numberOfRecordSets': ?numberOfRecordSets,
      'numberOfVirtualNetworkLinks': ?numberOfVirtualNetworkLinks,
      'numberOfVirtualNetworkLinksWithRegistration': ?numberOfVirtualNetworkLinksWithRegistration,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetPrivateZoneResult.fromMap(Map<String, dynamic> map) {
    return GetPrivateZoneResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      internalId: (() { final guardedValue = map['internalId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxNumberOfRecordSets: (() { final guardedValue = map['maxNumberOfRecordSets']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      maxNumberOfVirtualNetworkLinks: (() { final guardedValue = map['maxNumberOfVirtualNetworkLinks']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      maxNumberOfVirtualNetworkLinksWithRegistration: (() { final guardedValue = map['maxNumberOfVirtualNetworkLinksWithRegistration']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      numberOfRecordSets: (() { final guardedValue = map['numberOfRecordSets']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      numberOfVirtualNetworkLinks: (() { final guardedValue = map['numberOfVirtualNetworkLinks']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      numberOfVirtualNetworkLinksWithRegistration: (() { final guardedValue = map['numberOfVirtualNetworkLinksWithRegistration']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
