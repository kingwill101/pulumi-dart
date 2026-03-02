// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk.dart';
import 'sku.dart';

/// {@template pulumi_storagepool_disk_pool_args_doc}
/// The set of arguments for DiskPool.
/// {@endtemplate}
/// {@macro pulumi_storagepool_disk_pool_args_doc}
class DiskPoolArgs {
  /// List of additional capabilities for a Disk Pool.
  final pulumi.Input<List<String>>? additionalCapabilities;
  /// Logical zone for Disk Pool resource; example: ["1"].
  final pulumi.Input<List<String>>? availabilityZones;
  /// The name of the Disk Pool.
  final pulumi.Input<String>? diskPoolName;
  /// List of Azure Managed Disks to attach to a Disk Pool.
  final pulumi.Input<List<Disk>>? disks;
  /// The geo-location where the resource lives.
  final pulumi.Input<String>? location;
  /// Azure resource id. Indicates if this resource is managed by another Azure resource.
  final pulumi.Input<String>? managedBy;
  /// List of Azure resource ids that manage this resource.
  final pulumi.Input<List<String>>? managedByExtended;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Determines the SKU of the Disk Pool
  final pulumi.Input<Sku> sku;
  /// Azure Resource ID of a Subnet for the Disk Pool.
  final pulumi.Input<String> subnetId;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DiskPoolArgs].
  /// [additionalCapabilities] List of additional capabilities for a Disk Pool.
  /// [availabilityZones] Logical zone for Disk Pool resource; example: ["1"].
  /// [diskPoolName] The name of the Disk Pool.
  /// [disks] List of Azure Managed Disks to attach to a Disk Pool.
  /// [location] The geo-location where the resource lives.
  /// [managedBy] Azure resource id. Indicates if this resource is managed by another Azure resource.
  /// [managedByExtended] List of Azure resource ids that manage this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] Determines the SKU of the Disk Pool
  /// [subnetId] Azure Resource ID of a Subnet for the Disk Pool.
  /// [tags] Resource tags.
  DiskPoolArgs({
    this.additionalCapabilities,
    this.availabilityZones,
    this.diskPoolName,
    this.disks,
    this.location,
    this.managedBy,
    this.managedByExtended,
    required this.resourceGroupName,
    required this.sku,
    required this.subnetId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalCapabilities': ?additionalCapabilities,
      'availabilityZones': ?availabilityZones,
      'diskPoolName': ?diskPoolName,
      'disks': ?pulumi.Input.mapOptionalInputValue<List<Disk>, List<Map<String, dynamic>>>(disks, (value) => pulumi.Input.encodeList<Disk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'managedBy': ?managedBy,
      'managedByExtended': ?managedByExtended,
      'resourceGroupName': resourceGroupName,
      'sku': pulumi.Input.mapInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'subnetId': subnetId,
      'tags': ?tags,
    };
  }

  factory DiskPoolArgs.fromMap(Map<String, dynamic> map) {
    return DiskPoolArgs(
      additionalCapabilities: map['additionalCapabilities'] == null ? null : ((map['additionalCapabilities'] as List).cast<String>()).input(),
      availabilityZones: map['availabilityZones'] == null ? null : ((map['availabilityZones'] as List).cast<String>()).input(),
      diskPoolName: map['diskPoolName'] == null ? null : (map['diskPoolName'] as String).input(),
      disks: map['disks'] == null ? null : (pulumi.Input.decodeList<Disk>(map['disks'], (value) => Disk.fromMap((value as Map).cast<String, dynamic>()))).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      managedBy: map['managedBy'] == null ? null : (map['managedBy'] as String).input(),
      managedByExtended: map['managedByExtended'] == null ? null : ((map['managedByExtended'] as List).cast<String>()).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sku: (Sku.fromMap((map['sku'] as Map).cast<String, dynamic>())).input(),
      subnetId: (map['subnetId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

