// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getEnrollmentAccountScope.
class GetEnrollmentAccountScopeResult {
  final String? billingAccountName;
  final String? enrollmentAccountName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;

  /// Creates a new [GetEnrollmentAccountScopeResult].
  /// [billingAccountName] Optional.
  /// [enrollmentAccountName] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  const GetEnrollmentAccountScopeResult({
    this.billingAccountName,
    this.enrollmentAccountName,
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccountName': ?billingAccountName,
      'enrollmentAccountName': ?enrollmentAccountName,
      'id': ?id,
    };
  }

  factory GetEnrollmentAccountScopeResult.fromMap(Map<String, dynamic> map) {
    return GetEnrollmentAccountScopeResult(
      billingAccountName: (() { final guardedValue = map['billingAccountName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enrollmentAccountName: (() { final guardedValue = map['enrollmentAccountName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
