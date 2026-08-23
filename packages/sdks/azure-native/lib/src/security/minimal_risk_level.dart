/// Defines the minimal attach path risk level which will be sent as email notifications
enum MinimalRiskLevel {
  critical("Critical"),
  high("High"),
  medium("Medium"),
  low("Low");

  const MinimalRiskLevel(this.wireValue);
  final String wireValue;

  static MinimalRiskLevel fromValue(String value) {
    for (final item in MinimalRiskLevel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MinimalRiskLevel value: $value');
  }
}
