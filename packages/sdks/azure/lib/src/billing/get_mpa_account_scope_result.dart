// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getMpaAccountScope.
class GetMpaAccountScopeResult {
  final String? billingAccountName;
  final String? customerName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;

  /// Creates a new [GetMpaAccountScopeResult].
  /// [billingAccountName] Optional.
  /// [customerName] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  const GetMpaAccountScopeResult({
    this.billingAccountName,
    this.customerName,
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccountName': ?billingAccountName,
      'customerName': ?customerName,
      'id': ?id,
    };
  }

  factory GetMpaAccountScopeResult.fromMap(Map<String, dynamic> map) {
    return GetMpaAccountScopeResult(
      billingAccountName: (() { final guardedValue = map['billingAccountName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customerName: (() { final guardedValue = map['customerName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
