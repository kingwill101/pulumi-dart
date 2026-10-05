import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies network collocation
enum ResourcePolicyGroupPlacementPolicyCollocationComputeBeta implements pulumi.PulumiEnum<String> {
  collocated("COLLOCATED"),
  unspecifiedCollocation("UNSPECIFIED_COLLOCATION");

  const ResourcePolicyGroupPlacementPolicyCollocationComputeBeta(this.wireValue);
  @override
  final String wireValue;

  static ResourcePolicyGroupPlacementPolicyCollocationComputeBeta fromValue(String value) {
    for (final item in ResourcePolicyGroupPlacementPolicyCollocationComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourcePolicyGroupPlacementPolicyCollocationComputeBeta value: $value');
  }
}
