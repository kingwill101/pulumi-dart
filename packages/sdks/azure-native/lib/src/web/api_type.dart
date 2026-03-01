/// The API type
enum ApiType {
  valueNotSpecified("NotSpecified"),
  valueRest("Rest"),
  valueSoap("Soap");

  const ApiType(this.value);
  final String value;

  static ApiType fromValue(String value) {
    for (final item in ApiType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApiType value: $value');
  }
}

