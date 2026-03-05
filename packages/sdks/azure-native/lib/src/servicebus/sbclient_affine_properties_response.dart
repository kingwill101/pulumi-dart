// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties specific to client affine subscriptions.
class SBClientAffinePropertiesResponse {
  /// Indicates the Client ID of the application that created the client-affine subscription.
  final pulumi.Input<String>? clientId;
  /// For client-affine subscriptions, this value indicates whether the subscription is durable or not.
  final pulumi.Input<bool>? isDurable;
  /// For client-affine subscriptions, this value indicates whether the subscription is shared or not.
  final pulumi.Input<bool>? isShared;

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
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isDurable: (() { final guardedValue = map['isDurable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isShared: (() { final guardedValue = map['isShared']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

