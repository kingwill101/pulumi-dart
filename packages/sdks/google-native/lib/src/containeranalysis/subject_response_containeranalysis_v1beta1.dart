// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Set of software artifacts that the attestation applies to. Each element represents a single software artifact.
class SubjectResponseContaineranalysisV1beta1 {
  /// `"": ""` Algorithms can be e.g. sha256, sha512 See https://github.com/in-toto/attestation/blob/main/spec/field_types.md#DigestSet
  final pulumi.Input<Map<String, String>> digest;
  /// Identifier to distinguish this artifact from others within the subject.
  final pulumi.Input<String> name;

  /// Creates a new [SubjectResponseContaineranalysisV1beta1].
  /// [digest] `"": ""` Algorithms can be e.g. sha256, sha512 See https://github.com/in-toto/attestation/blob/main/spec/field_types.md#DigestSet
  /// [name] Identifier to distinguish this artifact from others within the subject.
  const SubjectResponseContaineranalysisV1beta1({
    required this.digest,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'digest': digest,
      'name': name,
    };
  }

  factory SubjectResponseContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return SubjectResponseContaineranalysisV1beta1(
      digest: pulumi.Input.fromValue((map['digest'] as Map).cast<String, String>()),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
