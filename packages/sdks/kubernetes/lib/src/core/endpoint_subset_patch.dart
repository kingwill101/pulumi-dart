// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_address_patch.dart';
import 'endpoint_port_patch.dart';

/// EndpointSubset is a group of addresses with a common set of ports. The expanded set of endpoints is the Cartesian product of Addresses x Ports. For example, given:
///
/// {
/// Addresses: [{"ip": "10.10.1.1"}, {"ip": "10.10.2.2"}],
/// Ports:     [{"name": "a", "port": 8675}, {"name": "b", "port": 309}]
/// }
///
/// The resulting set of endpoints can be viewed as:
///
/// a: [ 10.10.1.1:8675, 10.10.2.2:8675 ],
/// b: [ 10.10.1.1:309, 10.10.2.2:309 ]
///
/// Deprecated: This API is deprecated in v1.33+.
class EndpointSubsetPatch {
  /// IP addresses which offer the related ports that are marked as ready. These endpoints should be considered safe for load balancers and clients to utilize.
  final List<EndpointAddressPatch>? addresses;
  /// IP addresses which offer the related ports but are not currently marked as ready because they have not yet finished starting, have recently failed a readiness check, or have recently failed a liveness check.
  final List<EndpointAddressPatch>? notReadyAddresses;
  /// Port numbers available on the related IP addresses.
  final List<EndpointPortPatch>? ports;

  /// Creates a new [EndpointSubsetPatch].
  /// [addresses] IP addresses which offer the related ports that are marked as ready. These endpoints should be considered safe for load balancers and clients to utilize.
  /// [notReadyAddresses] IP addresses which offer the related ports but are not currently marked as ready because they have not yet finished starting, have recently failed a readiness check, or have recently failed a liveness check.
  /// [ports] Port numbers available on the related IP addresses.
  EndpointSubsetPatch({
    this.addresses,
    this.notReadyAddresses,
    this.ports,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addresses': ?addresses == null ? null : pulumi.Input.encodeList<EndpointAddressPatch, Map<String, dynamic>>(addresses!, (value) => value.toMap()),
      'notReadyAddresses': ?notReadyAddresses == null ? null : pulumi.Input.encodeList<EndpointAddressPatch, Map<String, dynamic>>(notReadyAddresses!, (value) => value.toMap()),
      'ports': ?ports == null ? null : pulumi.Input.encodeList<EndpointPortPatch, Map<String, dynamic>>(ports!, (value) => value.toMap()),
    };
  }

  factory EndpointSubsetPatch.fromMap(Map<String, dynamic> map) {
    return EndpointSubsetPatch(
      addresses: map['addresses'] == null ? null : pulumi.Input.decodeList<EndpointAddressPatch>(map['addresses'], (value) => EndpointAddressPatch.fromMap((value as Map).cast<String, dynamic>())),
      notReadyAddresses: map['notReadyAddresses'] == null ? null : pulumi.Input.decodeList<EndpointAddressPatch>(map['notReadyAddresses'], (value) => EndpointAddressPatch.fromMap((value as Map).cast<String, dynamic>())),
      ports: map['ports'] == null ? null : pulumi.Input.decodeList<EndpointPortPatch>(map['ports'], (value) => EndpointPortPatch.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

