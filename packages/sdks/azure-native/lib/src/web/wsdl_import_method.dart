/// The WSDL import method
enum WsdlImportMethod {
  valueNotSpecified("NotSpecified"),
  valueSoapToRest("SoapToRest"),
  valueSoapPassThrough("SoapPassThrough");

  const WsdlImportMethod(this.wireValue);
  final String wireValue;

  static WsdlImportMethod fromValue(String value) {
    for (final item in WsdlImportMethod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WsdlImportMethod value: $value');
  }
}
