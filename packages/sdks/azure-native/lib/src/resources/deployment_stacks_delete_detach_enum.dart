/// Specifies an action for a newly unmanaged resource. Delete will attempt to delete the resource from Azure. Detach will leave the resource in it's current state.
enum DeploymentStacksDeleteDetachEnum {
  delete("delete"),
  detach("detach");

  const DeploymentStacksDeleteDetachEnum(this.value);
  final String value;

  static DeploymentStacksDeleteDetachEnum fromValue(String value) {
    for (final item in DeploymentStacksDeleteDetachEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeploymentStacksDeleteDetachEnum value: $value');
  }
}

