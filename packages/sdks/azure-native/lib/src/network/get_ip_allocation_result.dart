// ignore_for_file: unused_element, unnecessary_cast

import 'sub_resource_response.dart';

/// Result data returned by getIpAllocation.
class GetIpAllocationResult {
  /// IpAllocation tags.
  final Map<String, String>? allocationTags;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String? id;
  /// The IPAM allocation ID.
  final String? ipamAllocationId;
  /// Resource location.
  final String? location;
  /// Resource name.
  final String name;
  /// The address prefix for the IpAllocation.
  final String? prefix;
  /// The address prefix length for the IpAllocation.
  final int? prefixLength;
  /// The address prefix Type for the IpAllocation.
  final String? prefixType;
  /// The Subnet that using the prefix of this IpAllocation resource.
  final SubResourceResponse subnet;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String type;
  /// The VirtualNetwork that using the prefix of this IpAllocation resource.
  final SubResourceResponse virtualNetwork;

  /// Creates a new [GetIpAllocationResult].
  /// [allocationTags] IpAllocation tags.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [ipamAllocationId] The IPAM allocation ID.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [prefix] The address prefix for the IpAllocation.
  /// [prefixLength] The address prefix length for the IpAllocation.
  /// [prefixType] The address prefix Type for the IpAllocation.
  /// [subnet] The Subnet that using the prefix of this IpAllocation resource.
  /// [tags] Resource tags.
  /// [type] Resource type.
  /// [virtualNetwork] The VirtualNetwork that using the prefix of this IpAllocation resource.
  GetIpAllocationResult({
    this.allocationTags,
    required this.azureApiVersion,
    required this.etag,
    this.id,
    this.ipamAllocationId,
    this.location,
    required this.name,
    this.prefix,
    this.prefixLength,
    this.prefixType,
    required this.subnet,
    this.tags,
    required this.type,
    required this.virtualNetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationTags': ?allocationTags,
      'azureApiVersion': azureApiVersion,
      'etag': etag,
      'id': ?id,
      'ipamAllocationId': ?ipamAllocationId,
      'location': ?location,
      'name': name,
      'prefix': ?prefix,
      'prefixLength': ?prefixLength,
      'prefixType': ?prefixType,
      'subnet': subnet.toMap(),
      'tags': ?tags,
      'type': type,
      'virtualNetwork': virtualNetwork.toMap(),
    };
  }

  factory GetIpAllocationResult.fromMap(Map<String, dynamic> map) {
    return GetIpAllocationResult(
      allocationTags: map['allocationTags'] == null ? null : (map['allocationTags']! as Map).cast<String, String>(),
      azureApiVersion: map['azureApiVersion'] as String,
      etag: map['etag'] as String,
      id: map['id'] == null ? null : map['id']! as String,
      ipamAllocationId: map['ipamAllocationId'] == null ? null : map['ipamAllocationId']! as String,
      location: map['location'] == null ? null : map['location']! as String,
      name: map['name'] as String,
      prefix: map['prefix'] == null ? null : map['prefix']! as String,
      prefixLength: map['prefixLength'] == null ? null : map['prefixLength']! as int,
      prefixType: map['prefixType'] == null ? null : map['prefixType']! as String,
      subnet: SubResourceResponse.fromMap((map['subnet'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
      virtualNetwork: SubResourceResponse.fromMap((map['virtualNetwork'] as Map).cast<String, dynamic>()),
    );
  }
}

