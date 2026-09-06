import 'package:pulumi/pulumi.dart' as pulumi;

/// The pattern type to be used for resource naming.
enum NamingPatternType implements pulumi.PulumiEnum<String> {
  fullResourceName("FullResourceName");

  const NamingPatternType(this.wireValue);
  @override
  final String wireValue;

  static NamingPatternType fromValue(String value) {
    for (final item in NamingPatternType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NamingPatternType value: $value');
  }
}
