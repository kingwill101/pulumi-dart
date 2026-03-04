// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_endpoint_connection_psc_auto_connection.dart';

class GetInstanceEndpointConnection {
  /// Detailed information of a PSC connection that is created through service connectivity automation.
  final pulumi.Input<List<GetInstanceEndpointConnectionPscAutoConnection>>
  pscAutoConnections;

  /// Creates a new [GetInstanceEndpointConnection].
  /// [pscAutoConnections] Detailed information of a PSC connection that is created through service connectivity automation.
  GetInstanceEndpointConnection({required this.pscAutoConnections});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pscAutoConnections':
          pulumi.Input.mapInputValue<
            List<GetInstanceEndpointConnectionPscAutoConnection>,
            List<Map<String, dynamic>>
          >(
            pscAutoConnections,
            (value) =>
                pulumi.Input.encodeList<
                  GetInstanceEndpointConnectionPscAutoConnection,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetInstanceEndpointConnection.fromMap(Map<String, dynamic> map) {
    return GetInstanceEndpointConnection(
      pscAutoConnections: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetInstanceEndpointConnectionPscAutoConnection>(
          map['pscAutoConnections']!,
          (value) => GetInstanceEndpointConnectionPscAutoConnection.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
