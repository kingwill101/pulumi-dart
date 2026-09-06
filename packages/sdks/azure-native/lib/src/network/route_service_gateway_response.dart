// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Route resource.
class RouteServiceGatewayResponse {
  /// The destination CIDR to which the route applies.
  final pulumi.Input<String?>? addressPrefix;
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// A value indicating whether this route overrides overlapping BGP routes regardless of LPM.
  final pulumi.Input<bool> hasBgpOverride;
  /// Resource ID.
  final pulumi.Input<String?>? id;
  /// Name of the resource.
  final pulumi.Input<String?>? name;
  /// The IP address packets should be forwarded to. Next hop values are only allowed in routes where the next hop type is VirtualAppliance.
  final pulumi.Input<String?>? nextHopIpAddress;
  /// The type of Azure hop the packet should be sent to.
  final pulumi.Input<String> nextHopType;
  /// The provisioning state of the route resource.
  final pulumi.Input<String> provisioningState;
  /// Resource type.
  final pulumi.Input<String> type;

  /// Creates a new [RouteServiceGatewayResponse].
  /// [addressPrefix] The destination CIDR to which the route applies.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [hasBgpOverride] A value indicating whether this route overrides overlapping BGP routes regardless of LPM.
  /// [id] Resource ID.
  /// [name] Name of the resource.
  /// [nextHopIpAddress] The IP address packets should be forwarded to. Next hop values are only allowed in routes where the next hop type is VirtualAppliance.
  /// [nextHopType] The type of Azure hop the packet should be sent to.
  /// [provisioningState] The provisioning state of the route resource.
  /// [type] Resource type.
  const RouteServiceGatewayResponse({
    this.addressPrefix,
    required this.etag,
    required this.hasBgpOverride,
    this.id,
    this.name,
    this.nextHopIpAddress,
    required this.nextHopType,
    required this.provisioningState,
    required this.type,
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
      'type': type,
    };
  }

  factory RouteServiceGatewayResponse.fromMap(Map<String, dynamic> map) {
    return RouteServiceGatewayResponse(
      addressPrefix: (() { final guardedValue = map['addressPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: pulumi.Input.fromValue(map['etag'] as String),
      hasBgpOverride: pulumi.Input.fromValue(map['hasBgpOverride'] as bool),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nextHopIpAddress: (() { final guardedValue = map['nextHopIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nextHopType: pulumi.Input.fromValue(map['nextHopType'] as String),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
