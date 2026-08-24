// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by secretInvoke.
class SecretInvokeResult {
  final String? response;
  final bool? secret;

  /// Creates a new [SecretInvokeResult].
  /// [response] Optional.
  /// [secret] Optional.
  const SecretInvokeResult({
    this.response,
    this.secret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'response': ?response,
      'secret': ?secret,
    };
  }

  factory SecretInvokeResult.fromMap(Map<String, dynamic> map) {
    return SecretInvokeResult(
      response: (() { final guardedValue = map['response']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secret: (() { final guardedValue = map['secret']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}
