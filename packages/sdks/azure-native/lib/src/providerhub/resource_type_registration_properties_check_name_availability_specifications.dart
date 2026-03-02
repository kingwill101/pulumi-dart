// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The check name availability specifications.
class ResourceTypeRegistrationPropertiesCheckNameAvailabilitySpecifications {
  /// Whether default validation is enabled.
  final pulumi.Input<bool>? enableDefaultValidation;
  /// The resource types with custom validation.
  final pulumi.Input<List<String>>? resourceTypesWithCustomValidation;

  /// Creates a new [ResourceTypeRegistrationPropertiesCheckNameAvailabilitySpecifications].
  /// [enableDefaultValidation] Whether default validation is enabled.
  /// [resourceTypesWithCustomValidation] The resource types with custom validation.
  ResourceTypeRegistrationPropertiesCheckNameAvailabilitySpecifications({
    this.enableDefaultValidation,
    this.resourceTypesWithCustomValidation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDefaultValidation': ?enableDefaultValidation,
      'resourceTypesWithCustomValidation': ?resourceTypesWithCustomValidation,
    };
  }

  factory ResourceTypeRegistrationPropertiesCheckNameAvailabilitySpecifications.fromMap(Map<String, dynamic> map) {
    return ResourceTypeRegistrationPropertiesCheckNameAvailabilitySpecifications(
      enableDefaultValidation: map['enableDefaultValidation'] == null ? null : (map['enableDefaultValidation']! as bool).input(),
      resourceTypesWithCustomValidation: map['resourceTypesWithCustomValidation'] == null ? null : ((map['resourceTypesWithCustomValidation']! as List).cast<String>()).input(),
    );
  }
}

