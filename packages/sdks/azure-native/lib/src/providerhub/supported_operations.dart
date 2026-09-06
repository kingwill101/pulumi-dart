import 'package:pulumi/pulumi.dart' as pulumi;

/// Supported operations.
enum SupportedOperations implements pulumi.PulumiEnum<String> {
  notSpecified("NotSpecified"),
  get("Get"),
  delete("Delete");

  const SupportedOperations(this.wireValue);
  @override
  final String wireValue;

  static SupportedOperations fromValue(String value) {
    for (final item in SupportedOperations.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SupportedOperations value: $value');
  }
}
