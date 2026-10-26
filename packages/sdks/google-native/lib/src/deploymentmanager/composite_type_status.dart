import 'package:pulumi/pulumi.dart' as pulumi;

enum CompositeTypeStatus implements pulumi.PulumiEnum<String> {
  unknownStatus("UNKNOWN_STATUS"),
  deprecated("DEPRECATED"),
  experimental("EXPERIMENTAL"),
  supported("SUPPORTED");

  const CompositeTypeStatus(this.wireValue);
  @override
  final String wireValue;

  static CompositeTypeStatus fromValue(String value) {
    for (final item in CompositeTypeStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CompositeTypeStatus value: $value');
  }
}
