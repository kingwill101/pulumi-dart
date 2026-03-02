// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Route resource.
class Route {
  /// The destination CIDR to which the route applies.
  final pulumi.Input<String>? addressPrefix;
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String>? etag;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// The IP address packets should be forwarded to. Next hop values are only allowed in routes where the next hop type is VirtualAppliance.
  final pulumi.Input<String>? nextHopIpAddress;
  /// The type of Azure hop the packet should be sent to.
  final pulumi.Input<String> nextHopType;
  /// The provisioning state of the resource. Possible values are: 'Updating', 'Deleting', and 'Failed'.
  final pulumi.Input<String>? provisioningState;
  /// The type of the resource.
  final pulumi.Input<String>? type;

  /// Creates a new [Route].
  /// [addressPrefix] The destination CIDR to which the route applies.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [nextHopIpAddress] The IP address packets should be forwarded to. Next hop values are only allowed in routes where the next hop type is VirtualAppliance.
  /// [nextHopType] The type of Azure hop the packet should be sent to.
  /// [provisioningState] The provisioning state of the resource. Possible values are: 'Updating', 'Deleting', and 'Failed'.
  /// [type] The type of the resource.
  Route({
    this.addressPrefix,
    this.etag,
    this.id,
    this.name,
    this.nextHopIpAddress,
    required this.nextHopType,
    this.provisioningState,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefix': ?addressPrefix,
      'etag': ?etag,
      'id': ?id,
      'name': ?name,
      'nextHopIpAddress': ?nextHopIpAddress,
      'nextHopType': nextHopType,
      'provisioningState': ?provisioningState,
      'type': ?type,
    };
  }

  factory Route.fromMap(Map<String, dynamic> map) {
    return Route(
      addressPrefix: map['addressPrefix'] == null ? null : (map['addressPrefix']! as String).input(),
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      nextHopIpAddress: map['nextHopIpAddress'] == null ? null : (map['nextHopIpAddress']! as String).input(),
      nextHopType: (map['nextHopType'] as String).input(),
      provisioningState: map['provisioningState'] == null ? null : (map['provisioningState']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

