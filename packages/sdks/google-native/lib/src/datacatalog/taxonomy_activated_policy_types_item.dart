import 'package:pulumi/pulumi.dart' as pulumi;

enum TaxonomyActivatedPolicyTypesItem implements pulumi.PulumiEnum<String> {
  policyTypeUnspecified("POLICY_TYPE_UNSPECIFIED"),
  fineGrainedAccessControl("FINE_GRAINED_ACCESS_CONTROL");

  const TaxonomyActivatedPolicyTypesItem(this.wireValue);
  @override
  final String wireValue;

  static TaxonomyActivatedPolicyTypesItem fromValue(String value) {
    for (final item in TaxonomyActivatedPolicyTypesItem.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TaxonomyActivatedPolicyTypesItem value: $value');
  }
}
