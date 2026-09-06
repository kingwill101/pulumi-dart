// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listFeatureSubscription.
class ListFeatureSubscriptionResult {
  /// Features with enabled status
  final Map<String, bool>? features;

  /// Creates a new [ListFeatureSubscriptionResult].
  /// [features] Features with enabled status
  const ListFeatureSubscriptionResult({
    this.features,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'features': ?features,
    };
  }

  factory ListFeatureSubscriptionResult.fromMap(Map<String, dynamic> map) {
    return ListFeatureSubscriptionResult(
      features: (() { final guardedValue = map['features']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, bool>(); })(),
    );
  }
}
