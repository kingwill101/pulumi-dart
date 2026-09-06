import 'package:pulumi/pulumi.dart' as pulumi;

/// The opt out headers.
enum OptOutHeaderType implements pulumi.PulumiEnum<String> {
  notSpecified("NotSpecified"),
  systemDataCreatedByLastModifiedBy("SystemDataCreatedByLastModifiedBy");

  const OptOutHeaderType(this.wireValue);
  @override
  final String wireValue;

  static OptOutHeaderType fromValue(String value) {
    for (final item in OptOutHeaderType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OptOutHeaderType value: $value');
  }
}
