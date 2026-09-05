// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getMcaAccountScope.
class GetMcaAccountScopeResult {
  final String? billingAccountName;
  final String? billingProfileName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? invoiceSectionName;

  /// Creates a new [GetMcaAccountScopeResult].
  /// [billingAccountName] Optional.
  /// [billingProfileName] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [invoiceSectionName] Optional.
  const GetMcaAccountScopeResult({
    this.billingAccountName,
    this.billingProfileName,
    this.id,
    this.invoiceSectionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccountName': ?billingAccountName,
      'billingProfileName': ?billingProfileName,
      'id': ?id,
      'invoiceSectionName': ?invoiceSectionName,
    };
  }

  factory GetMcaAccountScopeResult.fromMap(Map<String, dynamic> map) {
    return GetMcaAccountScopeResult(
      billingAccountName: (() { final guardedValue = map['billingAccountName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      billingProfileName: (() { final guardedValue = map['billingProfileName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      invoiceSectionName: (() { final guardedValue = map['invoiceSectionName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
