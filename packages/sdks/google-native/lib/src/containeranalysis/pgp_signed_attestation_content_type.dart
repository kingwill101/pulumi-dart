/// Type (for example schema) of the attestation payload that was signed. The verifier must ensure that the provided type is one that the verifier supports, and that the attestation payload is a valid instantiation of that type (for example by validating a JSON schema).
enum PgpSignedAttestationContentType {
  contentTypeUnspecified("CONTENT_TYPE_UNSPECIFIED"),
  simpleSigningJson("SIMPLE_SIGNING_JSON");

  const PgpSignedAttestationContentType(this.wireValue);
  final String wireValue;

  static PgpSignedAttestationContentType fromValue(String value) {
    for (final item in PgpSignedAttestationContentType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown PgpSignedAttestationContentType value: $value',
    );
  }
}
