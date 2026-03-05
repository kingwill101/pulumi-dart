/// Base profile type for handling FHIR fields.
enum FhirFieldConfigProfileType {
  profileTypeUnspecified("PROFILE_TYPE_UNSPECIFIED"),
  keepAll("KEEP_ALL"),
  basic("BASIC"),
  cleanAll("CLEAN_ALL");

  const FhirFieldConfigProfileType(this.wireValue);
  final String wireValue;

  static FhirFieldConfigProfileType fromValue(String value) {
    for (final item in FhirFieldConfigProfileType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FhirFieldConfigProfileType value: $value');
  }
}

