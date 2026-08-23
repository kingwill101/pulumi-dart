/// The linked operation.
enum LinkedOperation {
  none("None"),
  crossResourceGroupResourceMove("CrossResourceGroupResourceMove"),
  crossSubscriptionResourceMove("CrossSubscriptionResourceMove");

  const LinkedOperation(this.wireValue);
  final String wireValue;

  static LinkedOperation fromValue(String value) {
    for (final item in LinkedOperation.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LinkedOperation value: $value');
  }
}
