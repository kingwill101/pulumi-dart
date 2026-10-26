import 'package:pulumi/pulumi.dart' as pulumi;

/// Type (for example schema) of the attestation payload that was signed. The verifier must ensure that the provided type is one that the verifier supports, and that the attestation payload is a valid instantiation of that type (for example by validating a JSON schema).
enum PgpSignedAttestationContentTypeContaineranalysisV1beta1 implements pulumi.PulumiEnum<String> {
  contentTypeUnspecified("CONTENT_TYPE_UNSPECIFIED"),
  simpleSigningJson("SIMPLE_SIGNING_JSON");

  const PgpSignedAttestationContentTypeContaineranalysisV1beta1(this.wireValue);
  @override
  final String wireValue;

  static PgpSignedAttestationContentTypeContaineranalysisV1beta1 fromValue(String value) {
    for (final item in PgpSignedAttestationContentTypeContaineranalysisV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PgpSignedAttestationContentTypeContaineranalysisV1beta1 value: $value');
  }
}
