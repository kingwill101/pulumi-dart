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
    pulumi.Output<Map<String, String>>? allocationTags,
    pulumi.Output<String>? id,
    pulumi.Output<String>? ipAllocationName,
    pulumi.Output<String>? ipamAllocationId,
    pulumi.Output<String>? location,
    pulumi.Output<String>? prefix,
    pulumi.Output<int>? prefixLength,
    pulumi.Output<String>? prefixType,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? type,
  }) :
      allocationTags = pulumi.Input.asOptionalInput<Map<String, String>>(allocationTags),
      id = pulumi.Input.asOptionalInput<String>(id),
      ipAllocationName = pulumi.Input.asOptionalInput<String>(ipAllocationName),
      ipamAllocationId = pulumi.Input.asOptionalInput<String>(ipamAllocationId),
      location = pulumi.Input.asOptionalInput<String>(location),
      prefix = pulumi.Input.asOptionalInput<String>(prefix),
      prefixLength = pulumi.Input.asOptionalInput<int>(prefixLength),
      prefixType = pulumi.Input.asOptionalInput<String>(prefixType),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      type = pulumi.Input.asOptionalInput<String>(type);

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
      allocationTags: map['allocationTags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['allocationTags'] as Map).cast<String, String>()),
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      ipAllocationName: map['ipAllocationName'] == null ? null : pulumi.Output.create<String>(map['ipAllocationName'] as String),
      ipamAllocationId: map['ipamAllocationId'] == null ? null : pulumi.Output.create<String>(map['ipamAllocationId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      prefix: map['prefix'] == null ? null : pulumi.Output.create<String>(map['prefix'] as String),
      prefixLength: map['prefixLength'] == null ? null : pulumi.Output.create<int>(map['prefixLength'] as int),
      prefixType: map['prefixType'] == null ? null : pulumi.Output.create<String>(map['prefixType'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

