/// If you have configured an application-based health check for the group, this field controls whether to trigger VM autohealing based on a failed health check. Valid values are: - ON (default): The group recreates running VMs that fail the application-based health check. - OFF: When set to OFF, you can still observe instance health state, but the group does not recreate VMs that fail the application-based health check. This is useful for troubleshooting and setting up your health check configuration.
enum InstanceGroupManagerAutoHealingPolicyAutoHealingTriggersOnHealthCheck {
  off("OFF"),
  on("ON");

  const InstanceGroupManagerAutoHealingPolicyAutoHealingTriggersOnHealthCheck(this.wireValue);
  final String wireValue;

  static InstanceGroupManagerAutoHealingPolicyAutoHealingTriggersOnHealthCheck fromValue(String value) {
    for (final item in InstanceGroupManagerAutoHealingPolicyAutoHealingTriggersOnHealthCheck.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceGroupManagerAutoHealingPolicyAutoHealingTriggersOnHealthCheck value: $value');
  }
}

