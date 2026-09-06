import 'package:pulumi/pulumi.dart' as pulumi;

enum ServiceClientOptionsType implements pulumi.PulumiEnum<String> {
  notSpecified("NotSpecified"),
  disableAutomaticDecompression("DisableAutomaticDecompression");

  const ServiceClientOptionsType(this.wireValue);
  @override
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
