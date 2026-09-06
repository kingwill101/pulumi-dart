import 'package:pulumi/pulumi.dart' as pulumi;

/// The regionality.
enum Regionality implements pulumi.PulumiEnum<String> {
  notSpecified("NotSpecified"),
  global("Global"),
  regional("Regional");

  const Regionality(this.wireValue);
  @override
  final String wireValue;

  static Regionality fromValue(String value) {
    for (final item in Regionality.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Regionality value: $value');
  }
}
