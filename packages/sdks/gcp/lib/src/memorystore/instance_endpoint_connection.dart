// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_endpoint_connection_psc_auto_connection.dart';

class InstanceEndpointConnection {
  /// Detailed information of a PSC connection that is created through service connectivity automation.
  /// Structure is documented below.
  final pulumi.Input<InstanceEndpointConnectionPscAutoConnection>? pscAutoConnection;

  /// Creates a new [InstanceEndpointConnection].
  /// [pscAutoConnection] Detailed information of a PSC connection that is created through service connectivity automation.
  const InstanceEndpointConnection({
    this.pscAutoConnection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pscAutoConnection': ?pulumi.Input.mapOptionalInputValue<InstanceEndpointConnectionPscAutoConnection, Map<String, dynamic>>(pscAutoConnection, (value) => value.toMap()),
    };
  }

  factory InstanceEndpointConnection.fromMap(Map<String, dynamic> map) {
    return InstanceEndpointConnection(
      pscAutoConnection: (() { final guardedValue = map['pscAutoConnection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceEndpointConnectionPscAutoConnection.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
