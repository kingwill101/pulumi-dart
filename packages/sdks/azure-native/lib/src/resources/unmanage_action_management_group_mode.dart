/// Specifies an action for a newly unmanaged resource management group.
enum UnmanageActionManagementGroupMode {
  delete("delete"),
  detach("detach");

  const UnmanageActionManagementGroupMode(this.wireValue);
  final String wireValue;

  static UnmanageActionManagementGroupMode fromValue(String value) {
    for (final item in UnmanageActionManagementGroupMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UnmanageActionManagementGroupMode value: $value');
  }
}
