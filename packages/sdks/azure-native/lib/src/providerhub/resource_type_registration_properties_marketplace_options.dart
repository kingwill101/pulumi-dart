// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Marketplace options.
class ResourceTypeRegistrationPropertiesMarketplaceOptions {
  /// Add-on plan conversion allowed.
  final pulumi.Input<bool>? addOnPlanConversionAllowed;

  /// Creates a new [ResourceTypeRegistrationPropertiesMarketplaceOptions].
  /// [addOnPlanConversionAllowed] Add-on plan conversion allowed.
  ResourceTypeRegistrationPropertiesMarketplaceOptions({
    this.addOnPlanConversionAllowed,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addOnPlanConversionAllowed': ?addOnPlanConversionAllowed,
    };
  }

  factory ResourceTypeRegistrationPropertiesMarketplaceOptions.fromMap(Map<String, dynamic> map) {
    return ResourceTypeRegistrationPropertiesMarketplaceOptions(
      addOnPlanConversionAllowed: map['addOnPlanConversionAllowed'] == null ? null : (map['addOnPlanConversionAllowed']! as bool).input(),
    );
  }
}

