/// The resource sub type.
enum ResourceSubType {
  notSpecified("NotSpecified"),
  asyncOperation("AsyncOperation");

  const ResourceSubType(this.value);
  final String value;

  static ResourceSubType fromValue(String value) {
    for (final item in ResourceSubType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceSubType value: $value');
  }
}

