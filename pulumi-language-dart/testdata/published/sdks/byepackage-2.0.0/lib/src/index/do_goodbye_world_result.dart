// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by doGoodbyeWorld.
class DoGoodbyeWorldResult {
  final String? output;

  /// Creates a new [DoGoodbyeWorldResult].
  /// [output] Optional.
  const DoGoodbyeWorldResult({
    this.output,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'output': ?output,
    };
  }

  factory DoGoodbyeWorldResult.fromMap(Map<String, dynamic> map) {
    return DoGoodbyeWorldResult(
      output: (() { final guardedValue = map['output']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
