// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ScaleSpec describes the attributes of a scale subresource.
class ScaleSpec {
  /// replicas is the desired number of instances for the scaled object.
  final pulumi.Input<int>? replicas;

  /// Creates a new [ScaleSpec].
  /// [replicas] replicas is the desired number of instances for the scaled object.
  const ScaleSpec({
    this.replicas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'replicas': ?replicas,
    };
  }

  factory ScaleSpec.fromMap(Map<String, dynamic> map) {
    return ScaleSpec(
      replicas: (() { final guardedValue = map['replicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

