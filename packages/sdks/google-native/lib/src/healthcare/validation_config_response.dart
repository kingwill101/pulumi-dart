// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contains the configuration for FHIR profiles and validation.
class ValidationConfigResponse {
  /// Whether to disable FHIRPath validation for incoming resources. Set this to true to disable checking incoming resources for conformance against FHIRPath requirement defined in the FHIR specification. This property only affects resource types that do not have profiles configured for them, any rules in enabled implementation guides will still be enforced.
  final pulumi.Input<bool> disableFhirpathValidation;

  /// Whether to disable profile validation for this FHIR store. Set this to true to disable checking incoming resources for conformance against structure definitions in this FHIR store.
  final pulumi.Input<bool> disableProfileValidation;

  /// Whether to disable reference type validation for incoming resources. Set this to true to disable checking incoming resources for conformance against reference type requirement defined in the FHIR specification. This property only affects resource types that do not have profiles configured for them, any rules in enabled implementation guides will still be enforced.
  final pulumi.Input<bool> disableReferenceTypeValidation;

  /// Whether to disable required fields validation for incoming resources. Set this to true to disable checking incoming resources for conformance against required fields requirement defined in the FHIR specification. This property only affects resource types that do not have profiles configured for them, any rules in enabled implementation guides will still be enforced.
  final pulumi.Input<bool> disableRequiredFieldValidation;

  /// A list of implementation guide URLs in this FHIR store that are used to configure the profiles to use for validation. For example, to use the US Core profiles for validation, set `enabled_implementation_guides` to `["http://hl7.org/fhir/us/core/ImplementationGuide/ig"]`. If `enabled_implementation_guides` is empty or omitted, then incoming resources are only required to conform to the base FHIR profiles. Otherwise, a resource must conform to at least one profile listed in the `global` property of one of the enabled ImplementationGuides. The Cloud Healthcare API does not currently enforce all of the rules in a StructureDefinition. The following rules are supported: - min/max - minValue/maxValue - maxLength - type - fixed[x] - pattern[x] on simple types - slicing, when using "value" as the discriminator type When a URL cannot be resolved (for example, in a type assertion), the server does not return an error.
  final pulumi.Input<List<String>> enabledImplementationGuides;

  /// Creates a new [ValidationConfigResponse].
  /// [disableFhirpathValidation] Whether to disable FHIRPath validation for incoming resources. Set this to true to disable checking incoming resources for conformance against FHIRPath requirement defined in the FHIR specification. This property only affects resource types that do not have profiles configured for them, any rules in enabled implementation guides will still be enforced.
  /// [disableProfileValidation] Whether to disable profile validation for this FHIR store. Set this to true to disable checking incoming resources for conformance against structure definitions in this FHIR store.
  /// [disableReferenceTypeValidation] Whether to disable reference type validation for incoming resources. Set this to true to disable checking incoming resources for conformance against reference type requirement defined in the FHIR specification. This property only affects resource types that do not have profiles configured for them, any rules in enabled implementation guides will still be enforced.
  /// [disableRequiredFieldValidation] Whether to disable required fields validation for incoming resources. Set this to true to disable checking incoming resources for conformance against required fields requirement defined in the FHIR specification. This property only affects resource types that do not have profiles configured for them, any rules in enabled implementation guides will still be enforced.
  /// [enabledImplementationGuides] A list of implementation guide URLs in this FHIR store that are used to configure the profiles to use for validation. For example, to use the US Core profiles for validation, set `enabled_implementation_guides` to `["http://hl7.org/fhir/us/core/ImplementationGuide/ig"]`. If `enabled_implementation_guides` is empty or omitted, then incoming resources are only required to conform to the base FHIR profiles. Otherwise, a resource must conform to at least one profile listed in the `global` property of one of the enabled ImplementationGuides. The Cloud Healthcare API does not currently enforce all of the rules in a StructureDefinition. The following rules are supported: - min/max - minValue/maxValue - maxLength - type - fixed[x] - pattern[x] on simple types - slicing, when using "value" as the discriminator type When a URL cannot be resolved (for example, in a type assertion), the server does not return an error.
  ValidationConfigResponse({
    required this.disableFhirpathValidation,
    required this.disableProfileValidation,
    required this.disableReferenceTypeValidation,
    required this.disableRequiredFieldValidation,
    required this.enabledImplementationGuides,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableFhirpathValidation': disableFhirpathValidation,
      'disableProfileValidation': disableProfileValidation,
      'disableReferenceTypeValidation': disableReferenceTypeValidation,
      'disableRequiredFieldValidation': disableRequiredFieldValidation,
      'enabledImplementationGuides': enabledImplementationGuides,
    };
  }

  factory ValidationConfigResponse.fromMap(Map<String, dynamic> map) {
    return ValidationConfigResponse(
      disableFhirpathValidation: pulumi.Input.fromValue(
        map['disableFhirpathValidation'] as bool,
      ),
      disableProfileValidation: pulumi.Input.fromValue(
        map['disableProfileValidation'] as bool,
      ),
      disableReferenceTypeValidation: pulumi.Input.fromValue(
        map['disableReferenceTypeValidation'] as bool,
      ),
      disableRequiredFieldValidation: pulumi.Input.fromValue(
        map['disableRequiredFieldValidation'] as bool,
      ),
      enabledImplementationGuides: pulumi.Input.fromValue(
        (map['enabledImplementationGuides'] as List).cast<String>(),
      ),
    );
  }
}
