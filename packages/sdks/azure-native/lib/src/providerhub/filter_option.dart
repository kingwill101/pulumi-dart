import 'package:pulumi/pulumi.dart' as pulumi;

/// Filter option.
enum FilterOption implements pulumi.PulumiEnum<String> {
  notSpecified("NotSpecified"),
  enableSubscriptionFilterOnTenant("EnableSubscriptionFilterOnTenant");

  const FilterOption(this.wireValue);
  @override
  final String wireValue;

  static FilterOption fromValue(String value) {
    for (final item in FilterOption.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FilterOption value: $value');
  }
}
