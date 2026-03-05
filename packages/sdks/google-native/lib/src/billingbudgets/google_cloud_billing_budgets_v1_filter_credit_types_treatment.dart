/// Optional. If not set, default behavior is `INCLUDE_ALL_CREDITS`.
enum GoogleCloudBillingBudgetsV1FilterCreditTypesTreatment {
  creditTypesTreatmentUnspecified("CREDIT_TYPES_TREATMENT_UNSPECIFIED"),
  includeAllCredits("INCLUDE_ALL_CREDITS"),
  excludeAllCredits("EXCLUDE_ALL_CREDITS"),
  includeSpecifiedCredits("INCLUDE_SPECIFIED_CREDITS");

  const GoogleCloudBillingBudgetsV1FilterCreditTypesTreatment(this.wireValue);
  final String wireValue;

  static GoogleCloudBillingBudgetsV1FilterCreditTypesTreatment fromValue(String value) {
    for (final item in GoogleCloudBillingBudgetsV1FilterCreditTypesTreatment.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudBillingBudgetsV1FilterCreditTypesTreatment value: $value');
  }
}

