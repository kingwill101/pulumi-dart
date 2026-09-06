import 'package:pulumi/pulumi.dart' as pulumi;

/// Account configuration. This can only be set at RecommendationsService Account creation.
enum AccountConfiguration implements pulumi.PulumiEnum<String> {
  valueFree("Free"),
  valueCapacity("Capacity");

  const AccountConfiguration(this.wireValue);
  @override
  final String wireValue;

  static AccountConfiguration fromValue(String value) {
    for (final item in AccountConfiguration.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AccountConfiguration value: $value');
  }
}
