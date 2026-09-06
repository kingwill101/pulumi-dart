import 'package:pulumi/pulumi.dart' as pulumi;

/// The extended location type.
enum ExtendedLocationType implements pulumi.PulumiEnum<String> {
  valueEdgeZone("EdgeZone");

  const ExtendedLocationType(this.wireValue);
  @override
  final String wireValue;

  static ExtendedLocationType fromValue(String value) {
    for (final item in ExtendedLocationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExtendedLocationType value: $value');
  }
}
