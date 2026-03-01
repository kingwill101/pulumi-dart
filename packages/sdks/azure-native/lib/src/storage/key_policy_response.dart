// ignore_for_file: unused_element, unnecessary_cast


/// KeyPolicy assigned to the storage account.
class KeyPolicyResponse {
  /// The key expiration period in days.
  final int keyExpirationPeriodInDays;

  /// Creates a new [KeyPolicyResponse].
  /// [keyExpirationPeriodInDays] The key expiration period in days.
  KeyPolicyResponse({
    required this.keyExpirationPeriodInDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyExpirationPeriodInDays': keyExpirationPeriodInDays,
    };
  }

  factory KeyPolicyResponse.fromMap(Map<String, dynamic> map) {
    return KeyPolicyResponse(
      keyExpirationPeriodInDays: map['keyExpirationPeriodInDays'] as int,
    );
  }
}

