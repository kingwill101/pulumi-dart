/// The readiness.
enum Readiness {
  closingDown("ClosingDown"),
  deprecated("Deprecated"),
  gA("GA"),
  inDevelopment("InDevelopment"),
  internalOnly("InternalOnly"),
  privatePreview("PrivatePreview"),
  publicPreview("PublicPreview"),
  removedFromARM("RemovedFromARM"),
  retired("Retired");

  const Readiness(this.wireValue);
  final String wireValue;

  static Readiness fromValue(String value) {
    for (final item in Readiness.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Readiness value: $value');
  }
}
