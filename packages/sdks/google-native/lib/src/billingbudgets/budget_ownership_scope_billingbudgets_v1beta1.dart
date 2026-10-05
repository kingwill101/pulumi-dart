import 'package:pulumi/pulumi.dart' as pulumi;

enum BudgetOwnershipScopeBillingbudgetsV1beta1 implements pulumi.PulumiEnum<String> {
  ownershipScopeUnspecified("OWNERSHIP_SCOPE_UNSPECIFIED"),
  allUsers("ALL_USERS"),
  billingAccount("BILLING_ACCOUNT");

  const BudgetOwnershipScopeBillingbudgetsV1beta1(this.wireValue);
  @override
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
