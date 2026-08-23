// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by call.
class CallIndexMineResult {
  final double output;

  /// Creates a new [CallIndexMineResult].
  /// [output] Required.
  const CallIndexMineResult({
    required this.output,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'output': output,
    };
  }

  factory CallIndexMineResult.fromMap(Map<String, dynamic> map) {
    return CallIndexMineResult(
      output: (map['output'] as num).toDouble(),
    );
  }
}
