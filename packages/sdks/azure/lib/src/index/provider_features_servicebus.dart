// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProviderFeaturesServicebus {
  /// When enabled, the $Default rule is automatically deleted after creating a Service Bus subscription, preventing unfiltered message delivery.
  final pulumi.Input<bool?>? autoDeleteSubscriptionDefaultRule;

  /// Creates a new [ProviderFeaturesServicebus].
  /// [autoDeleteSubscriptionDefaultRule] When enabled, the $Default rule is automatically deleted after creating a Service Bus subscription, preventing unfiltered message delivery.
  const ProviderFeaturesServicebus({
    this.autoDeleteSubscriptionDefaultRule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoDeleteSubscriptionDefaultRule': ?autoDeleteSubscriptionDefaultRule,
    };
  }

  factory ProviderFeaturesServicebus.fromMap(Map<String, dynamic> map) {
    return ProviderFeaturesServicebus(
      autoDeleteSubscriptionDefaultRule: (() { final guardedValue = map['autoDeleteSubscriptionDefaultRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
