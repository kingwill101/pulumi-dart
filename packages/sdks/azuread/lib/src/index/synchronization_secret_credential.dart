// ignore_for_file: unused_element, unnecessary_cast


class SynchronizationSecretCredential {
  /// The key of the secret.
  final String key;
  /// The value of the secret.
  final String value;

  /// Creates a new [SynchronizationSecretCredential].
  /// [key] The key of the secret.
  /// [value] The value of the secret.
  SynchronizationSecretCredential({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory SynchronizationSecretCredential.fromMap(Map<String, dynamic> map) {
    return SynchronizationSecretCredential(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}

