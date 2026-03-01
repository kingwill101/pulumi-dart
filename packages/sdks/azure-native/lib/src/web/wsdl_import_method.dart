/// The WSDL import method
enum WsdlImportMethod {
  valueNotSpecified("NotSpecified"),
  valueSoapToRest("SoapToRest"),
  valueSoapPassThrough("SoapPassThrough");

  const WsdlImportMethod(this.value);
  final String value;

  static WsdlImportMethod fromValue(String value) {
    for (final item in WsdlImportMethod.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WsdlImportMethod value: $value');
  }
}

