/// Enable parsing of references within complex FHIR data types such as Extensions. If this value is set to ENABLED, then features like referential integrity and Bundle reference rewriting apply to all references. If this flag has not been specified the behavior of the FHIR store will not change, references in complex data types will not be parsed. New stores will have this value set to ENABLED after a notification period. Warning: turning on this flag causes processing existing resources to fail if they contain references to non-existent resources.
enum FhirStoreComplexDataTypeReferenceParsingHealthcareV1beta1 {
  complexDataTypeReferenceParsingUnspecified("COMPLEX_DATA_TYPE_REFERENCE_PARSING_UNSPECIFIED"),
  disabled("DISABLED"),
  enabled("ENABLED");

  const FhirStoreComplexDataTypeReferenceParsingHealthcareV1beta1(this.wireValue);
  final String wireValue;

  static FhirStoreComplexDataTypeReferenceParsingHealthcareV1beta1 fromValue(String value) {
    for (final item in FhirStoreComplexDataTypeReferenceParsingHealthcareV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FhirStoreComplexDataTypeReferenceParsingHealthcareV1beta1 value: $value');
  }
}
