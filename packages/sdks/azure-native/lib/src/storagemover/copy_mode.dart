import 'package:pulumi/pulumi.dart' as pulumi;

/// Strategy to use for copy.
enum CopyMode implements pulumi.PulumiEnum<String> {
  additive("Additive"),
  mirror("Mirror");

  const CopyMode(this.wireValue);
  @override
  final String wireValue;

  static CopyMode fromValue(String value) {
    for (final item in CopyMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CopyMode value: $value');
  }
}
