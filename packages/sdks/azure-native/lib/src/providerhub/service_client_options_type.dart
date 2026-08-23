enum ServiceClientOptionsType {
  notSpecified("NotSpecified"),
  disableAutomaticDecompression("DisableAutomaticDecompression");

  const ServiceClientOptionsType(this.wireValue);
  final String wireValue;

  static ServiceClientOptionsType fromValue(String value) {
    for (final item in ServiceClientOptionsType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceClientOptionsType value: $value');
  }
}
