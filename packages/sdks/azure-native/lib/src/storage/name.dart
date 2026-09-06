import 'package:pulumi/pulumi.dart' as pulumi;

/// Name of the policy. The valid value is AccessTimeTracking. This field is currently read only
enum Name implements pulumi.PulumiEnum<String> {
  valueAccessTimeTracking("AccessTimeTracking");

  const Name(this.wireValue);
  @override
  final String wireValue;

  static Name fromValue(String value) {
    for (final item in Name.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Name value: $value');
  }
}
