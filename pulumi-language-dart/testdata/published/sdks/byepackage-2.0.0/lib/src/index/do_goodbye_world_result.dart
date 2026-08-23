// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by doGoodbyeWorld.
class DoGoodbyeWorldResult {
  final String output;

  /// Creates a new [DoGoodbyeWorldResult].
  /// [output] Required.
  const DoGoodbyeWorldResult({
    required this.output,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'output': output,
    };
  }

  factory DoGoodbyeWorldResult.fromMap(Map<String, dynamic> map) {
    return DoGoodbyeWorldResult(
      output: map['output'] as String,
    );
  }
}
