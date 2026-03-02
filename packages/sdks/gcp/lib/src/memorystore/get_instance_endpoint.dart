// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_endpoint_connection.dart';

class GetInstanceEndpoint {
  /// A group of PSC connections. They are created in the same VPC network, one for each service attachment in the cluster.
  final pulumi.Input<List<GetInstanceEndpointConnection>> connections;

  /// Creates a new [GetInstanceEndpoint].
  /// [connections] A group of PSC connections. They are created in the same VPC network, one for each service attachment in the cluster.
  GetInstanceEndpoint({
    required this.connections,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connections': pulumi.Input.mapInputValue<List<GetInstanceEndpointConnection>, List<Map<String, dynamic>>>(connections, (value) => pulumi.Input.encodeList<GetInstanceEndpointConnection, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetInstanceEndpoint.fromMap(Map<String, dynamic> map) {
    return GetInstanceEndpoint(
      connections: (pulumi.Input.decodeList<GetInstanceEndpointConnection>(map['connections'], (value) => GetInstanceEndpointConnection.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

