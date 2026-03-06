// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSubscription.
class GetSubscriptionResult {
  /// Name of the API product for which the developer is purchasing a subscription.
  final String apiproduct;
  /// Time when the API product subscription was created in milliseconds since epoch.
  final String createdAt;
  /// Time when the API product subscription ends in milliseconds since epoch.
  final String endTime;
  /// Time when the API product subscription was last modified in milliseconds since epoch.
  final String lastModifiedAt;
  /// Name of the API product subscription.
  final String name;
  /// Time when the API product subscription starts in milliseconds since epoch.
  final String startTime;

  /// Creates a new [GetSubscriptionResult].
  /// [apiproduct] Name of the API product for which the developer is purchasing a subscription.
  /// [createdAt] Time when the API product subscription was created in milliseconds since epoch.
  /// [endTime] Time when the API product subscription ends in milliseconds since epoch.
  /// [lastModifiedAt] Time when the API product subscription was last modified in milliseconds since epoch.
  /// [name] Name of the API product subscription.
  /// [startTime] Time when the API product subscription starts in milliseconds since epoch.
  const GetSubscriptionResult({
    required this.apiproduct,
    required this.createdAt,
    required this.endTime,
    required this.lastModifiedAt,
    required this.name,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiproduct': apiproduct,
      'createdAt': createdAt,
      'endTime': endTime,
      'lastModifiedAt': lastModifiedAt,
      'name': name,
      'startTime': startTime,
    };
  }

  factory GetSubscriptionResult.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionResult(
      apiproduct: map['apiproduct'] as String,
      createdAt: map['createdAt'] as String,
      endTime: map['endTime'] as String,
      lastModifiedAt: map['lastModifiedAt'] as String,
      name: map['name'] as String,
      startTime: map['startTime'] as String,
    );
  }
}

