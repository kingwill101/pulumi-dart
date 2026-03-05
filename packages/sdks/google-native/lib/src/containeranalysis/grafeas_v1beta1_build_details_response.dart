// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'build_provenance_response_containeranalysis_v1beta1.dart';
import 'in_toto_slsa_provenance_v1_response_containeranalysis_v1beta1.dart';

/// Details of a build occurrence.
class GrafeasV1beta1BuildDetailsResponse {
  final pulumi.Input<InTotoSlsaProvenanceV1ResponseContaineranalysisV1beta1> inTotoSlsaProvenanceV1;
  /// The actual provenance for the build.
  final pulumi.Input<BuildProvenanceResponseContaineranalysisV1beta1> provenance;
  /// Serialized JSON representation of the provenance, used in generating the build signature in the corresponding build note. After verifying the signature, `provenance_bytes` can be unmarshalled and compared to the provenance to confirm that it is unchanged. A base64-encoded string representation of the provenance bytes is used for the signature in order to interoperate with openssl which expects this format for signature verification. The serialized form is captured both to avoid ambiguity in how the provenance is marshalled to json as well to prevent incompatibilities with future changes.
  final pulumi.Input<String> provenanceBytes;

  /// Creates a new [GrafeasV1beta1BuildDetailsResponse].
  /// [inTotoSlsaProvenanceV1] Required.
  /// [provenance] The actual provenance for the build.
  /// [provenanceBytes] Serialized JSON representation of the provenance, used in generating the build signature in the corresponding build note. After verifying the signature, `provenance_bytes` can be unmarshalled and compared to the provenance to confirm that it is unchanged. A base64-encoded string representation of the provenance bytes is used for the signature in order to interoperate with openssl which expects this format for signature verification. The serialized form is captured both to avoid ambiguity in how the provenance is marshalled to json as well to prevent incompatibilities with future changes.
  GrafeasV1beta1BuildDetailsResponse({
    required this.inTotoSlsaProvenanceV1,
    required this.provenance,
    required this.provenanceBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inTotoSlsaProvenanceV1': pulumi.Input.mapInputValue<InTotoSlsaProvenanceV1ResponseContaineranalysisV1beta1, Map<String, dynamic>>(inTotoSlsaProvenanceV1, (value) => value.toMap()),
      'provenance': pulumi.Input.mapInputValue<BuildProvenanceResponseContaineranalysisV1beta1, Map<String, dynamic>>(provenance, (value) => value.toMap()),
      'provenanceBytes': provenanceBytes,
    };
  }

  factory GrafeasV1beta1BuildDetailsResponse.fromMap(Map<String, dynamic> map) {
    return GrafeasV1beta1BuildDetailsResponse(
      inTotoSlsaProvenanceV1: pulumi.Input.fromValue(InTotoSlsaProvenanceV1ResponseContaineranalysisV1beta1.fromMap((map['inTotoSlsaProvenanceV1']! as Map).cast<String, dynamic>())),
      provenance: pulumi.Input.fromValue(BuildProvenanceResponseContaineranalysisV1beta1.fromMap((map['provenance']! as Map).cast<String, dynamic>())),
      provenanceBytes: pulumi.Input.fromValue(map['provenanceBytes'] as String),
    );
  }
}

