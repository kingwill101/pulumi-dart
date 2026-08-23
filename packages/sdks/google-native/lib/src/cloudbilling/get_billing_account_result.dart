// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getBillingAccount.
class GetBillingAccountResult {
  /// The display name given to the billing account, such as `My Billing Account`. This name is displayed in the Google Cloud Console.
  final String displayName;
  /// If this account is a [subaccount](https://cloud.google.com/billing/docs/concepts), then this will be the resource name of the parent billing account that it is being resold through. Otherwise this will be empty.
  final String masterBillingAccount;
  /// The resource name of the billing account. The resource name has the form `billingAccounts/{billing_account_id}`. For example, `billingAccounts/012345-567890-ABCDEF` would be the resource name for billing account `012345-567890-ABCDEF`.
  final String name;
  /// True if the billing account is open, and will therefore be charged for any usage on associated projects. False if the billing account is closed, and therefore projects associated with it will be unable to use paid services.
  final bool open;
  /// The billing account's parent resource identifier. Use the `MoveBillingAccount` method to update the account's parent resource if it is a organization. Format: - organizations/{organization_id}, for example: organizations/12345678 - billingAccounts/{billing_account_id}, for example: `billingAccounts/012345-567890-ABCDEF`
  final String parent;

  /// Creates a new [GetBillingAccountResult].
  /// [displayName] The display name given to the billing account, such as `My Billing Account`. This name is displayed in the Google Cloud Console.
  /// [masterBillingAccount] If this account is a [subaccount](https://cloud.google.com/billing/docs/concepts), then this will be the resource name of the parent billing account that it is being resold through. Otherwise this will be empty.
  /// [name] The resource name of the billing account. The resource name has the form `billingAccounts/{billing_account_id}`. For example, `billingAccounts/012345-567890-ABCDEF` would be the resource name for billing account `012345-567890-ABCDEF`.
  /// [open] True if the billing account is open, and will therefore be charged for any usage on associated projects. False if the billing account is closed, and therefore projects associated with it will be unable to use paid services.
  /// [parent] The billing account's parent resource identifier. Use the `MoveBillingAccount` method to update the account's parent resource if it is a organization. Format: - organizations/{organization_id}, for example: organizations/12345678 - billingAccounts/{billing_account_id}, for example: `billingAccounts/012345-567890-ABCDEF`
  const GetBillingAccountResult({
    required this.displayName,
    required this.masterBillingAccount,
    required this.name,
    required this.open,
    required this.parent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'masterBillingAccount': masterBillingAccount,
      'name': name,
      'open': open,
      'parent': parent,
    };
  }

  factory GetBillingAccountResult.fromMap(Map<String, dynamic> map) {
    return GetBillingAccountResult(
      displayName: map['displayName'] as String,
      masterBillingAccount: map['masterBillingAccount'] as String,
      name: map['name'] as String,
      open: map['open'] as bool,
      parent: map['parent'] as String,
    );
  }
}
