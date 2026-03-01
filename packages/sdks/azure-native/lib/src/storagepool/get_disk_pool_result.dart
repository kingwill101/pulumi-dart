// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_response.dart';
import 'system_metadata_response.dart';

/// Result data returned by getDiskPool.
class GetDiskPoolResult {
  /// List of additional capabilities for Disk Pool.
  final List<String>? additionalCapabilities;
  /// Logical zone for Disk Pool resource; example: ["1"].
  final List<String> availabilityZones;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// List of Azure Managed Disks to attach to a Disk Pool.
  final List<DiskResponse>? disks;
  /// Fully qualified resource Id for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The geo-location where the resource lives.
  final String location;
  /// Azure resource id. Indicates if this resource is managed by another Azure resource.
  final String managedBy;
  /// List of Azure resource ids that manage this resource.
  final List<String> managedByExtended;
  /// The name of the resource
  final String name;
  /// State of the operation on the resource.
  final String provisioningState;
  /// Operational status of the Disk Pool.
  final String status;
  /// Azure Resource ID of a Subnet for the Disk Pool.
  final String subnetId;
  /// Resource metadata required by ARM RPC
  final SystemMetadataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Sku tier
  final String? tier;
  /// The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts.
  final String type;

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
  GetDiskPoolResult({
    this.additionalCapabilities,
    required this.availabilityZones,
    required this.azureApiVersion,
    this.disks,
    required this.id,
    required this.location,
    required this.managedBy,
    required this.managedByExtended,
    required this.name,
    required this.provisioningState,
    required this.status,
    required this.subnetId,
    required this.systemData,
    this.tags,
    this.tier,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalCapabilities': ?additionalCapabilities,
      'availabilityZones': availabilityZones,
      'azureApiVersion': azureApiVersion,
      'disks': ?disks == null ? null : pulumi.Input.encodeList<DiskResponse, Map<String, dynamic>>(disks!, (value) => value.toMap()),
      'id': id,
      'location': location,
      'managedBy': managedBy,
      'managedByExtended': managedByExtended,
      'name': name,
      'provisioningState': provisioningState,
      'status': status,
      'subnetId': subnetId,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'tier': ?tier,
      'type': type,
    };
  }

  factory GetDiskPoolResult.fromMap(Map<String, dynamic> map) {
    return GetDiskPoolResult(
      additionalCapabilities: map['additionalCapabilities'] == null ? null : (map['additionalCapabilities'] as List).cast<String>(),
      availabilityZones: (map['availabilityZones'] as List).cast<String>(),
      azureApiVersion: map['azureApiVersion'] as String,
      disks: map['disks'] == null ? null : pulumi.Input.decodeList<DiskResponse>(map['disks'], (value) => DiskResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      location: map['location'] as String,
      managedBy: map['managedBy'] as String,
      managedByExtended: (map['managedByExtended'] as List).cast<String>(),
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      status: map['status'] as String,
      subnetId: map['subnetId'] as String,
      systemData: SystemMetadataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      tier: map['tier'] == null ? null : map['tier'] as String,
      type: map['type'] as String,
    );
  }
}

