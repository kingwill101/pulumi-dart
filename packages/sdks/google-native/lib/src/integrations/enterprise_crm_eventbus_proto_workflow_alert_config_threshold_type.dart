/// The threshold type, whether lower(expected_min) or upper(expected_max), for which this alert is being configured. If value falls below expected_min or exceeds expected_max, an alert will be fired.
enum EnterpriseCrmEventbusProtoWorkflowAlertConfigThresholdType {
  unspecifiedThresholdType("UNSPECIFIED_THRESHOLD_TYPE"),
  expectedMin("EXPECTED_MIN"),
  expectedMax("EXPECTED_MAX");

  const EnterpriseCrmEventbusProtoWorkflowAlertConfigThresholdType(this.wireValue);
  final String wireValue;

  static EnterpriseCrmEventbusProtoWorkflowAlertConfigThresholdType fromValue(String value) {
    for (final item in EnterpriseCrmEventbusProtoWorkflowAlertConfigThresholdType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnterpriseCrmEventbusProtoWorkflowAlertConfigThresholdType value: $value');
  }
}
