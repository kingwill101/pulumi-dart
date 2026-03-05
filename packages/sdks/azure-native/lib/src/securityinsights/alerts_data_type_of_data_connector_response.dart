// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_connector_data_type_common_response.dart';

/// Alerts data type for data connectors.
class AlertsDataTypeOfDataConnectorResponse {
  /// Alerts data type connection.
  final pulumi.Input<DataConnectorDataTypeCommonResponse> alerts;

  /// Creates a new [AlertsDataTypeOfDataConnectorResponse].
  /// [alerts] Alerts data type connection.
  AlertsDataTypeOfDataConnectorResponse({
    required this.alerts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alerts': pulumi.Input.mapInputValue<DataConnectorDataTypeCommonResponse, Map<String, dynamic>>(alerts, (value) => value.toMap()),
    };
  }

  factory AlertsDataTypeOfDataConnectorResponse.fromMap(Map<String, dynamic> map) {
    return AlertsDataTypeOfDataConnectorResponse(
      alerts: pulumi.Input.fromValue(DataConnectorDataTypeCommonResponse.fromMap((map['alerts']! as Map).cast<String, dynamic>())),
    );
  }
}

