/// The type of a storage blob to be created.
enum BlobType {
  valueBlock("Block"),
  valueAppend("Append");

  const BlobType(this.wireValue);
  final String wireValue;

  static BlobType fromValue(String value) {
    for (final item in BlobType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BlobType value: $value');
  }
}

