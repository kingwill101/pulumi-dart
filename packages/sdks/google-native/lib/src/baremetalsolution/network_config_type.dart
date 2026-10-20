import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of this network, either Client or Private.
enum NetworkConfigType implements pulumi.PulumiEnum<String> {
  typeUnspecified("TYPE_UNSPECIFIED"),
  client("CLIENT"),
  private("PRIVATE");

  const NetworkConfigType(this.wireValue);
  @override
  final String wireValue;

  static NetworkConfigType fromValue(String value) {
    for (final item in NetworkConfigType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkConfigType value: $value');
  }
}
