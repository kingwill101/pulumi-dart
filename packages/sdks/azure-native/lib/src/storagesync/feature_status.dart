/// Offline data transfer
enum FeatureStatus {
  on("on"),
  off("off");

  const FeatureStatus(this.wireValue);
  final String wireValue;

  static FeatureStatus fromValue(String value) {
    for (final item in FeatureStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FeatureStatus value: $value');
  }
}
