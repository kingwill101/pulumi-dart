// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getMpaAccountScope.
class GetMpaAccountScopeResult {
  final String billingAccountName;
  final String customerName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Creates a new [GetMpaAccountScopeResult].
  /// [billingAccountName] Required.
  /// [customerName] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  const GetMpaAccountScopeResult({
    required this.billingAccountName,
    required this.customerName,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccountName': billingAccountName,
      'customerName': customerName,
      'id': id,
    };
  }

  factory GetMpaAccountScopeResult.fromMap(Map<String, dynamic> map) {
    return GetMpaAccountScopeResult(
      billingAccountName: map['billingAccountName'] as String,
      customerName: map['customerName'] as String,
      id: map['id'] as String,
    );
  }
}

