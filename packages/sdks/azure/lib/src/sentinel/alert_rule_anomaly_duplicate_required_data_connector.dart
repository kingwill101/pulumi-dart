// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertRuleAnomalyDuplicateRequiredDataConnector {
  /// The ID of the required Data Connector.
  final pulumi.Input<String>? connectorId;
  /// A list of data types of the required Data Connector.
  final pulumi.Input<List<String>>? dataTypes;

  /// Creates a new [AlertRuleAnomalyDuplicateRequiredDataConnector].
  /// [connectorId] The ID of the required Data Connector.
  /// [dataTypes] A list of data types of the required Data Connector.
  const AlertRuleAnomalyDuplicateRequiredDataConnector({
    this.connectorId,
    this.dataTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectorId': ?connectorId,
      'dataTypes': ?dataTypes,
    };
  }

  factory AlertRuleAnomalyDuplicateRequiredDataConnector.fromMap(Map<String, dynamic> map) {
    return AlertRuleAnomalyDuplicateRequiredDataConnector(
      connectorId: (() { final guardedValue = map['connectorId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataTypes: (() { final guardedValue = map['dataTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

