// ignore_for_file: unused_element, unnecessary_cast


class SubscriptionClientScopedSubscription {
  /// Specifies the Client ID of the application that created the client-scoped subscription. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Client ID can be null or empty, but it must match the client ID set on the JMS client application. From the Azure Service Bus perspective, a null client ID and an empty client id have the same behavior. If the client ID is set to null or empty, it is only accessible to client applications whose client ID is also set to null or empty.
  final String? clientId;
  /// Whether the client scoped subscription is durable. This property can only be controlled from the application side.
  final bool? isClientScopedSubscriptionDurable;
  /// Whether the client scoped subscription is shareable. Defaults to `true` Changing this forces a new resource to be created.
  final bool? isClientScopedSubscriptionShareable;

  /// Creates a new [SubscriptionClientScopedSubscription].
  /// [clientId] Specifies the Client ID of the application that created the client-scoped subscription. Changing this forces a new resource to be created.
  /// [isClientScopedSubscriptionDurable] Whether the client scoped subscription is durable. This property can only be controlled from the application side.
  /// [isClientScopedSubscriptionShareable] Whether the client scoped subscription is shareable. Defaults to `true` Changing this forces a new resource to be created.
  SubscriptionClientScopedSubscription({
    this.clientId,
    this.isClientScopedSubscriptionDurable,
    this.isClientScopedSubscriptionShareable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'isClientScopedSubscriptionDurable': ?isClientScopedSubscriptionDurable,
      'isClientScopedSubscriptionShareable': ?isClientScopedSubscriptionShareable,
    };
  }

  factory SubscriptionClientScopedSubscription.fromMap(Map<String, dynamic> map) {
    return SubscriptionClientScopedSubscription(
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      isClientScopedSubscriptionDurable: map['isClientScopedSubscriptionDurable'] == null ? null : map['isClientScopedSubscriptionDurable'] as bool,
      isClientScopedSubscriptionShareable: map['isClientScopedSubscriptionShareable'] == null ? null : map['isClientScopedSubscriptionShareable'] as bool,
    );
  }
}

