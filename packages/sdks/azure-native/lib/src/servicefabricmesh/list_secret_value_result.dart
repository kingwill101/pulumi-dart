// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by listSecretValue.
class ListSecretValueResult {
  /// The actual value of the secret.
  final String? value;

  /// Creates a new [ListSecretValueResult].
  /// [value] The actual value of the secret.
  ListSecretValueResult({this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'value': ?value};
  }

  factory ListSecretValueResult.fromMap(Map<String, dynamic> map) {
    return ListSecretValueResult(
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
