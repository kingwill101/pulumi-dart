import 'package:pulumi/pulumi.dart' as pulumi;

/// Association Type
enum AssociationType implements pulumi.PulumiEnum<String> {
  subnets("subnets");

  const AssociationType(this.wireValue);
  @override
  final String wireValue;

  static AssociationType fromValue(String value) {
    for (final item in AssociationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AssociationType value: $value');
  }
}
