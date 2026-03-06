// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSubscription.
class GetSubscriptionResult {
  /// Indicates whether tracing is enabled.
  final bool allowTracing;
  /// The ID of the API assigned to this Subscription.
  final String apiId;
  final String apiManagementId;
  /// The display name of this Subscription.
  final String displayName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The primary key for this subscription.
  final String primaryKey;
  /// The ID of the Product assigned to this Subscription.
  final String productId;
  /// The secondary key for this subscription.
  final String secondaryKey;
  /// The state of this Subscription.
  final String state;
  final String subscriptionId;
  /// The ID of the User assigned to this Subscription.
  final String userId;

  /// Creates a new [GetSubscriptionResult].
  /// [allowTracing] Indicates whether tracing is enabled.
  /// [apiId] The ID of the API assigned to this Subscription.
  /// [apiManagementId] Required.
  /// [displayName] The display name of this Subscription.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [primaryKey] The primary key for this subscription.
  /// [productId] The ID of the Product assigned to this Subscription.
  /// [secondaryKey] The secondary key for this subscription.
  /// [state] The state of this Subscription.
  /// [subscriptionId] Required.
  /// [userId] The ID of the User assigned to this Subscription.
  const GetSubscriptionResult({
    required this.allowTracing,
    required this.apiId,
    required this.apiManagementId,
    required this.displayName,
    required this.id,
    required this.primaryKey,
    required this.productId,
    required this.secondaryKey,
    required this.state,
    required this.subscriptionId,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowTracing': allowTracing,
      'apiId': apiId,
      'apiManagementId': apiManagementId,
      'displayName': displayName,
      'id': id,
      'primaryKey': primaryKey,
      'productId': productId,
      'secondaryKey': secondaryKey,
      'state': state,
      'subscriptionId': subscriptionId,
      'userId': userId,
    };
  }

  factory GetSubscriptionResult.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionResult(
      allowTracing: map['allowTracing'] as bool,
      apiId: map['apiId'] as String,
      apiManagementId: map['apiManagementId'] as String,
      displayName: map['displayName'] as String,
      id: map['id'] as String,
      primaryKey: map['primaryKey'] as String,
      productId: map['productId'] as String,
      secondaryKey: map['secondaryKey'] as String,
      state: map['state'] as String,
      subscriptionId: map['subscriptionId'] as String,
      userId: map['userId'] as String,
    );
  }
}

