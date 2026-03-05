/// Immutable. The FHIR specification version that this FHIR store supports natively. This field is immutable after store creation. Requests are rejected if they contain FHIR resources of a different version. Version is required for every FHIR store.
enum FhirStoreVersion {
  versionUnspecified("VERSION_UNSPECIFIED"),
  dstu2("DSTU2"),
  stu3("STU3"),
  r4("R4");

  const FhirStoreVersion(this.wireValue);
  final String wireValue;

  static FhirStoreVersion fromValue(String value) {
    for (final item in FhirStoreVersion.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FhirStoreVersion value: $value');
  }
}

