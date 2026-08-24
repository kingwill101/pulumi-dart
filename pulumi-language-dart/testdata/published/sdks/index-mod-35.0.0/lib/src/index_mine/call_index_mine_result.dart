// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by call.
class CallIndexMineResult {
  final double? output;

  /// Creates a new [CallIndexMineResult].
  /// [output] Optional.
  const CallIndexMineResult({
    this.output,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'output': ?output,
    };
  }

  factory CallIndexMineResult.fromMap(Map<String, dynamic> map) {
    return CallIndexMineResult(
      output: (() { final guardedValue = map['output']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
    );
  }
}
