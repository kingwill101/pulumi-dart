// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_response.dart';
import 'system_metadata_response.dart';

/// Result data returned by getDiskPool.
class GetDiskPoolResult {
  /// List of additional capabilities for Disk Pool.
  final List<String>? additionalCapabilities;
  /// Logical zone for Disk Pool resource; example: ["1"].
  final List<String>? availabilityZones;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// List of Azure Managed Disks to attach to a Disk Pool.
  final List<DiskResponse>? disks;
  /// Fully qualified resource Id for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The geo-location where the resource lives.
  final String? location;
  /// Azure resource id. Indicates if this resource is managed by another Azure resource.
  final String? managedBy;
  /// List of Azure resource ids that manage this resource.
  final List<String>? managedByExtended;
  /// The name of the resource
  final String? name;
  /// State of the operation on the resource.
  final String? provisioningState;
  /// Operational status of the Disk Pool.
  final String? status;
  /// Azure Resource ID of a Subnet for the Disk Pool.
  final String? subnetId;
  /// Resource metadata required by ARM RPC
  final SystemMetadataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Sku tier
  final String? tier;
  /// The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts.
  final String? type;

  /// Creates a new [GetDiskPoolResult].
  /// [additionalCapabilities] List of additional capabilities for Disk Pool.
  /// [availabilityZones] Logical zone for Disk Pool resource; example: ["1"].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [disks] List of Azure Managed Disks to attach to a Disk Pool.
  /// [id] Fully qualified resource Id for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [location] The geo-location where the resource lives.
  /// [managedBy] Azure resource id. Indicates if this resource is managed by another Azure resource.
  /// [managedByExtended] List of Azure resource ids that manage this resource.
  /// [name] The name of the resource
  /// [provisioningState] State of the operation on the resource.
  /// [status] Operational status of the Disk Pool.
  /// [subnetId] Azure Resource ID of a Subnet for the Disk Pool.
  /// [systemData] Resource metadata required by ARM RPC
  /// [tags] Resource tags.
  /// [tier] Sku tier
  /// [type] The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts.
  const GetDiskPoolResult({
    this.additionalCapabilities,
    this.availabilityZones,
    this.azureApiVersion,
    this.disks,
    this.id,
    this.location,
    this.managedBy,
    this.managedByExtended,
    this.name,
    this.provisioningState,
    this.status,
    this.subnetId,
    this.systemData,
    this.tags,
    this.tier,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalCapabilities': ?additionalCapabilities,
      'availabilityZones': ?availabilityZones,
      'azureApiVersion': ?azureApiVersion,
      'disks': ?(() { final guardedValue = disks; if (guardedValue == null) return null; return pulumi.Input.encodeList<DiskResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'location': ?location,
      'managedBy': ?managedBy,
      'managedByExtended': ?managedByExtended,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'status': ?status,
      'subnetId': ?subnetId,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'tier': ?tier,
      'type': ?type,
    };
  }

  factory GetDiskPoolResult.fromMap(Map<String, dynamic> map) {
    return GetDiskPoolResult(
      additionalCapabilities: (() { final guardedValue = map['additionalCapabilities']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      availabilityZones: (() { final guardedValue = map['availabilityZones']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      disks: (() { final guardedValue = map['disks']; if (guardedValue == null) return null; return pulumi.Input.decodeList<DiskResponse>(guardedValue, (value) => DiskResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managedBy: (() { final guardedValue = map['managedBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managedByExtended: (() { final guardedValue = map['managedByExtended']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemMetadataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
