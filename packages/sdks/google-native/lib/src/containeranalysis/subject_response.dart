// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SubjectResponse {
  /// `"": ""` Algorithms can be e.g. sha256, sha512 See https://github.com/in-toto/attestation/blob/main/spec/field_types.md#DigestSet
  final pulumi.Input<Map<String, String>> digest;
  final pulumi.Input<String> name;

  /// Creates a new [SubjectResponse].
  /// [digest] `"": ""` Algorithms can be e.g. sha256, sha512 See https://github.com/in-toto/attestation/blob/main/spec/field_types.md#DigestSet
  /// [name] Required.
  SubjectResponse({
    required this.digest,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'digest': digest,
      'name': name,
    };
  }

  factory SubjectResponse.fromMap(Map<String, dynamic> map) {
    return SubjectResponse(
      digest: ((map['digest'] as Map).cast<String, String>()).input(),
      name: (map['name'] as String).input(),
    );
  }
}

