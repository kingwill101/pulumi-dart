/// Association Type
enum AssociationType {
  subnets("subnets");

  const AssociationType(this.wireValue);
  final String wireValue;

  static AssociationType fromValue(String value) {
    for (final item in AssociationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AssociationType value: $value');
  }
}

