// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class Subject {
  /// `"": ""` Algorithms can be e.g. sha256, sha512 See https://github.com/in-toto/attestation/blob/main/spec/field_types.md#DigestSet
  final pulumi.Input<Map<String, String>>? digest;
  final pulumi.Input<String>? name;

  /// Creates a new [Subject].
  /// [digest] `"": ""` Algorithms can be e.g. sha256, sha512 See https://github.com/in-toto/attestation/blob/main/spec/field_types.md#DigestSet
  /// [name] Optional.
  Subject({this.digest, this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'digest': ?digest, 'name': ?name};
  }

  factory Subject.fromMap(Map<String, dynamic> map) {
    return Subject(
      digest: (() {
        final guardedValue = map['digest'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
