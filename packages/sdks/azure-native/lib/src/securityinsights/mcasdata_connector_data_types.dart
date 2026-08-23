// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_connector_data_type_common.dart';

/// The available data types for MCAS (Microsoft Cloud App Security) data connector.
class MCASDataConnectorDataTypes {
  /// Alerts data type connection.
  final pulumi.Input<DataConnectorDataTypeCommon> alerts;
  /// Discovery log data type connection.
  final pulumi.Input<DataConnectorDataTypeCommon>? discoveryLogs;

  /// Creates a new [MCASDataConnectorDataTypes].
  /// [alerts] Alerts data type connection.
  /// [discoveryLogs] Discovery log data type connection.
  const MCASDataConnectorDataTypes({
    required this.alerts,
    this.discoveryLogs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alerts': pulumi.Input.mapInputValue<DataConnectorDataTypeCommon, Map<String, dynamic>>(alerts, (value) => value.toMap()),
      'discoveryLogs': ?pulumi.Input.mapOptionalInputValue<DataConnectorDataTypeCommon, Map<String, dynamic>>(discoveryLogs, (value) => value.toMap()),
    };
  }

  factory MCASDataConnectorDataTypes.fromMap(Map<String, dynamic> map) {
    return MCASDataConnectorDataTypes(
      alerts: pulumi.Input.fromValue(DataConnectorDataTypeCommon.fromMap((map['alerts']! as Map).cast<String, dynamic>())),
      discoveryLogs: (() { final guardedValue = map['discoveryLogs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataConnectorDataTypeCommon.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
