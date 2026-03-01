// ignore_for_file: unused_element, unnecessary_cast


/// The secret info when type is rawValue. It's for scenarios that user input the secret.
class ValueSecretInfoResponse {
  /// The secret type.
  /// Expected value is 'rawValue'.
  final String secretType;
  /// The actual value of the secret.
  final String? value;

  /// Creates a new [ValueSecretInfoResponse].
  /// [secretType] The secret type.
  /// [value] The actual value of the secret.
  ValueSecretInfoResponse({
    required this.secretType,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretType': secretType,
      'value': ?value,
    };
  }

  factory ValueSecretInfoResponse.fromMap(Map<String, dynamic> map) {
    return ValueSecretInfoResponse(
      secretType: map['secretType'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

