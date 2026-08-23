// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by call.
class CallResult {
  final double output;

  /// Creates a new [CallResult].
  /// [output] Required.
  const CallResult({
    required this.output,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'output': output,
    };
  }

  factory CallResult.fromMap(Map<String, dynamic> map) {
    return CallResult(
      output: (map['output'] as num).toDouble(),
    );
  }
}
