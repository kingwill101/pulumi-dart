// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Applies the repricing configuration at the entitlement level.
class GoogleCloudChannelV1RepricingConfigEntitlementGranularity {
  /// Resource name of the entitlement. Format: accounts/{account_id}/customers/{customer_id}/entitlements/{entitlement_id}
  final pulumi.Input<String>? entitlement;

  /// Creates a new [GoogleCloudChannelV1RepricingConfigEntitlementGranularity].
  /// [entitlement] Resource name of the entitlement. Format: accounts/{account_id}/customers/{customer_id}/entitlements/{entitlement_id}
  const GoogleCloudChannelV1RepricingConfigEntitlementGranularity({
    this.entitlement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entitlement': ?entitlement,
    };
  }

  factory GoogleCloudChannelV1RepricingConfigEntitlementGranularity.fromMap(Map<String, dynamic> map) {
    return GoogleCloudChannelV1RepricingConfigEntitlementGranularity(
      entitlement: (() { final guardedValue = map['entitlement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

