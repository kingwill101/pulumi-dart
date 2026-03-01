/// Optional. Specifies the preemptibility of the instance group.The default value for master and worker groups is NON_PREEMPTIBLE. This default cannot be changed.The default value for secondary instances is PREEMPTIBLE.
enum InstanceGroupConfigPreemptibility {
  preemptibilityUnspecified("PREEMPTIBILITY_UNSPECIFIED"),
  nonPreemptible("NON_PREEMPTIBLE"),
  preemptible("PREEMPTIBLE"),
  spot("SPOT");

  const InstanceGroupConfigPreemptibility(this.value);
  final String value;

  static InstanceGroupConfigPreemptibility fromValue(String value) {
    for (final item in InstanceGroupConfigPreemptibility.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceGroupConfigPreemptibility value: $value');
  }
}

