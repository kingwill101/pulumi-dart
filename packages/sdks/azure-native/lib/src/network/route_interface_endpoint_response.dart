// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Route resource
class RouteInterfaceEndpointResponse {
  /// The destination CIDR to which the route applies.
  final pulumi.Input<String?>? addressPrefix;
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String?>? etag;
  /// Resource ID.
  final pulumi.Input<String?>? id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String?>? name;
  /// The IP address packets should be forwarded to. Next hop values are only allowed in routes where the next hop type is VirtualAppliance.
  final pulumi.Input<String?>? nextHopIpAddress;
  /// The type of Azure hop the packet should be sent to.
  final pulumi.Input<String> nextHopType;
  /// The provisioning state of the resource. Possible values are: 'Updating', 'Deleting', and 'Failed'.
  final pulumi.Input<String?>? provisioningState;

  /// Creates a new [RouteInterfaceEndpointResponse].
  /// [addressPrefix] The destination CIDR to which the route applies.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [nextHopIpAddress] The IP address packets should be forwarded to. Next hop values are only allowed in routes where the next hop type is VirtualAppliance.
  /// [nextHopType] The type of Azure hop the packet should be sent to.
  /// [provisioningState] The provisioning state of the resource. Possible values are: 'Updating', 'Deleting', and 'Failed'.
  const RouteInterfaceEndpointResponse({
    this.addressPrefix,
    this.etag,
    this.id,
    this.name,
    this.nextHopIpAddress,
    required this.nextHopType,
    this.provisioningState,
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
    };
  }

  factory RouteInterfaceEndpointResponse.fromMap(Map<String, dynamic> map) {
    return RouteInterfaceEndpointResponse(
      addressPrefix: (() { final guardedValue = map['addressPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nextHopIpAddress: (() { final guardedValue = map['nextHopIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nextHopType: pulumi.Input.fromValue(map['nextHopType'] as String),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
