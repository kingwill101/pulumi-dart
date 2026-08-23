// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by secretInvoke.
class SecretInvokeResult {
  final String response;
  final bool secret;

  /// Creates a new [SecretInvokeResult].
  /// [response] Required.
  /// [secret] Required.
  const SecretInvokeResult({
    required this.response,
    required this.secret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'response': response,
      'secret': secret,
    };
  }

  factory SecretInvokeResult.fromMap(Map<String, dynamic> map) {
    return SecretInvokeResult(
      response: map['response'] as String,
      secret: map['secret'] as bool,
    );
  }
}
