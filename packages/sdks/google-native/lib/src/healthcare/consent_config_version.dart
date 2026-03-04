/// Required. Specifies which consent enforcement version is being used for this FHIR store. This field can only be set once by either CreateFhirStore or UpdateFhirStore. After that, you must call ApplyConsents to change the version.
enum ConsentConfigVersion {
  consentEnforcementVersionUnspecified(
    "CONSENT_ENFORCEMENT_VERSION_UNSPECIFIED",
  ),
  v1("V1");

  const ConsentConfigVersion(this.wireValue);
  final String wireValue;

  static ConsentConfigVersion fromValue(String value) {
    for (final item in ConsentConfigVersion.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConsentConfigVersion value: $value');
  }
}
