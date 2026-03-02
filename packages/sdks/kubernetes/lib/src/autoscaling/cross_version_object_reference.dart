// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// CrossVersionObjectReference contains enough information to let you identify the referred resource.
class CrossVersionObjectReference {
  /// apiVersion is the API version of the referent
  final pulumi.Input<String>? apiVersion;
  /// kind is the kind of the referent; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String> kind;
  /// name is the name of the referent; More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
  final pulumi.Input<String> name;

  /// Creates a new [CrossVersionObjectReference].
  /// [apiVersion] apiVersion is the API version of the referent
  /// [kind] kind is the kind of the referent; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [name] name is the name of the referent; More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
  CrossVersionObjectReference({
    this.apiVersion,
    required this.kind,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': kind,
      'name': name,
    };
  }

  factory CrossVersionObjectReference.fromMap(Map<String, dynamic> map) {
    return CrossVersionObjectReference(
      apiVersion: map['apiVersion'] == null ? null : (map['apiVersion']! as String).input(),
      kind: (map['kind'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

