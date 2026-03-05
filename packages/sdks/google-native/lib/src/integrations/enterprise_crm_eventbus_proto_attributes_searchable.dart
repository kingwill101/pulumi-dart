enum EnterpriseCrmEventbusProtoAttributesSearchable {
  unspecified("UNSPECIFIED"),
  yes("YES"),
  no("NO");

  const EnterpriseCrmEventbusProtoAttributesSearchable(this.wireValue);
  final String wireValue;

  static EnterpriseCrmEventbusProtoAttributesSearchable fromValue(String value) {
    for (final item in EnterpriseCrmEventbusProtoAttributesSearchable.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnterpriseCrmEventbusProtoAttributesSearchable value: $value');
  }
}

