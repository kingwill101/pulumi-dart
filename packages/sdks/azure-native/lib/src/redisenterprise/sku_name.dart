import 'package:pulumi/pulumi.dart' as pulumi;

/// The level of Redis Enterprise cluster to deploy. Possible values: ('Balanced_B5', 'MemoryOptimized_M10', 'ComputeOptimized_X5', etc.). For more information on SKUs see the latest pricing documentation. Note that additional SKUs may become supported in the future.
enum SkuName implements pulumi.PulumiEnum<String> {
  valueEnterpriseE1("Enterprise_E1"),
  valueEnterpriseE5("Enterprise_E5"),
  valueEnterpriseE10("Enterprise_E10"),
  valueEnterpriseE20("Enterprise_E20"),
  valueEnterpriseE50("Enterprise_E50"),
  valueEnterpriseE100("Enterprise_E100"),
  valueEnterpriseE200("Enterprise_E200"),
  valueEnterpriseE400("Enterprise_E400"),
  valueEnterpriseFlashF300("EnterpriseFlash_F300"),
  valueEnterpriseFlashF700("EnterpriseFlash_F700"),
  valueEnterpriseFlashF1500("EnterpriseFlash_F1500"),
  valueBalancedB0("Balanced_B0"),
  valueBalancedB1("Balanced_B1"),
  valueBalancedB3("Balanced_B3"),
  valueBalancedB5("Balanced_B5"),
  valueBalancedB10("Balanced_B10"),
  valueBalancedB20("Balanced_B20"),
  valueBalancedB50("Balanced_B50"),
  valueBalancedB100("Balanced_B100"),
  valueBalancedB150("Balanced_B150"),
  valueBalancedB250("Balanced_B250"),
  valueBalancedB350("Balanced_B350"),
  valueBalancedB500("Balanced_B500"),
  valueBalancedB700("Balanced_B700"),
  valueBalancedB1000("Balanced_B1000"),
  valueMemoryOptimizedM10("MemoryOptimized_M10"),
  valueMemoryOptimizedM20("MemoryOptimized_M20"),
  valueMemoryOptimizedM50("MemoryOptimized_M50"),
  valueMemoryOptimizedM100("MemoryOptimized_M100"),
  valueMemoryOptimizedM150("MemoryOptimized_M150"),
  valueMemoryOptimizedM250("MemoryOptimized_M250"),
  valueMemoryOptimizedM350("MemoryOptimized_M350"),
  valueMemoryOptimizedM500("MemoryOptimized_M500"),
  valueMemoryOptimizedM700("MemoryOptimized_M700"),
  valueMemoryOptimizedM1000("MemoryOptimized_M1000"),
  valueMemoryOptimizedM1500("MemoryOptimized_M1500"),
  valueMemoryOptimizedM2000("MemoryOptimized_M2000"),
  valueComputeOptimizedX3("ComputeOptimized_X3"),
  valueComputeOptimizedX5("ComputeOptimized_X5"),
  valueComputeOptimizedX10("ComputeOptimized_X10"),
  valueComputeOptimizedX20("ComputeOptimized_X20"),
  valueComputeOptimizedX50("ComputeOptimized_X50"),
  valueComputeOptimizedX100("ComputeOptimized_X100"),
  valueComputeOptimizedX150("ComputeOptimized_X150"),
  valueComputeOptimizedX250("ComputeOptimized_X250"),
  valueComputeOptimizedX350("ComputeOptimized_X350"),
  valueComputeOptimizedX500("ComputeOptimized_X500"),
  valueComputeOptimizedX700("ComputeOptimized_X700"),
  valueFlashOptimizedA250("FlashOptimized_A250"),
  valueFlashOptimizedA500("FlashOptimized_A500"),
  valueFlashOptimizedA700("FlashOptimized_A700"),
  valueFlashOptimizedA1000("FlashOptimized_A1000"),
  valueFlashOptimizedA1500("FlashOptimized_A1500"),
  valueFlashOptimizedA2000("FlashOptimized_A2000"),
  valueFlashOptimizedA4500("FlashOptimized_A4500");

  const SkuName(this.wireValue);
  @override
  final String wireValue;

  static SkuName fromValue(String value) {
    for (final item in SkuName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SkuName value: $value');
  }
}
