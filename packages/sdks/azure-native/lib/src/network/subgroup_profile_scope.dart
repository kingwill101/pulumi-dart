/// Scope of the subgroup profile.
enum SubgroupProfileScope {
  none("None"),
  verticalConnect("VerticalConnect");

  const SubgroupProfileScope(this.wireValue);
  final String wireValue;

  static SubgroupProfileScope fromValue(String value) {
    for (final item in SubgroupProfileScope.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SubgroupProfileScope value: $value');
  }
}
