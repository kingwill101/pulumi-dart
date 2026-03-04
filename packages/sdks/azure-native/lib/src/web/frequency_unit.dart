/// The unit of time for how often the backup should be executed (e.g. for weekly backup, this should be set to Day and FrequencyInterval should be set to 7)
enum FrequencyUnit {
  valueDay("Day"),
  valueHour("Hour");

  const FrequencyUnit(this.wireValue);
  final String wireValue;

  static FrequencyUnit fromValue(String value) {
    for (final item in FrequencyUnit.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FrequencyUnit value: $value');
  }
}
