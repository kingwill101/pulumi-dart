// ignore_for_file: unused_element, unnecessary_cast


/// Properties specific to client affine subscriptions.
class SBClientAffinePropertiesResponse {
  /// Indicates the Client ID of the application that created the client-affine subscription.
  final String? clientId;
  /// For client-affine subscriptions, this value indicates whether the subscription is durable or not.
  final bool? isDurable;
  /// For client-affine subscriptions, this value indicates whether the subscription is shared or not.
  final bool? isShared;

  /// Creates a new [SBClientAffinePropertiesResponse].
  /// [clientId] Indicates the Client ID of the application that created the client-affine subscription.
  /// [isDurable] For client-affine subscriptions, this value indicates whether the subscription is durable or not.
  /// [isShared] For client-affine subscriptions, this value indicates whether the subscription is shared or not.
  SBClientAffinePropertiesResponse({
    this.clientId,
    this.isDurable,
    this.isShared,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'isDurable': ?isDurable,
      'isShared': ?isShared,
    };
  }

  factory SBClientAffinePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SBClientAffinePropertiesResponse(
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      isDurable: map['isDurable'] == null ? null : map['isDurable'] as bool,
      isShared: map['isShared'] == null ? null : map['isShared'] as bool,
    );
  }
}

