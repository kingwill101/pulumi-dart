// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by greet.
class GreetResult {
  final String greeting;

  /// Creates a new [GreetResult].
  /// [greeting] Required.
  const GreetResult({
    required this.greeting,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'greeting': greeting,
    };
  }

  factory GreetResult.fromMap(Map<String, dynamic> map) {
    return GreetResult(
      greeting: map['greeting'] as String,
    );
  }
}
