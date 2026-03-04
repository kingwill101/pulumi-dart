// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_connector_data_type_common.dart';

/// Alerts data type for data connectors.
class AlertsDataTypeOfDataConnector {
  /// Alerts data type connection.
  final pulumi.Input<DataConnectorDataTypeCommon> alerts;

  /// Creates a new [AlertsDataTypeOfDataConnector].
  /// [alerts] Alerts data type connection.
  AlertsDataTypeOfDataConnector({required this.alerts});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alerts':
          pulumi.Input.mapInputValue<
            DataConnectorDataTypeCommon,
            Map<String, dynamic>
          >(alerts, (value) => value.toMap()),
    };
  }

  factory AlertsDataTypeOfDataConnector.fromMap(Map<String, dynamic> map) {
    return AlertsDataTypeOfDataConnector(
      alerts: pulumi.Input.fromValue(
        DataConnectorDataTypeCommon.fromMap(
          (map['alerts']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
