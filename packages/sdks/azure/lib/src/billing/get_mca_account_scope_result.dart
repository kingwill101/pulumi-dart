// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getMcaAccountScope.
class GetMcaAccountScopeResult {
  final String billingAccountName;
  final String billingProfileName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String invoiceSectionName;

  /// Creates a new [GetMcaAccountScopeResult].
  /// [billingAccountName] Required.
  /// [billingProfileName] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [invoiceSectionName] Required.
  const GetMcaAccountScopeResult({
    required this.billingAccountName,
    required this.billingProfileName,
    required this.id,
    required this.invoiceSectionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccountName': billingAccountName,
      'billingProfileName': billingProfileName,
      'id': id,
      'invoiceSectionName': invoiceSectionName,
    };
  }

  factory GetMcaAccountScopeResult.fromMap(Map<String, dynamic> map) {
    return GetMcaAccountScopeResult(
      billingAccountName: map['billingAccountName'] as String,
      billingProfileName: map['billingProfileName'] as String,
      id: map['id'] as String,
      invoiceSectionName: map['invoiceSectionName'] as String,
    );
  }
}

