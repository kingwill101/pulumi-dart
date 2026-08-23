// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Rolls back a `Rollout`.
class RollbackResponse {
  /// Optional. The starting phase ID for the `Rollout`. If unspecified, the `Rollout` will start in the stable phase.
  final pulumi.Input<String> destinationPhase;

  /// Creates a new [RollbackResponse].
  /// [destinationPhase] Optional. The starting phase ID for the `Rollout`. If unspecified, the `Rollout` will start in the stable phase.
  const RollbackResponse({
    required this.destinationPhase,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationPhase': destinationPhase,
    };
  }

  factory RollbackResponse.fromMap(Map<String, dynamic> map) {
    return RollbackResponse(
      destinationPhase: pulumi.Input.fromValue(map['destinationPhase'] as String),
    );
  }
}
