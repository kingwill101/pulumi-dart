/// Specifies an action for a newly unmanaged resource.
enum UnmanageActionResourceMode {
  delete("delete"),
  detach("detach");

  const UnmanageActionResourceMode(this.wireValue);
  final String wireValue;

  static UnmanageActionResourceMode fromValue(String value) {
    for (final item in UnmanageActionResourceMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UnmanageActionResourceMode value: $value');
  }
}
