// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The check name availability specifications.
class ResourceTypeRegistrationPropertiesCheckNameAvailabilitySpecificationsResponse {
  /// Whether default validation is enabled.
  final pulumi.Input<bool>? enableDefaultValidation;

  /// The resource types with custom validation.
  final pulumi.Input<List<String>>? resourceTypesWithCustomValidation;

  /// Creates a new [ResourceTypeRegistrationPropertiesCheckNameAvailabilitySpecificationsResponse].
  /// [enableDefaultValidation] Whether default validation is enabled.
  /// [resourceTypesWithCustomValidation] The resource types with custom validation.
  ResourceTypeRegistrationPropertiesCheckNameAvailabilitySpecificationsResponse({
    this.enableDefaultValidation,
    this.resourceTypesWithCustomValidation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDefaultValidation': ?enableDefaultValidation,
      'resourceTypesWithCustomValidation': ?resourceTypesWithCustomValidation,
    };
  }

  factory ResourceTypeRegistrationPropertiesCheckNameAvailabilitySpecificationsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ResourceTypeRegistrationPropertiesCheckNameAvailabilitySpecificationsResponse(
      enableDefaultValidation: (() {
        final guardedValue = map['enableDefaultValidation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      resourceTypesWithCustomValidation: (() {
        final guardedValue = map['resourceTypesWithCustomValidation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
