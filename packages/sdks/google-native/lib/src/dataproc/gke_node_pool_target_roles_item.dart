enum GkeNodePoolTargetRolesItem {
  roleUnspecified("ROLE_UNSPECIFIED"),
  default_("DEFAULT"),
  controller("CONTROLLER"),
  sparkDriver("SPARK_DRIVER"),
  sparkExecutor("SPARK_EXECUTOR");

  const GkeNodePoolTargetRolesItem(this.wireValue);
  final String wireValue;

  static GkeNodePoolTargetRolesItem fromValue(String value) {
    for (final item in GkeNodePoolTargetRolesItem.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GkeNodePoolTargetRolesItem value: $value');
  }
}
