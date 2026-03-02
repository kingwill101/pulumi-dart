// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details about the SaaS offer purchased from the marketplace.
class SaasPropertiesResponse {
  /// Resource ID of the SaaS offer purchased from the marketplace.
  final pulumi.Input<String>? saasResourceId;
  /// Subscription ID of the SaaS offer purchased from the marketplace.
  final pulumi.Input<String>? saasSubscriptionId;

  /// Creates a new [SaasPropertiesResponse].
  /// [saasResourceId] Resource ID of the SaaS offer purchased from the marketplace.
  /// [saasSubscriptionId] Subscription ID of the SaaS offer purchased from the marketplace.
  SaasPropertiesResponse({
    this.saasResourceId,
    this.saasSubscriptionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'saasResourceId': ?saasResourceId,
      'saasSubscriptionId': ?saasSubscriptionId,
    };
  }

  factory SaasPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SaasPropertiesResponse(
      saasResourceId: map['saasResourceId'] == null ? null : (map['saasResourceId']! as String).input(),
      saasSubscriptionId: map['saasSubscriptionId'] == null ? null : (map['saasSubscriptionId']! as String).input(),
    );
  }
}

