// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProviderFeaturesEnhancedValidation {
  /// Should the AzureRM Provider validate location arguments against the list of supported Azure Locations? When enabled, invalid locations are caught at plan time; when disabled, they are caught at apply time.
  final pulumi.Input<bool?>? locations;
  /// Should the AzureRM Provider call the Azure Preflight Validation API at plan time to check the request payload for each Preflight-supported resource is valid. Note: requires valid credentials and external Azure API access at plan-time.
  final pulumi.Input<bool?>? preflightEnabled;
  /// The Azure location to use as a fallback when Preflight Validation is enabled and a resource does not specify a location. This is typically used for resources that derive their location from a dependency that has not yet been created.
  final pulumi.Input<String?>? preflightLocationFallback;
  /// Should the AzureRM Provider validate Resource Provider arguments against the list of supported Resource Providers? When enabled, invalid resource providers are caught at plan time; when disabled, they are caught at apply time.
  final pulumi.Input<bool?>? resourceProviders;

  /// Creates a new [ProviderFeaturesEnhancedValidation].
  /// [locations] Should the AzureRM Provider validate location arguments against the list of supported Azure Locations? When enabled, invalid locations are caught at plan time; when disabled, they are caught at apply time.
  /// [preflightEnabled] Should the AzureRM Provider call the Azure Preflight Validation API at plan time to check the request payload for each Preflight-supported resource is valid. Note: requires valid credentials and external Azure API access at plan-time.
  /// [preflightLocationFallback] The Azure location to use as a fallback when Preflight Validation is enabled and a resource does not specify a location. This is typically used for resources that derive their location from a dependency that has not yet been created.
  /// [resourceProviders] Should the AzureRM Provider validate Resource Provider arguments against the list of supported Resource Providers? When enabled, invalid resource providers are caught at plan time; when disabled, they are caught at apply time.
  const ProviderFeaturesEnhancedValidation({
    this.locations,
    this.preflightEnabled,
    this.preflightLocationFallback,
    this.resourceProviders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locations': ?locations,
      'preflightEnabled': ?preflightEnabled,
      'preflightLocationFallback': ?preflightLocationFallback,
      'resourceProviders': ?resourceProviders,
    };
  }

  factory ProviderFeaturesEnhancedValidation.fromMap(Map<String, dynamic> map) {
    return ProviderFeaturesEnhancedValidation(
      locations: (() { final guardedValue = map['locations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      preflightEnabled: (() { final guardedValue = map['preflightEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      preflightLocationFallback: (() { final guardedValue = map['preflightLocationFallback']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceProviders: (() { final guardedValue = map['resourceProviders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
