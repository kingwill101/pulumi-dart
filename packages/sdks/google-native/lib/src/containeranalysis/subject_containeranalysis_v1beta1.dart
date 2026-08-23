// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Set of software artifacts that the attestation applies to. Each element represents a single software artifact.
class SubjectContaineranalysisV1beta1 {
  /// `"": ""` Algorithms can be e.g. sha256, sha512 See https://github.com/in-toto/attestation/blob/main/spec/field_types.md#DigestSet
  final pulumi.Input<Map<String, String>>? digest;
  /// Identifier to distinguish this artifact from others within the subject.
  final pulumi.Input<String>? name;

  /// Creates a new [SubjectContaineranalysisV1beta1].
  /// [digest] `"": ""` Algorithms can be e.g. sha256, sha512 See https://github.com/in-toto/attestation/blob/main/spec/field_types.md#DigestSet
  /// [name] Identifier to distinguish this artifact from others within the subject.
  const SubjectContaineranalysisV1beta1({
    this.digest,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'digest': ?digest,
      'name': ?name,
    };
  }

  factory SubjectContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return SubjectContaineranalysisV1beta1(
      digest: (() { final guardedValue = map['digest']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
