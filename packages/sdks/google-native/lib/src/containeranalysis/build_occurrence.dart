// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'build_provenance.dart';
import 'in_toto_provenance.dart';
import 'in_toto_slsa_provenance_v1.dart';
import 'in_toto_statement.dart';

/// Details of a build occurrence.
class BuildOccurrence {
  /// In-Toto Slsa Provenance V1 represents a slsa provenance meeting the slsa spec, wrapped in an in-toto statement. This allows for direct jsonification of a to-spec in-toto slsa statement with a to-spec slsa provenance.
  final pulumi.Input<InTotoSlsaProvenanceV1>? inTotoSlsaProvenanceV1;
  /// Deprecated. See InTotoStatement for the replacement. In-toto Provenance representation as defined in spec.
  final pulumi.Input<InTotoProvenance>? intotoProvenance;
  /// In-toto Statement representation as defined in spec. The intoto_statement can contain any type of provenance. The serialized payload of the statement can be stored and signed in the Occurrence's envelope.
  final pulumi.Input<InTotoStatement>? intotoStatement;
  /// The actual provenance for the build.
  final pulumi.Input<BuildProvenance>? provenance;
  /// Serialized JSON representation of the provenance, used in generating the build signature in the corresponding build note. After verifying the signature, `provenance_bytes` can be unmarshalled and compared to the provenance to confirm that it is unchanged. A base64-encoded string representation of the provenance bytes is used for the signature in order to interoperate with openssl which expects this format for signature verification. The serialized form is captured both to avoid ambiguity in how the provenance is marshalled to json as well to prevent incompatibilities with future changes.
  final pulumi.Input<String>? provenanceBytes;

  /// Creates a new [BuildOccurrence].
  /// [inTotoSlsaProvenanceV1] In-Toto Slsa Provenance V1 represents a slsa provenance meeting the slsa spec, wrapped in an in-toto statement. This allows for direct jsonification of a to-spec in-toto slsa statement with a to-spec slsa provenance.
  /// [intotoProvenance] Deprecated. See InTotoStatement for the replacement. In-toto Provenance representation as defined in spec.
  /// [intotoStatement] In-toto Statement representation as defined in spec. The intoto_statement can contain any type of provenance. The serialized payload of the statement can be stored and signed in the Occurrence's envelope.
  /// [provenance] The actual provenance for the build.
  /// [provenanceBytes] Serialized JSON representation of the provenance, used in generating the build signature in the corresponding build note. After verifying the signature, `provenance_bytes` can be unmarshalled and compared to the provenance to confirm that it is unchanged. A base64-encoded string representation of the provenance bytes is used for the signature in order to interoperate with openssl which expects this format for signature verification. The serialized form is captured both to avoid ambiguity in how the provenance is marshalled to json as well to prevent incompatibilities with future changes.
  const BuildOccurrence({
    this.inTotoSlsaProvenanceV1,
    this.intotoProvenance,
    this.intotoStatement,
    this.provenance,
    this.provenanceBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inTotoSlsaProvenanceV1': ?pulumi.Input.mapOptionalInputValue<InTotoSlsaProvenanceV1, Map<String, dynamic>>(inTotoSlsaProvenanceV1, (value) => value.toMap()),
      'intotoProvenance': ?pulumi.Input.mapOptionalInputValue<InTotoProvenance, Map<String, dynamic>>(intotoProvenance, (value) => value.toMap()),
      'intotoStatement': ?pulumi.Input.mapOptionalInputValue<InTotoStatement, Map<String, dynamic>>(intotoStatement, (value) => value.toMap()),
      'provenance': ?pulumi.Input.mapOptionalInputValue<BuildProvenance, Map<String, dynamic>>(provenance, (value) => value.toMap()),
      'provenanceBytes': ?provenanceBytes,
    };
  }

  factory BuildOccurrence.fromMap(Map<String, dynamic> map) {
    return BuildOccurrence(
      inTotoSlsaProvenanceV1: (() { final guardedValue = map['inTotoSlsaProvenanceV1']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InTotoSlsaProvenanceV1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      intotoProvenance: (() { final guardedValue = map['intotoProvenance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InTotoProvenance.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      intotoStatement: (() { final guardedValue = map['intotoStatement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InTotoStatement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provenance: (() { final guardedValue = map['provenance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BuildProvenance.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provenanceBytes: (() { final guardedValue = map['provenanceBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
