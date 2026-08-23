// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// FleetLifecycleState describes the state of a Fleet resource.
class FleetLifecycleStateResponseGkehubV1beta {
  /// The current state of the Fleet resource.
  final pulumi.Input<String> code;

  /// Creates a new [FleetLifecycleStateResponseGkehubV1beta].
  /// [code] The current state of the Fleet resource.
  const FleetLifecycleStateResponseGkehubV1beta({
    required this.code,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
    };
  }

  factory FleetLifecycleStateResponseGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return FleetLifecycleStateResponseGkehubV1beta(
      code: pulumi.Input.fromValue(map['code'] as String),
    );
  }
}
