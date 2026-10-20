import 'package:pulumi/pulumi.dart' as pulumi;

enum BudgetOwnershipScope implements pulumi.PulumiEnum<String> {
  ownershipScopeUnspecified("OWNERSHIP_SCOPE_UNSPECIFIED"),
  allUsers("ALL_USERS"),
  billingAccount("BILLING_ACCOUNT");

  const BudgetOwnershipScope(this.wireValue);
  @override
  final String wireValue;

  static BudgetOwnershipScope fromValue(String value) {
    for (final item in BudgetOwnershipScope.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BudgetOwnershipScope value: $value');
  }
}
