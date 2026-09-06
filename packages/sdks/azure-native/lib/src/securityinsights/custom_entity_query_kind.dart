import 'package:pulumi/pulumi.dart' as pulumi;

/// the entity query kind
enum CustomEntityQueryKind implements pulumi.PulumiEnum<String> {
  valueActivity("Activity");

  const CustomEntityQueryKind(this.wireValue);
  @override
  final String wireValue;

  static CustomEntityQueryKind fromValue(String value) {
    for (final item in CustomEntityQueryKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CustomEntityQueryKind value: $value');
  }
}
