// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// BoundObjectReference is a reference to an object that a token is bound to.
class BoundObjectReferencePatch {
  /// API version of the referent.
  final pulumi.Input<String>? apiVersion;
  /// Kind of the referent. Valid kinds are 'Pod' and 'Secret'.
  final pulumi.Input<String>? kind;
  /// Name of the referent.
  final pulumi.Input<String>? name;
  /// UID of the referent.
  final pulumi.Input<String>? uid;

  /// Creates a new [BoundObjectReferencePatch].
  /// [apiVersion] API version of the referent.
  /// [kind] Kind of the referent. Valid kinds are 'Pod' and 'Secret'.
  /// [name] Name of the referent.
  /// [uid] UID of the referent.
  BoundObjectReferencePatch({
    this.apiVersion,
    this.kind,
    this.name,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'name': ?name,
      'uid': ?uid,
    };
  }

  factory BoundObjectReferencePatch.fromMap(Map<String, dynamic> map) {
    return BoundObjectReferencePatch(
      apiVersion: map['apiVersion'] == null ? null : (map['apiVersion']! as String).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      uid: map['uid'] == null ? null : (map['uid']! as String).input(),
    );
  }
}

