import 'package:pulumi/pulumi.dart' as pulumi;

/// The kind of nodes that the Big Data pool provides.
enum NodeSizeFamily implements pulumi.PulumiEnum<String> {
  valueNone("None"),
  valueMemoryOptimized("MemoryOptimized"),
  valueHardwareAcceleratedFPGA("HardwareAcceleratedFPGA"),
  valueHardwareAcceleratedGPU("HardwareAcceleratedGPU");

  const NodeSizeFamily(this.wireValue);
  @override
  final String wireValue;

  static NodeSizeFamily fromValue(String value) {
    for (final item in NodeSizeFamily.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodeSizeFamily value: $value');
  }
}
