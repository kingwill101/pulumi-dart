// ignore_for_file: unused_element, unnecessary_cast


/// CrossVersionObjectReference contains enough information to let you identify the referred resource.
class CrossVersionObjectReferenceAutoscalingV2beta1 {
  /// API version of the referent
  final String? apiVersion;
  /// Kind of the referent; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds"
  final String kind;
  /// Name of the referent; More info: http://kubernetes.io/docs/user-guide/identifiers#names
  final String name;

  /// Creates a new [CrossVersionObjectReferenceAutoscalingV2beta1].
  /// [apiVersion] API version of the referent
  /// [kind] Kind of the referent; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds"
  /// [name] Name of the referent; More info: http://kubernetes.io/docs/user-guide/identifiers#names
  CrossVersionObjectReferenceAutoscalingV2beta1({
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

  factory CrossVersionObjectReferenceAutoscalingV2beta1.fromMap(Map<String, dynamic> map) {
    return CrossVersionObjectReferenceAutoscalingV2beta1(
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      kind: map['kind'] as String,
      name: map['name'] as String,
    );
  }
}

