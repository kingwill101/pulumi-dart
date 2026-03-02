// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ScaleSpec describes the attributes of a scale subresource.
class ScaleSpecPatch {
  /// replicas is the desired number of instances for the scaled object.
  final pulumi.Input<int>? replicas;

  /// Creates a new [ScaleSpecPatch].
  /// [replicas] replicas is the desired number of instances for the scaled object.
  ScaleSpecPatch({
    this.replicas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'replicas': ?replicas,
    };
  }

  factory ScaleSpecPatch.fromMap(Map<String, dynamic> map) {
    return ScaleSpecPatch(
      replicas: map['replicas'] == null ? null : (map['replicas'] as int).input(),
    );
  }
}

