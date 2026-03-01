// ignore_for_file: unused_element, unnecessary_cast


/// ScaleSpec describes the attributes of a scale subresource
class ScaleSpecPatchAppsV1beta2 {
  /// desired number of instances for the scaled object.
  final int? replicas;

  /// Creates a new [ScaleSpecPatchAppsV1beta2].
  /// [replicas] desired number of instances for the scaled object.
  ScaleSpecPatchAppsV1beta2({
    this.replicas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'replicas': ?replicas,
    };
  }

  factory ScaleSpecPatchAppsV1beta2.fromMap(Map<String, dynamic> map) {
    return ScaleSpecPatchAppsV1beta2(
      replicas: map['replicas'] == null ? null : map['replicas'] as int,
    );
  }
}

