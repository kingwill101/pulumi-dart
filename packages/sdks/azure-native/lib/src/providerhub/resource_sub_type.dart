/// The resource sub type.
enum ResourceSubType {
  notSpecified("NotSpecified"),
  asyncOperation("AsyncOperation");

  const ResourceSubType(this.wireValue);
  final String wireValue;

  static ResourceSubType fromValue(String value) {
    for (final item in ResourceSubType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceSubType value: $value');
  }
}

