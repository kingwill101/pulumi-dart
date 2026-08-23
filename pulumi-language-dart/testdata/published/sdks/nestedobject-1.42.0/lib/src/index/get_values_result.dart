// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getValues.
class GetValuesResult {
  final List<String> results;

  /// Creates a new [GetValuesResult].
  /// [results] Required.
  const GetValuesResult({
    required this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'results': results,
    };
  }

  factory GetValuesResult.fromMap(Map<String, dynamic> map) {
    return GetValuesResult(
      results: (map['results'] as List).cast<String>(),
    );
  }
}
