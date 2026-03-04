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
      allocationTags: (() {
        final guardedValue = map['allocationTags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipAllocationName: (() {
        final guardedValue = map['ipAllocationName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipamAllocationId: (() {
        final guardedValue = map['ipamAllocationId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      prefix: (() {
        final guardedValue = map['prefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      prefixLength: (() {
        final guardedValue = map['prefixLength'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      prefixType: (() {
        final guardedValue = map['prefixType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
