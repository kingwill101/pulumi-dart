/// Required. The RebillingBasis to use for the applied override. Shows the relative cost based on your repricing costs.
enum GoogleCloudChannelV1ConditionalOverrideRebillingBasis {
  rebillingBasisUnspecified("REBILLING_BASIS_UNSPECIFIED"),
  costAtList("COST_AT_LIST"),
  directCustomerCost("DIRECT_CUSTOMER_COST");

  const GoogleCloudChannelV1ConditionalOverrideRebillingBasis(this.wireValue);
  final String wireValue;

  static GoogleCloudChannelV1ConditionalOverrideRebillingBasis fromValue(String value) {
    for (final item in GoogleCloudChannelV1ConditionalOverrideRebillingBasis.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudChannelV1ConditionalOverrideRebillingBasis value: $value');
  }
}
