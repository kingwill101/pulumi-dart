// ignore_for_file: unused_element, unnecessary_cast

import 'sub_resource_response.dart';

/// Result data returned by getIpAllocation.
class GetIpAllocationResult {
  /// IpAllocation tags.
  final Map<String, String>? allocationTags;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// A unique read-only string that changes whenever the resource is updated.
  final String? etag;
  /// Resource ID.
  final String? id;
  /// The IPAM allocation ID.
  final String? ipamAllocationId;
  /// Resource location.
  final String? location;
  /// Resource name.
  final String? name;
  /// The address prefix for the IpAllocation.
  final String? prefix;
  /// The address prefix length for the IpAllocation.
  final int? prefixLength;
  /// The address prefix Type for the IpAllocation.
  final String? prefixType;
  /// The Subnet that using the prefix of this IpAllocation resource.
  final SubResourceResponse? subnet;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String? type;
  /// The VirtualNetwork that using the prefix of this IpAllocation resource.
  final SubResourceResponse? virtualNetwork;

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
    this.azureApiVersion,
    this.etag,
    this.id,
    this.ipamAllocationId,
    this.location,
    this.name,
    this.prefix,
    int? prefixLength,
    this.prefixType,
    this.subnet,
    this.tags,
    this.type,
    this.virtualNetwork,
  }) : prefixLength = prefixLength ?? 0;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationTags': ?allocationTags,
      'azureApiVersion': ?azureApiVersion,
      'etag': ?etag,
      'id': ?id,
      'ipamAllocationId': ?ipamAllocationId,
      'location': ?location,
      'name': ?name,
      'prefix': ?prefix,
      'prefixLength': ?prefixLength,
      'prefixType': ?prefixType,
      'subnet': ?subnet?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'virtualNetwork': ?virtualNetwork?.toMap(),
    };
  }

  factory GetIpAllocationResult.fromMap(Map<String, dynamic> map) {
    return GetIpAllocationResult(
      allocationTags: (() { final guardedValue = map['allocationTags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipamAllocationId: (() { final guardedValue = map['ipamAllocationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      prefixLength: (() { final guardedValue = map['prefixLength']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      prefixType: (() { final guardedValue = map['prefixType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subnet: (() { final guardedValue = map['subnet']; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      virtualNetwork: (() { final guardedValue = map['virtualNetwork']; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
