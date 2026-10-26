import 'package:pulumi/pulumi.dart' as pulumi;

/// The API scope supported by this index.
enum IndexApiScope implements pulumi.PulumiEnum<String> {
  anyApi("ANY_API"),
  datastoreModeApi("DATASTORE_MODE_API");

  const IndexApiScope(this.wireValue);
  @override
  final String wireValue;

  static IndexApiScope fromValue(String value) {
    for (final item in IndexApiScope.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IndexApiScope value: $value');
  }
}
