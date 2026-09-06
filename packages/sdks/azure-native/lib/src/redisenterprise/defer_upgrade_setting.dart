import 'package:pulumi/pulumi.dart' as pulumi;

/// Option to defer upgrade when newest version is released - default is NotDeferred. Learn more: https://aka.ms/redisversionupgrade
enum DeferUpgradeSetting implements pulumi.PulumiEnum<String> {
  valueDeferred("Deferred"),
  valueNotDeferred("NotDeferred");

  const DeferUpgradeSetting(this.wireValue);
  @override
  final String wireValue;

  static DeferUpgradeSetting fromValue(String value) {
    for (final item in DeferUpgradeSetting.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeferUpgradeSetting value: $value');
  }
}
