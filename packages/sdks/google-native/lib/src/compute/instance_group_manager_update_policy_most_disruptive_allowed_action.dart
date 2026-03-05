/// Most disruptive action that is allowed to be taken on an instance. You can specify either NONE to forbid any actions, REFRESH to avoid restarting the VM and to limit disruption as much as possible. RESTART to allow actions that can be applied without instance replacing or REPLACE to allow all possible actions. If the Updater determines that the minimal update action needed is more disruptive than most disruptive allowed action you specify it will not perform the update at all.
enum InstanceGroupManagerUpdatePolicyMostDisruptiveAllowedAction {
  none("NONE"),
  refresh("REFRESH"),
  replace("REPLACE"),
  restart("RESTART");

  const InstanceGroupManagerUpdatePolicyMostDisruptiveAllowedAction(this.wireValue);
  final String wireValue;

  static InstanceGroupManagerUpdatePolicyMostDisruptiveAllowedAction fromValue(String value) {
    for (final item in InstanceGroupManagerUpdatePolicyMostDisruptiveAllowedAction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceGroupManagerUpdatePolicyMostDisruptiveAllowedAction value: $value');
  }
}

