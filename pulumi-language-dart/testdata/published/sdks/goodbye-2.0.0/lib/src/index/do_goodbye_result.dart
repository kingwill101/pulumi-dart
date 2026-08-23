// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by doGoodbye.
class DoGoodbyeResult {
  final String output;

  /// Creates a new [DoGoodbyeResult].
  /// [output] Required.
  const DoGoodbyeResult({
    required this.output,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'output': output,
    };
  }

  factory DoGoodbyeResult.fromMap(Map<String, dynamic> map) {
    return DoGoodbyeResult(
      output: map['output'] as String,
    );
  }
}
