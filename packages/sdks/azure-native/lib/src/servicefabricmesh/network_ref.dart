// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_ref.dart';

/// Describes a network reference in a service.
class NetworkRef {
  /// A list of endpoints that are exposed on this network.
  final pulumi.Input<List<EndpointRef>>? endpointRefs;
  /// Name of the network
  final pulumi.Input<String>? name;

  /// Creates a new [NetworkRef].
  /// [endpointRefs] A list of endpoints that are exposed on this network.
  /// [name] Name of the network
  const NetworkRef({
    this.endpointRefs,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointRefs': ?pulumi.Input.mapOptionalInputValue<List<EndpointRef>, List<Map<String, dynamic>>>(endpointRefs, (value) => pulumi.Input.encodeList<EndpointRef, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
    };
  }

  factory NetworkRef.fromMap(Map<String, dynamic> map) {
    return NetworkRef(
      endpointRefs: (() { final guardedValue = map['endpointRefs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EndpointRef>(guardedValue, (value) => EndpointRef.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
