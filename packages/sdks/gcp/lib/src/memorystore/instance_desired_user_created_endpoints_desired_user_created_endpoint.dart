// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_desired_user_created_endpoints_desired_user_created_endpoint_connection.dart';

class InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpoint {
  /// Structure is documented below.
  final pulumi.Input<List<InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnection>>? connections;

  /// Creates a new [InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpoint].
  /// [connections] Structure is documented below.
  const InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpoint({
    this.connections,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connections': ?pulumi.Input.mapOptionalInputValue<List<InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnection>, List<Map<String, dynamic>>>(connections, (value) => pulumi.Input.encodeList<InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnection, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpoint.fromMap(Map<String, dynamic> map) {
    return InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpoint(
      connections: (() { final guardedValue = map['connections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnection>(guardedValue, (value) => InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnection.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
