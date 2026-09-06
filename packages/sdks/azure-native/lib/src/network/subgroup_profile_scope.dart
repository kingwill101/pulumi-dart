import 'package:pulumi/pulumi.dart' as pulumi;

/// Scope of the subgroup profile.
enum SubgroupProfileScope implements pulumi.PulumiEnum<String> {
  none("None"),
  verticalConnect("VerticalConnect");

  const SubgroupProfileScope(this.wireValue);
  @override
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
