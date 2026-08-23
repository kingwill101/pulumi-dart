// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details about the SaaS offer purchased from the marketplace.
class SaasProperties {
  /// Resource ID of the SaaS offer purchased from the marketplace.
  final pulumi.Input<String>? saasResourceId;
  /// Subscription ID of the SaaS offer purchased from the marketplace.
  final pulumi.Input<String>? saasSubscriptionId;

  /// Creates a new [SaasProperties].
  /// [saasResourceId] Resource ID of the SaaS offer purchased from the marketplace.
  /// [saasSubscriptionId] Subscription ID of the SaaS offer purchased from the marketplace.
  const SaasProperties({
    this.saasResourceId,
    this.saasSubscriptionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'saasResourceId': ?saasResourceId,
      'saasSubscriptionId': ?saasSubscriptionId,
    };
  }

  factory SaasProperties.fromMap(Map<String, dynamic> map) {
    return SaasProperties(
      saasResourceId: (() { final guardedValue = map['saasResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      saasSubscriptionId: (() { final guardedValue = map['saasSubscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
