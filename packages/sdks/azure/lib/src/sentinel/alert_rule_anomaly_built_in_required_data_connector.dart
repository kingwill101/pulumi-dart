// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertRuleAnomalyBuiltInRequiredDataConnector {
  /// The ID of the required Data Connector.
  final pulumi.Input<String>? connectorId;
  /// A list of data types of the required Data Connector.
  final pulumi.Input<List<String>>? dataTypes;

  /// Creates a new [AlertRuleAnomalyBuiltInRequiredDataConnector].
  /// [connectorId] The ID of the required Data Connector.
  /// [dataTypes] A list of data types of the required Data Connector.
  const AlertRuleAnomalyBuiltInRequiredDataConnector({
    this.connectorId,
    this.dataTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectorId': ?connectorId,
      'dataTypes': ?dataTypes,
    };
  }

  factory AlertRuleAnomalyBuiltInRequiredDataConnector.fromMap(Map<String, dynamic> map) {
    return AlertRuleAnomalyBuiltInRequiredDataConnector(
      connectorId: (() { final guardedValue = map['connectorId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataTypes: (() { final guardedValue = map['dataTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
