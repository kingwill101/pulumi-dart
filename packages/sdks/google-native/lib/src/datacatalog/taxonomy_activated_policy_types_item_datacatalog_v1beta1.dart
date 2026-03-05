enum TaxonomyActivatedPolicyTypesItemDatacatalogV1beta1 {
  policyTypeUnspecified("POLICY_TYPE_UNSPECIFIED"),
  fineGrainedAccessControl("FINE_GRAINED_ACCESS_CONTROL");

  const TaxonomyActivatedPolicyTypesItemDatacatalogV1beta1(this.wireValue);
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

