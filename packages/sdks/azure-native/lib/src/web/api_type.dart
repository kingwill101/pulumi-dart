import 'package:pulumi/pulumi.dart' as pulumi;

/// The API type
enum ApiType implements pulumi.PulumiEnum<String> {
  valueNotSpecified("NotSpecified"),
  valueRest("Rest"),
  valueSoap("Soap");

  const ApiType(this.wireValue);
  @override
  final String wireValue;

  static ApiType fromValue(String value) {
    for (final item in ApiType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApiType value: $value');
  }
}
