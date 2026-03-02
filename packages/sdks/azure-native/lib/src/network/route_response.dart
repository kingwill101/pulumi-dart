// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Route resource.
class RouteResponse {
  /// The destination CIDR to which the route applies.
  final pulumi.Input<String>? addressPrefix;
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// A value indicating whether this route overrides overlapping BGP routes regardless of LPM.
  final pulumi.Input<bool> hasBgpOverride;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// The IP address packets should be forwarded to. Next hop values are only allowed in routes where the next hop type is VirtualAppliance.
  final pulumi.Input<String>? nextHopIpAddress;
  /// The type of Azure hop the packet should be sent to.
  final pulumi.Input<String> nextHopType;
  /// The provisioning state of the route resource.
  final pulumi.Input<String> provisioningState;
  /// The type of the resource.
  final pulumi.Input<String>? type;

  /// Creates a new [RouteResponse].
  /// [addressPrefix] The destination CIDR to which the route applies.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [hasBgpOverride] A value indicating whether this route overrides overlapping BGP routes regardless of LPM.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [nextHopIpAddress] The IP address packets should be forwarded to. Next hop values are only allowed in routes where the next hop type is VirtualAppliance.
  /// [nextHopType] The type of Azure hop the packet should be sent to.
  /// [provisioningState] The provisioning state of the route resource.
  /// [type] The type of the resource.
  RouteResponse({
    this.addressPrefix,
    required this.etag,
    required this.hasBgpOverride,
    this.id,
    this.name,
    this.nextHopIpAddress,
    required this.nextHopType,
    required this.provisioningState,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefix': ?addressPrefix,
      'etag': etag,
      'hasBgpOverride': hasBgpOverride,
      'id': ?id,
      'name': ?name,
      'nextHopIpAddress': ?nextHopIpAddress,
      'nextHopType': nextHopType,
      'provisioningState': provisioningState,
      'type': ?type,
    };
  }

  factory RouteResponse.fromMap(Map<String, dynamic> map) {
    return RouteResponse(
      addressPrefix: map['addressPrefix'] == null ? null : (map['addressPrefix']! as String).input(),
      etag: (map['etag'] as String).input(),
      hasBgpOverride: (map['hasBgpOverride'] as bool).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      nextHopIpAddress: map['nextHopIpAddress'] == null ? null : (map['nextHopIpAddress']! as String).input(),
      nextHopType: (map['nextHopType'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

