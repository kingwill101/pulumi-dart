// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getValues.
class GetValuesResult {
  final List<String>? results;

  /// Creates a new [GetValuesResult].
  /// [results] Optional.
  const GetValuesResult({
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'results': ?results,
    };
  }

  factory GetValuesResult.fromMap(Map<String, dynamic> map) {
    return GetValuesResult(
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
