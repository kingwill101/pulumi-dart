// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// All error details of the fleet observability feature.
class FleetObservabilityFeatureErrorResponseGkehubV1alpha {
  /// The code of the error.
  final pulumi.Input<String> code;
  /// A human-readable description of the current status.
  final pulumi.Input<String> description;

  /// Creates a new [FleetObservabilityFeatureErrorResponseGkehubV1alpha].
  /// [code] The code of the error.
  /// [description] A human-readable description of the current status.
  FleetObservabilityFeatureErrorResponseGkehubV1alpha({
    required this.code,
    required this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'description': description,
    };
  }

  factory FleetObservabilityFeatureErrorResponseGkehubV1alpha.fromMap(Map<String, dynamic> map) {
    return FleetObservabilityFeatureErrorResponseGkehubV1alpha(
      code: (map['code'] as String).input(),
      description: (map['description'] as String).input(),
    );
  }
}

