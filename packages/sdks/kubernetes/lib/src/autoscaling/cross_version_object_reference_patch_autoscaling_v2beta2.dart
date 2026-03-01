// ignore_for_file: unused_element, unnecessary_cast


/// CrossVersionObjectReference contains enough information to let you identify the referred resource.
class CrossVersionObjectReferencePatchAutoscalingV2beta2 {
  /// API version of the referent
  final String? apiVersion;
  /// Kind of the referent; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds"
  final String? kind;
  /// Name of the referent; More info: http://kubernetes.io/docs/user-guide/identifiers#names
  final String? name;

  /// Creates a new [CrossVersionObjectReferencePatchAutoscalingV2beta2].
  /// [apiVersion] API version of the referent
  /// [kind] Kind of the referent; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds"
  /// [name] Name of the referent; More info: http://kubernetes.io/docs/user-guide/identifiers#names
  CrossVersionObjectReferencePatchAutoscalingV2beta2({
    this.apiVersion,
    this.kind,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'name': ?name,
    };
  }

  factory CrossVersionObjectReferencePatchAutoscalingV2beta2.fromMap(Map<String, dynamic> map) {
    return CrossVersionObjectReferencePatchAutoscalingV2beta2(
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

