// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getBillingAccount.
class GetBillingAccountResult {
  final String? billingAccount;
  /// The currency code of the billing account, e.g. `USD`.
  final String? currencyCode;
  final String? displayName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final bool? lookupProjects;
  /// The resource name of the billing account in the form `billingAccounts/{billing_account_id}`.
  final String? name;
  final bool? open;
  /// The IDs of any projects associated with the billing account. `lookupProjects` must not be false
  /// for this to be populated.
  final List<String>? projectIds;

  /// Creates a new [GetBillingAccountResult].
  /// [billingAccount] Optional.
  /// [currencyCode] The currency code of the billing account, e.g. `USD`.
  /// [displayName] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [lookupProjects] Optional.
  /// [name] The resource name of the billing account in the form `billingAccounts/{billing_account_id}`.
  /// [open] Optional.
  /// [projectIds] The IDs of any projects associated with the billing account. `lookupProjects` must not be false
  const GetBillingAccountResult({
    this.billingAccount,
    this.currencyCode,
    this.displayName,
    this.id,
    this.lookupProjects,
    this.name,
    this.open,
    this.projectIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccount': ?billingAccount,
      'currencyCode': ?currencyCode,
      'displayName': ?displayName,
      'id': ?id,
      'lookupProjects': ?lookupProjects,
      'name': ?name,
      'open': ?open,
      'projectIds': ?projectIds,
    };
  }

  factory GetBillingAccountResult.fromMap(Map<String, dynamic> map) {
    return GetBillingAccountResult(
      billingAccount: (() { final guardedValue = map['billingAccount']; if (guardedValue == null) return null; return guardedValue as String; })(),
      currencyCode: (() { final guardedValue = map['currencyCode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lookupProjects: (() { final guardedValue = map['lookupProjects']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      open: (() { final guardedValue = map['open']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      projectIds: (() { final guardedValue = map['projectIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
