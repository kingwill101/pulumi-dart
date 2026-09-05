// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SubscriptionClientScopedSubscription {
  /// Specifies the Client ID of the application that created the client-scoped subscription. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** Client ID can be null or empty, but it must match the client ID set on the JMS client application. From the Azure Service Bus perspective, a null client ID and an empty client id have the same behavior. If the client ID is set to null or empty, it is only accessible to client applications whose client ID is also set to null or empty.
  final pulumi.Input<String?>? clientId;
  /// Whether the client scoped subscription is durable. This property can only be controlled from the application side.
  final pulumi.Input<bool?>? isClientScopedSubscriptionDurable;
  /// Whether the client scoped subscription is shareable. Defaults to `true` Changing this forces a new resource to be created.
  final pulumi.Input<bool?>? isClientScopedSubscriptionShareable;

  /// Creates a new [SubscriptionClientScopedSubscription].
  /// [clientId] Specifies the Client ID of the application that created the client-scoped subscription. Changing this forces a new resource to be created.
  /// [isClientScopedSubscriptionDurable] Whether the client scoped subscription is durable. This property can only be controlled from the application side.
  /// [isClientScopedSubscriptionShareable] Whether the client scoped subscription is shareable. Defaults to `true` Changing this forces a new resource to be created.
  const SubscriptionClientScopedSubscription({
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
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isClientScopedSubscriptionDurable: (() { final guardedValue = map['isClientScopedSubscriptionDurable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isClientScopedSubscriptionShareable: (() { final guardedValue = map['isClientScopedSubscriptionShareable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
