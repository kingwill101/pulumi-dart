// ignore_for_file: unused_element, unnecessary_cast


class AlertRuleAnomalyDuplicateRequiredDataConnector {
  /// The ID of the required Data Connector.
  final String? connectorId;
  /// A list of data types of the required Data Connector.
  final List<String>? dataTypes;

  /// Creates a new [AlertRuleAnomalyDuplicateRequiredDataConnector].
  /// [connectorId] The ID of the required Data Connector.
  /// [dataTypes] A list of data types of the required Data Connector.
  AlertRuleAnomalyDuplicateRequiredDataConnector({
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
      connectorId: map['connectorId'] == null ? null : map['connectorId'] as String,
      dataTypes: map['dataTypes'] == null ? null : (map['dataTypes'] as List).cast<String>(),
    );
  }
}

