import 'package:pulumi/pulumi.dart' as pulumi;

enum ClientClassificationSource implements pulumi.PulumiEnum<String> {
  valueNone("None"),
  valueNative("Native"),
  valueRecommended("Recommended"),
  valueMIP("MIP");

  const ClientClassificationSource(this.wireValue);
  @override
  final String wireValue;

  static ClientClassificationSource fromValue(String value) {
    for (final item in ClientClassificationSource.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClientClassificationSource value: $value');
  }
}
