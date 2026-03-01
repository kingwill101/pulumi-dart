// ignore_for_file: unused_element, unnecessary_cast


/// ScaleSpec describes the attributes of a scale subresource
class ScaleSpecAppsV1beta2 {
  /// desired number of instances for the scaled object.
  final int? replicas;

  /// Creates a new [ScaleSpecAppsV1beta2].
  /// [replicas] desired number of instances for the scaled object.
  ScaleSpecAppsV1beta2({
    this.replicas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'replicas': ?replicas,
    };
  }

  factory ScaleSpecAppsV1beta2.fromMap(Map<String, dynamic> map) {
    return ScaleSpecAppsV1beta2(
      replicas: map['replicas'] == null ? null : map['replicas'] as int,
    );
  }
}

