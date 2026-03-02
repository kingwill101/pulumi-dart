// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Marketplace options.
class ResourceTypeRegistrationPropertiesMarketplaceOptionsResponse {
  /// Add-on plan conversion allowed.
  final pulumi.Input<bool>? addOnPlanConversionAllowed;

  /// Creates a new [ResourceTypeRegistrationPropertiesMarketplaceOptionsResponse].
  /// [addOnPlanConversionAllowed] Add-on plan conversion allowed.
  ResourceTypeRegistrationPropertiesMarketplaceOptionsResponse({
    this.addOnPlanConversionAllowed,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addOnPlanConversionAllowed': ?addOnPlanConversionAllowed,
    };
  }

  factory ResourceTypeRegistrationPropertiesMarketplaceOptionsResponse.fromMap(Map<String, dynamic> map) {
    return ResourceTypeRegistrationPropertiesMarketplaceOptionsResponse(
      addOnPlanConversionAllowed: map['addOnPlanConversionAllowed'] == null ? null : (map['addOnPlanConversionAllowed']! as bool).input(),
    );
  }
}

