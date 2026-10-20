import 'package:pulumi/pulumi.dart' as pulumi;

enum CVSSv3IntegrityImpactContaineranalysisV1beta1 implements pulumi.PulumiEnum<String> {
  impactUnspecified("IMPACT_UNSPECIFIED"),
  impactHigh("IMPACT_HIGH"),
  impactLow("IMPACT_LOW"),
  impactNone("IMPACT_NONE");

  const CVSSv3IntegrityImpactContaineranalysisV1beta1(this.wireValue);
  @override
  final String wireValue;

  static CVSSv3IntegrityImpactContaineranalysisV1beta1 fromValue(String value) {
    for (final item in CVSSv3IntegrityImpactContaineranalysisV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CVSSv3IntegrityImpactContaineranalysisV1beta1 value: $value');
  }
}
