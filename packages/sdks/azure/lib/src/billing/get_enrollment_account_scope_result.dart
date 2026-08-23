// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getEnrollmentAccountScope.
class GetEnrollmentAccountScopeResult {
  final String billingAccountName;
  final String enrollmentAccountName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Creates a new [GetEnrollmentAccountScopeResult].
  /// [billingAccountName] Required.
  /// [enrollmentAccountName] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  const GetEnrollmentAccountScopeResult({
    required this.billingAccountName,
    required this.enrollmentAccountName,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccountName': billingAccountName,
      'enrollmentAccountName': enrollmentAccountName,
      'id': id,
    };
  }

  factory GetEnrollmentAccountScopeResult.fromMap(Map<String, dynamic> map) {
    return GetEnrollmentAccountScopeResult(
      billingAccountName: map['billingAccountName'] as String,
      enrollmentAccountName: map['enrollmentAccountName'] as String,
      id: map['id'] as String,
    );
  }
}
