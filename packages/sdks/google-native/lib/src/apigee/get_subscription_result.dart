// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSubscription.
class GetSubscriptionResult {
  /// Name of the API product for which the developer is purchasing a subscription.
  final String? apiproduct;
  /// Time when the API product subscription was created in milliseconds since epoch.
  final String? createdAt;
  /// Time when the API product subscription ends in milliseconds since epoch.
  final String? endTime;
  /// Time when the API product subscription was last modified in milliseconds since epoch.
  final String? lastModifiedAt;
  /// Name of the API product subscription.
  final String? name;
  /// Time when the API product subscription starts in milliseconds since epoch.
  final String? startTime;

  /// Creates a new [GetSubscriptionResult].
  /// [apiproduct] Name of the API product for which the developer is purchasing a subscription.
  /// [createdAt] Time when the API product subscription was created in milliseconds since epoch.
  /// [endTime] Time when the API product subscription ends in milliseconds since epoch.
  /// [lastModifiedAt] Time when the API product subscription was last modified in milliseconds since epoch.
  /// [name] Name of the API product subscription.
  /// [startTime] Time when the API product subscription starts in milliseconds since epoch.
  const GetSubscriptionResult({
    this.apiproduct,
    this.createdAt,
    this.endTime,
    this.lastModifiedAt,
    this.name,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiproduct': ?apiproduct,
      'createdAt': ?createdAt,
      'endTime': ?endTime,
      'lastModifiedAt': ?lastModifiedAt,
      'name': ?name,
      'startTime': ?startTime,
    };
  }

  factory GetSubscriptionResult.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionResult(
      apiproduct: (() { final guardedValue = map['apiproduct']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastModifiedAt: (() { final guardedValue = map['lastModifiedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
