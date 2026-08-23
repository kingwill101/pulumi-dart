// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_ref_response.dart';

/// Describes a network reference in a service.
class NetworkRefResponse {
  /// A list of endpoints that are exposed on this network.
  final pulumi.Input<List<EndpointRefResponse>>? endpointRefs;
  /// Name of the network
  final pulumi.Input<String>? name;

  /// Creates a new [NetworkRefResponse].
  /// [endpointRefs] A list of endpoints that are exposed on this network.
  /// [name] Name of the network
  const NetworkRefResponse({
    this.endpointRefs,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointRefs': ?pulumi.Input.mapOptionalInputValue<List<EndpointRefResponse>, List<Map<String, dynamic>>>(endpointRefs, (value) => pulumi.Input.encodeList<EndpointRefResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
    };
  }

  factory NetworkRefResponse.fromMap(Map<String, dynamic> map) {
    return NetworkRefResponse(
      endpointRefs: (() { final guardedValue = map['endpointRefs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EndpointRefResponse>(guardedValue, (value) => EndpointRefResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
