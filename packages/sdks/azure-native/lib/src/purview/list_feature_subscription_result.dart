// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listFeatureSubscription.
class ListFeatureSubscriptionResult {
  /// Features with enabled status
  final Map<String, bool> features;

  /// Creates a new [ListFeatureSubscriptionResult].
  /// [features] Features with enabled status
  const ListFeatureSubscriptionResult({
    required this.features,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'features': features,
    };
  }

  factory ListFeatureSubscriptionResult.fromMap(Map<String, dynamic> map) {
    return ListFeatureSubscriptionResult(
      features: (map['features'] as Map).cast<String, bool>(),
    );
  }
}
