// ignore_for_file: unused_element, unnecessary_cast

import 'data_connector_data_type_common_response.dart';

/// The available data types for MCAS (Microsoft Cloud App Security) data connector.
class MCASDataConnectorDataTypesResponse {
  /// Alerts data type connection.
  final DataConnectorDataTypeCommonResponse alerts;
  /// Discovery log data type connection.
  final DataConnectorDataTypeCommonResponse? discoveryLogs;

  /// Creates a new [MCASDataConnectorDataTypesResponse].
  /// [alerts] Alerts data type connection.
  /// [discoveryLogs] Discovery log data type connection.
  MCASDataConnectorDataTypesResponse({
    required this.alerts,
    this.discoveryLogs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alerts': alerts.toMap(),
      'discoveryLogs': ?discoveryLogs == null ? null : discoveryLogs!.toMap(),
    };
  }

  factory MCASDataConnectorDataTypesResponse.fromMap(Map<String, dynamic> map) {
    return MCASDataConnectorDataTypesResponse(
      alerts: DataConnectorDataTypeCommonResponse.fromMap((map['alerts'] as Map).cast<String, dynamic>()),
      discoveryLogs: map['discoveryLogs'] == null ? null : DataConnectorDataTypeCommonResponse.fromMap((map['discoveryLogs'] as Map).cast<String, dynamic>()),
    );
  }
}

