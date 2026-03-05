// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by listFeatureAccount.
class ListFeatureAccountResult {
  /// Features with enabled status
  final Map<String, bool> features;

  /// Creates a new [ListFeatureAccountResult].
  /// [features] Features with enabled status
  ListFeatureAccountResult({required this.features});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'features': features};
  }

  factory ListFeatureAccountResult.fromMap(Map<String, dynamic> map) {
    return ListFeatureAccountResult(
      features: (map['features'] as Map).cast<String, bool>(),
    );
  }
}
