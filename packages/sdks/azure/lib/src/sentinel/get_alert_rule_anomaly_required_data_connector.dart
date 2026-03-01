// ignore_for_file: unused_element, unnecessary_cast


class GetAlertRuleAnomalyRequiredDataConnector {
  /// The ID of the required Data Connector.
  final String connectorId;
  /// A list of data types of the required Data Connector.
  final List<String> dataTypes;

  /// Creates a new [GetAlertRuleAnomalyRequiredDataConnector].
  /// [connectorId] The ID of the required Data Connector.
  /// [dataTypes] A list of data types of the required Data Connector.
  GetAlertRuleAnomalyRequiredDataConnector({
    required this.connectorId,
    required this.dataTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectorId': connectorId,
      'dataTypes': dataTypes,
    };
  }

  factory GetAlertRuleAnomalyRequiredDataConnector.fromMap(Map<String, dynamic> map) {
    return GetAlertRuleAnomalyRequiredDataConnector(
      connectorId: map['connectorId'] as String,
      dataTypes: (map['dataTypes'] as List).cast<String>(),
    );
  }
}

