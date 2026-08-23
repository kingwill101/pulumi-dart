// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnhancedValidation {
  /// Should the AzureRM Provider validate location arguments against the list of supported Azure Locations? When enabled, invalid locations are caught at plan time; when disabled, they are caught at apply time.
  final pulumi.Input<bool>? locations;
  /// Should the AzureRM Provider validate Resource Provider arguments against the list of supported Resource Providers? When enabled, invalid resource providers are caught at plan time; when disabled, they are caught at apply time.
  final pulumi.Input<bool>? resourceProviders;

  /// Creates a new [EnhancedValidation].
  /// [locations] Should the AzureRM Provider validate location arguments against the list of supported Azure Locations? When enabled, invalid locations are caught at plan time; when disabled, they are caught at apply time.
  /// [resourceProviders] Should the AzureRM Provider validate Resource Provider arguments against the list of supported Resource Providers? When enabled, invalid resource providers are caught at plan time; when disabled, they are caught at apply time.
  const EnhancedValidation({
    this.locations,
    this.resourceProviders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locations': ?locations,
      'resourceProviders': ?resourceProviders,
    };
  }

  factory EnhancedValidation.fromMap(Map<String, dynamic> map) {
    return EnhancedValidation(
      locations: (() { final guardedValue = map['locations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      resourceProviders: (() { final guardedValue = map['resourceProviders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
