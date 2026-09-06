// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listFeatureAccount.
class ListFeatureAccountResult {
  /// Features with enabled status
  final Map<String, bool>? features;

  /// Creates a new [ListFeatureAccountResult].
  /// [features] Features with enabled status
  const ListFeatureAccountResult({
    this.features,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'features': ?features,
    };
  }

  factory ListFeatureAccountResult.fromMap(Map<String, dynamic> map) {
    return ListFeatureAccountResult(
      features: (() { final guardedValue = map['features']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, bool>(); })(),
    );
  }
}
