enum TaxonomyActivatedPolicyTypesItem {
  policyTypeUnspecified("POLICY_TYPE_UNSPECIFIED"),
  fineGrainedAccessControl("FINE_GRAINED_ACCESS_CONTROL");

  const TaxonomyActivatedPolicyTypesItem(this.wireValue);
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

