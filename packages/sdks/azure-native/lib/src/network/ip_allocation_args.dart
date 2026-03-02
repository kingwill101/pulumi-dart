// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_ip_allocation_args_doc}
/// The set of arguments for IpAllocation.
/// {@endtemplate}
/// {@macro pulumi_network_ip_allocation_args_doc}
class IpAllocationArgs {
  /// IpAllocation tags.
  final pulumi.Input<Map<String, String>>? allocationTags;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The name of the IpAllocation.
  final pulumi.Input<String>? ipAllocationName;
  /// The IPAM allocation ID.
  final pulumi.Input<String>? ipamAllocationId;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// The address prefix for the IpAllocation.
  final pulumi.Input<String>? prefix;
  /// The address prefix length for the IpAllocation.
  final pulumi.Input<int>? prefixLength;
  /// The address prefix Type for the IpAllocation.
  final pulumi.Input<String>? prefixType;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The type for the IpAllocation.
  final pulumi.Input<String>? type;

  /// Creates a new [IpAllocationArgs].
  /// [allocationTags] IpAllocation tags.
  /// [id] Resource ID.
  /// [ipAllocationName] The name of the IpAllocation.
  /// [ipamAllocationId] The IPAM allocation ID.
  /// [location] Resource location.
  /// [prefix] The address prefix for the IpAllocation.
  /// [prefixLength] The address prefix length for the IpAllocation.
  /// [prefixType] The address prefix Type for the IpAllocation.
  /// [resourceGroupName] The name of the resource group.
  /// [tags] Resource tags.
  /// [type] The type for the IpAllocation.
  IpAllocationArgs({
    this.allocationTags,
    this.id,
    this.ipAllocationName,
    this.ipamAllocationId,
    this.location,
    this.prefix,
    this.prefixLength,
    this.prefixType,
    required this.resourceGroupName,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationTags': ?allocationTags,
      'id': ?id,
      'ipAllocationName': ?ipAllocationName,
      'ipamAllocationId': ?ipamAllocationId,
      'location': ?location,
      'prefix': ?prefix,
      'prefixLength': ?prefixLength,
      'prefixType': ?prefixType,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory IpAllocationArgs.fromMap(Map<String, dynamic> map) {
    return IpAllocationArgs(
      allocationTags: map['allocationTags'] == null ? null : ((map['allocationTags'] as Map).cast<String, String>()).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      ipAllocationName: map['ipAllocationName'] == null ? null : (map['ipAllocationName'] as String).input(),
      ipamAllocationId: map['ipamAllocationId'] == null ? null : (map['ipamAllocationId'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      prefix: map['prefix'] == null ? null : (map['prefix'] as String).input(),
      prefixLength: map['prefixLength'] == null ? null : (map['prefixLength'] as int).input(),
      prefixType: map['prefixType'] == null ? null : (map['prefixType'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

