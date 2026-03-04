// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// CrossVersionObjectReference contains enough information to let you identify the referred resource.
class CrossVersionObjectReferencePatch {
  /// apiVersion is the API version of the referent
  final pulumi.Input<String>? apiVersion;

  /// kind is the kind of the referent; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;

  /// name is the name of the referent; More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
  final pulumi.Input<String>? name;

  /// Creates a new [CrossVersionObjectReferencePatch].
  /// [apiVersion] apiVersion is the API version of the referent
  /// [kind] kind is the kind of the referent; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [name] name is the name of the referent; More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
  CrossVersionObjectReferencePatch({this.apiVersion, this.kind, this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'name': ?name,
    };
  }

  factory CrossVersionObjectReferencePatch.fromMap(Map<String, dynamic> map) {
    return CrossVersionObjectReferencePatch(
      apiVersion: (() {
        final guardedValue = map['apiVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kind: (() {
        final guardedValue = map['kind'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
