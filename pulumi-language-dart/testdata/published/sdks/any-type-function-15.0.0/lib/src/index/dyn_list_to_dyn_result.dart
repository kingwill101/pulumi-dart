// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by dynListToDyn.
class DynListToDynResult {
  final dynamic result;

  /// Creates a new [DynListToDynResult].
  /// [result] Optional.
  const DynListToDynResult({
    this.result,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'result': ?result,
    };
  }

  factory DynListToDynResult.fromMap(Map<String, dynamic> map) {
    return DynListToDynResult(
      result: (() { final guardedValue = map['result']; if (guardedValue == null) return null; return guardedValue; })(),
    );
  }
}
