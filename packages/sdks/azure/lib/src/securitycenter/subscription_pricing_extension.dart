// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SubscriptionPricingExtension {
  /// Key/Value pairs that are required for some extensions.
  ///
  /// > **Note:** If an extension is not defined, it will not be enabled.
  ///
  /// > **Note:** Changing the pricing tier to `Standard` affects all resources of the given type in the subscription and could be quite costly.
  final pulumi.Input<Map<String, String>>? additionalExtensionProperties;
  /// The name of extension.
  final pulumi.Input<String> name;

  /// Creates a new [SubscriptionPricingExtension].
  /// [additionalExtensionProperties] Key/Value pairs that are required for some extensions.
  /// [name] The name of extension.
  SubscriptionPricingExtension({
    this.additionalExtensionProperties,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalExtensionProperties': ?additionalExtensionProperties,
      'name': name,
    };
  }

  factory SubscriptionPricingExtension.fromMap(Map<String, dynamic> map) {
    return SubscriptionPricingExtension(
      additionalExtensionProperties: map['additionalExtensionProperties'] == null ? null : ((map['additionalExtensionProperties']! as Map).cast<String, String>()).input(),
      name: (map['name'] as String).input(),
    );
  }
}

