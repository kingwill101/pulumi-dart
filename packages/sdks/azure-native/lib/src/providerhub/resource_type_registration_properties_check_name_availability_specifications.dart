// ignore_for_file: unused_element, unnecessary_cast


/// The check name availability specifications.
class ResourceTypeRegistrationPropertiesCheckNameAvailabilitySpecifications {
  /// Whether default validation is enabled.
  final bool? enableDefaultValidation;
  /// The resource types with custom validation.
  final List<String>? resourceTypesWithCustomValidation;

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
      enableDefaultValidation: map['enableDefaultValidation'] == null ? null : map['enableDefaultValidation'] as bool,
      resourceTypesWithCustomValidation: map['resourceTypesWithCustomValidation'] == null ? null : (map['resourceTypesWithCustomValidation'] as List).cast<String>(),
    );
  }
}

