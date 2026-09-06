import 'package:pulumi/pulumi.dart' as pulumi;

/// The scope for the virtual machine affinity or anti-affinity placement hint. It should always be "Machine" in the case of node affinity.
enum VirtualMachinePlacementHintPodAffinityScope implements pulumi.PulumiEnum<String> {
  valueRack("Rack"),
  valueMachine("Machine");

  const VirtualMachinePlacementHintPodAffinityScope(this.wireValue);
  @override
  final String wireValue;

  static VirtualMachinePlacementHintPodAffinityScope fromValue(String value) {
    for (final item in VirtualMachinePlacementHintPodAffinityScope.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VirtualMachinePlacementHintPodAffinityScope value: $value');
  }
}
