import 'package:pulumi/pulumi.dart' as pulumi;

enum TaxonomyActivatedPolicyTypesItemDatacatalogV1beta1 implements pulumi.PulumiEnum<String> {
  policyTypeUnspecified("POLICY_TYPE_UNSPECIFIED"),
  fineGrainedAccessControl("FINE_GRAINED_ACCESS_CONTROL");

  const TaxonomyActivatedPolicyTypesItemDatacatalogV1beta1(this.wireValue);
  @override
  final String wireValue;

  static TaxonomyActivatedPolicyTypesItemDatacatalogV1beta1 fromValue(String value) {
    for (final item in TaxonomyActivatedPolicyTypesItemDatacatalogV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TaxonomyActivatedPolicyTypesItemDatacatalogV1beta1 value: $value');
  }
}
