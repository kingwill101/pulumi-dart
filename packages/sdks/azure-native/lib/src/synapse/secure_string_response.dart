// ignore_for_file: unused_element, unnecessary_cast


/// Azure Synapse secure string definition. The string value will be masked with asterisks '*' during Get or List API calls.
class SecureStringResponse {
  /// Type of the secret.
  /// Expected value is 'SecureString'.
  final String type;
  /// Value of secure string.
  final String value;

  /// Creates a new [SecureStringResponse].
  /// [type] Type of the secret.
  /// [value] Value of secure string.
  SecureStringResponse({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'value': value,
    };
  }

  factory SecureStringResponse.fromMap(Map<String, dynamic> map) {
    return SecureStringResponse(
      type: map['type'] as String,
      value: map['value'] as String,
    );
  }
}

