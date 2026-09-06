// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Marketplace options.
class ResourceTypeRegistrationPropertiesMarketplaceOptions {
  /// Add-on plan conversion allowed.
  final pulumi.Input<bool?>? addOnPlanConversionAllowed;

  /// Creates a new [ResourceTypeRegistrationPropertiesMarketplaceOptions].
  /// [addOnPlanConversionAllowed] Add-on plan conversion allowed.
  const ResourceTypeRegistrationPropertiesMarketplaceOptions({
    this.addOnPlanConversionAllowed,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addOnPlanConversionAllowed': ?addOnPlanConversionAllowed,
    };
  }

  factory ResourceTypeRegistrationPropertiesMarketplaceOptions.fromMap(Map<String, dynamic> map) {
    return ResourceTypeRegistrationPropertiesMarketplaceOptions(
      addOnPlanConversionAllowed: (() { final guardedValue = map['addOnPlanConversionAllowed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
