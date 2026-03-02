// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties specific to client affine subscriptions.
class SBClientAffineProperties {
  /// Indicates the Client ID of the application that created the client-affine subscription.
  final pulumi.Input<String>? clientId;
  /// For client-affine subscriptions, this value indicates whether the subscription is durable or not.
  final pulumi.Input<bool>? isDurable;
  /// For client-affine subscriptions, this value indicates whether the subscription is shared or not.
  final pulumi.Input<bool>? isShared;

  /// Creates a new [SBClientAffineProperties].
  /// [clientId] Indicates the Client ID of the application that created the client-affine subscription.
  /// [isDurable] For client-affine subscriptions, this value indicates whether the subscription is durable or not.
  /// [isShared] For client-affine subscriptions, this value indicates whether the subscription is shared or not.
  SBClientAffineProperties({
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

  factory SBClientAffineProperties.fromMap(Map<String, dynamic> map) {
    return SBClientAffineProperties(
      clientId: map['clientId'] == null ? null : (map['clientId'] as String).input(),
      isDurable: map['isDurable'] == null ? null : (map['isDurable'] as bool).input(),
      isShared: map['isShared'] == null ? null : (map['isShared'] as bool).input(),
    );
  }
}

