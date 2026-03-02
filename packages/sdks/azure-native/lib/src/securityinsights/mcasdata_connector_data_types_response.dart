// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_connector_data_type_common_response.dart';

/// The available data types for MCAS (Microsoft Cloud App Security) data connector.
class MCASDataConnectorDataTypesResponse {
  /// Alerts data type connection.
  final pulumi.Input<DataConnectorDataTypeCommonResponse> alerts;
  /// Discovery log data type connection.
  final pulumi.Input<DataConnectorDataTypeCommonResponse>? discoveryLogs;

  /// Creates a new [MCASDataConnectorDataTypesResponse].
  /// [alerts] Alerts data type connection.
  /// [discoveryLogs] Discovery log data type connection.
  MCASDataConnectorDataTypesResponse({
    required this.alerts,
    this.discoveryLogs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alerts': pulumi.Input.mapInputValue<DataConnectorDataTypeCommonResponse, Map<String, dynamic>>(alerts, (value) => value.toMap()),
      'discoveryLogs': ?pulumi.Input.mapOptionalInputValue<DataConnectorDataTypeCommonResponse, Map<String, dynamic>>(discoveryLogs, (value) => value.toMap()),
    };
  }

  factory MCASDataConnectorDataTypesResponse.fromMap(Map<String, dynamic> map) {
    return MCASDataConnectorDataTypesResponse(
      alerts: (DataConnectorDataTypeCommonResponse.fromMap((map['alerts'] as Map).cast<String, dynamic>())).input(),
      discoveryLogs: map['discoveryLogs'] == null ? null : (DataConnectorDataTypeCommonResponse.fromMap((map['discoveryLogs'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

