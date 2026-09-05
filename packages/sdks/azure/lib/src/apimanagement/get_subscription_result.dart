// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSubscription.
class GetSubscriptionResult {
  /// Indicates whether tracing is enabled.
  final bool? allowTracing;
  /// The ID of the API assigned to this Subscription.
  final String? apiId;
  final String? apiManagementId;
  /// The display name of this Subscription.
  final String? displayName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The primary key for this subscription.
  final String? primaryKey;
  /// The ID of the Product assigned to this Subscription.
  final String? productId;
  /// The secondary key for this subscription.
  final String? secondaryKey;
  /// The state of this Subscription.
  final String? state;
  final String? subscriptionId;
  /// The ID of the User assigned to this Subscription.
  final String? userId;

  /// Creates a new [GetSubscriptionResult].
  /// [allowTracing] Indicates whether tracing is enabled.
  /// [apiId] The ID of the API assigned to this Subscription.
  /// [apiManagementId] Optional.
  /// [displayName] The display name of this Subscription.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [primaryKey] The primary key for this subscription.
  /// [productId] The ID of the Product assigned to this Subscription.
  /// [secondaryKey] The secondary key for this subscription.
  /// [state] The state of this Subscription.
  /// [subscriptionId] Optional.
  /// [userId] The ID of the User assigned to this Subscription.
  const GetSubscriptionResult({
    this.allowTracing,
    this.apiId,
    this.apiManagementId,
    this.displayName,
    this.id,
    this.primaryKey,
    this.productId,
    this.secondaryKey,
    this.state,
    this.subscriptionId,
    this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowTracing': ?allowTracing,
      'apiId': ?apiId,
      'apiManagementId': ?apiManagementId,
      'displayName': ?displayName,
      'id': ?id,
      'primaryKey': ?primaryKey,
      'productId': ?productId,
      'secondaryKey': ?secondaryKey,
      'state': ?state,
      'subscriptionId': ?subscriptionId,
      'userId': ?userId,
    };
  }

  factory GetSubscriptionResult.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionResult(
      allowTracing: (() { final guardedValue = map['allowTracing']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      apiId: (() { final guardedValue = map['apiId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      apiManagementId: (() { final guardedValue = map['apiManagementId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryKey: (() { final guardedValue = map['primaryKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      productId: (() { final guardedValue = map['productId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryKey: (() { final guardedValue = map['secondaryKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userId: (() { final guardedValue = map['userId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
