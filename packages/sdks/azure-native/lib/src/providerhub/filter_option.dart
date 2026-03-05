/// Filter option.
enum FilterOption {
  notSpecified("NotSpecified"),
  enableSubscriptionFilterOnTenant("EnableSubscriptionFilterOnTenant");

  const FilterOption(this.wireValue);
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

