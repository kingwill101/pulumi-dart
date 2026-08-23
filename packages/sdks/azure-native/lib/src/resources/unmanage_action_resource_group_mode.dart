/// Specifies an action for a newly unmanaged resource group.
enum UnmanageActionResourceGroupMode {
  delete("delete"),
  detach("detach");

  const UnmanageActionResourceGroupMode(this.wireValue);
  final String wireValue;

  static UnmanageActionResourceGroupMode fromValue(String value) {
    for (final item in UnmanageActionResourceGroupMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UnmanageActionResourceGroupMode value: $value');
  }
}
