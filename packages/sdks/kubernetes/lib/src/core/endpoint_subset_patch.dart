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
  final pulumi.Input<List<EndpointAddressPatch>>? addresses;

  /// IP addresses which offer the related ports but are not currently marked as ready because they have not yet finished starting, have recently failed a readiness check, or have recently failed a liveness check.
  final pulumi.Input<List<EndpointAddressPatch>>? notReadyAddresses;

  /// Port numbers available on the related IP addresses.
  final pulumi.Input<List<EndpointPortPatch>>? ports;

  /// Creates a new [EndpointSubsetPatch].
  /// [addresses] IP addresses which offer the related ports that are marked as ready. These endpoints should be considered safe for load balancers and clients to utilize.
  /// [notReadyAddresses] IP addresses which offer the related ports but are not currently marked as ready because they have not yet finished starting, have recently failed a readiness check, or have recently failed a liveness check.
  /// [ports] Port numbers available on the related IP addresses.
  EndpointSubsetPatch({this.addresses, this.notReadyAddresses, this.ports});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addresses':
          ?pulumi.Input.mapOptionalInputValue<
            List<EndpointAddressPatch>,
            List<Map<String, dynamic>>
          >(
            addresses,
            (value) =>
                pulumi.Input.encodeList<
                  EndpointAddressPatch,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'notReadyAddresses':
          ?pulumi.Input.mapOptionalInputValue<
            List<EndpointAddressPatch>,
            List<Map<String, dynamic>>
          >(
            notReadyAddresses,
            (value) =>
                pulumi.Input.encodeList<
                  EndpointAddressPatch,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'ports':
          ?pulumi.Input.mapOptionalInputValue<
            List<EndpointPortPatch>,
            List<Map<String, dynamic>>
          >(
            ports,
            (value) =>
                pulumi.Input.encodeList<
                  EndpointPortPatch,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory EndpointSubsetPatch.fromMap(Map<String, dynamic> map) {
    return EndpointSubsetPatch(
      addresses: (() {
        final guardedValue = map['addresses'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<EndpointAddressPatch>(
            guardedValue,
            (value) => EndpointAddressPatch.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      notReadyAddresses: (() {
        final guardedValue = map['notReadyAddresses'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<EndpointAddressPatch>(
            guardedValue,
            (value) => EndpointAddressPatch.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      ports: (() {
        final guardedValue = map['ports'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<EndpointPortPatch>(
            guardedValue,
            (value) => EndpointPortPatch.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
