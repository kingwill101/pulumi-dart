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
  MCASDataConnectorDataTypes({
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
      alerts: (DataConnectorDataTypeCommon.fromMap((map['alerts'] as Map).cast<String, dynamic>())).input(),
      discoveryLogs: map['discoveryLogs'] == null ? null : (DataConnectorDataTypeCommon.fromMap((map['discoveryLogs'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

