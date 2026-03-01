/// The scope for the virtual machine affinity or anti-affinity placement hint. It should always be "Machine" in the case of node affinity.
enum VirtualMachinePlacementHintPodAffinityScope {
  valueRack("Rack"),
  valueMachine("Machine");

  const VirtualMachinePlacementHintPodAffinityScope(this.value);
  final String value;

  static VirtualMachinePlacementHintPodAffinityScope fromValue(String value) {
    for (final item in VirtualMachinePlacementHintPodAffinityScope.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VirtualMachinePlacementHintPodAffinityScope value: $value');
  }
}

