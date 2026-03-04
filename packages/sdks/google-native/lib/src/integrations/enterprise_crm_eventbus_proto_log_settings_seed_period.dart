enum EnterpriseCrmEventbusProtoLogSettingsSeedPeriod {
  seedPeriodUnspecified("SEED_PERIOD_UNSPECIFIED"),
  day("DAY"),
  week("WEEK"),
  month("MONTH");

  const EnterpriseCrmEventbusProtoLogSettingsSeedPeriod(this.wireValue);
  final String wireValue;

  static EnterpriseCrmEventbusProtoLogSettingsSeedPeriod fromValue(
    String value,
  ) {
    for (final item in EnterpriseCrmEventbusProtoLogSettingsSeedPeriod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown EnterpriseCrmEventbusProtoLogSettingsSeedPeriod value: $value',
    );
  }
}
