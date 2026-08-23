// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// BoundObjectReference is a reference to an object that a token is bound to.
class BoundObjectReference {
  /// apiVersion is API version of the referent.
  final pulumi.Input<String>? apiVersion;
  /// kind of the referent. Valid kinds are 'Pod' and 'Secret'.
  final pulumi.Input<String>? kind;
  /// name of the referent.
  final pulumi.Input<String>? name;
  /// uid of the referent.
  final pulumi.Input<String>? uid;

  /// Creates a new [BoundObjectReference].
  /// [apiVersion] apiVersion is API version of the referent.
  /// [kind] kind of the referent. Valid kinds are 'Pod' and 'Secret'.
  /// [name] name of the referent.
  /// [uid] uid of the referent.
  const BoundObjectReference({
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

  factory BoundObjectReference.fromMap(Map<String, dynamic> map) {
    return BoundObjectReference(
      apiVersion: (() { final guardedValue = map['apiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
