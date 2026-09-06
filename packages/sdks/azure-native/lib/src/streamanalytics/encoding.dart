import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the encoding of the incoming data in the case of input and the encoding of outgoing data in the case of output. Required on PUT (CreateOrReplace) requests.
enum Encoding implements pulumi.PulumiEnum<String> {
  valueUTF8("UTF8");

  const Encoding(this.wireValue);
  @override
  final String wireValue;

  static Encoding fromValue(String value) {
    for (final item in Encoding.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Encoding value: $value');
  }
}
