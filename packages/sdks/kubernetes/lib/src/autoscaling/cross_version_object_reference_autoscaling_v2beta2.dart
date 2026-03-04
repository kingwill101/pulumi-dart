// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// CrossVersionObjectReference contains enough information to let you identify the referred resource.
class CrossVersionObjectReferenceAutoscalingV2beta2 {
  /// API version of the referent
  final pulumi.Input<String>? apiVersion;

  /// Kind of the referent; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds"
  final pulumi.Input<String> kind;

  /// Name of the referent; More info: http://kubernetes.io/docs/user-guide/identifiers#names
  final pulumi.Input<String> name;

  /// Creates a new [CrossVersionObjectReferenceAutoscalingV2beta2].
  /// [apiVersion] API version of the referent
  /// [kind] Kind of the referent; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds"
  /// [name] Name of the referent; More info: http://kubernetes.io/docs/user-guide/identifiers#names
  CrossVersionObjectReferenceAutoscalingV2beta2({
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

  factory CrossVersionObjectReferenceAutoscalingV2beta2.fromMap(
    Map<String, dynamic> map,
  ) {
    return CrossVersionObjectReferenceAutoscalingV2beta2(
      apiVersion: (() {
        final guardedValue = map['apiVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
