import 'package:pulumi/pulumi.dart' as pulumi;

/// The Vulnerability Assessment solution to be provisioned. Can be either 'TVM' or 'Qualys'
enum Type implements pulumi.PulumiEnum<String> {
  qualys("Qualys"),
  tVM("TVM");

  const Type(this.wireValue);
  @override
  final String wireValue;

  static Type fromValue(String value) {
    for (final item in Type.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Type value: $value');
  }
}
