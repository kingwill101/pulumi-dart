/// DEPRECATED: This field is no longer supported and will eventually be removed when Apigee Hybrid 1.5/1.6 is no longer supported. Instead, use the `billingType` field inside `DeveloperMonetizationConfig` resource. Flag that specifies the billing account type, prepaid or postpaid.
enum RatePlanPaymentFundingModel {
  paymentFundingModelUnspecified("PAYMENT_FUNDING_MODEL_UNSPECIFIED"),
  prepaid("PREPAID"),
  postpaid("POSTPAID");

  const RatePlanPaymentFundingModel(this.wireValue);
  final String wireValue;

  static RatePlanPaymentFundingModel fromValue(String value) {
    for (final item in RatePlanPaymentFundingModel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RatePlanPaymentFundingModel value: $value');
  }
}
