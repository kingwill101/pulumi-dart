/// The threshold type for which this alert is being configured. If value falls below expected_min or exceeds expected_max, an alert will be fired.
enum EnterpriseCrmEventbusProtoTaskAlertConfigThresholdType {
  unspecifiedThresholdType("UNSPECIFIED_THRESHOLD_TYPE"),
  expectedMin("EXPECTED_MIN"),
  expectedMax("EXPECTED_MAX");

  const EnterpriseCrmEventbusProtoTaskAlertConfigThresholdType(this.value);
  final String value;

  static EnterpriseCrmEventbusProtoTaskAlertConfigThresholdType fromValue(String value) {
    for (final item in EnterpriseCrmEventbusProtoTaskAlertConfigThresholdType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnterpriseCrmEventbusProtoTaskAlertConfigThresholdType value: $value');
  }
}

