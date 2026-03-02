// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Subject refers to the subject of the intoto statement
class SubjectContaineranalysisV1alpha1 {
  /// "": "" Algorithms can be e.g. sha256, sha512 See https://github.com/in-toto/attestation/blob/main/spec/field_types.md#DigestSet
  final pulumi.Input<Map<String, String>>? digest;
  /// name is the name of the Subject used here
  final pulumi.Input<String>? name;

  /// Creates a new [SubjectContaineranalysisV1alpha1].
  /// [digest] "": "" Algorithms can be e.g. sha256, sha512 See https://github.com/in-toto/attestation/blob/main/spec/field_types.md#DigestSet
  /// [name] name is the name of the Subject used here
  SubjectContaineranalysisV1alpha1({
    this.digest,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'digest': ?digest,
      'name': ?name,
    };
  }

  factory SubjectContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return SubjectContaineranalysisV1alpha1(
      digest: map['digest'] == null ? null : ((map['digest'] as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

