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
  NetworkRef({
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
      endpointRefs: map['endpointRefs'] == null ? null : (pulumi.Input.decodeList<EndpointRef>(map['endpointRefs'], (value) => EndpointRef.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

