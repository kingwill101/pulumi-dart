enum BudgetOwnershipScopeBillingbudgetsV1beta1 {
  ownershipScopeUnspecified("OWNERSHIP_SCOPE_UNSPECIFIED"),
  allUsers("ALL_USERS"),
  billingAccount("BILLING_ACCOUNT");

  const BudgetOwnershipScopeBillingbudgetsV1beta1(this.wireValue);
  final String wireValue;

  static BudgetOwnershipScopeBillingbudgetsV1beta1 fromValue(String value) {
    for (final item in BudgetOwnershipScopeBillingbudgetsV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BudgetOwnershipScopeBillingbudgetsV1beta1 value: $value');
  }
}
