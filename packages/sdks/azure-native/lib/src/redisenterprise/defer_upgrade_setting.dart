/// Option to defer upgrade when newest version is released - default is NotDeferred. Learn more: https://aka.ms/redisversionupgrade
enum DeferUpgradeSetting {
  valueDeferred("Deferred"),
  valueNotDeferred("NotDeferred");

  const DeferUpgradeSetting(this.value);
  final String value;

  static DeferUpgradeSetting fromValue(String value) {
    for (final item in DeferUpgradeSetting.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeferUpgradeSetting value: $value');
  }
}

