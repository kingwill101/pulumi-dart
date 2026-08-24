// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by doHelloWorld.
class DoHelloWorldResult {
  final String? output;

  /// Creates a new [DoHelloWorldResult].
  /// [output] Optional.
  const DoHelloWorldResult({
    this.output,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'output': ?output,
    };
  }

  factory DoHelloWorldResult.fromMap(Map<String, dynamic> map) {
    return DoHelloWorldResult(
      output: (() { final guardedValue = map['output']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
