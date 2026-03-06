// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_observability_feature_error_response_gkehub_v1alpha.dart';

/// Base state for fleet observability feature.
class FleetObservabilityFleetObservabilityBaseFeatureStateResponseGkehubV1alpha {
  /// The high-level, machine-readable status of this Feature.
  final pulumi.Input<String> code;
  /// Errors after reconciling the monitoring and logging feature if the code is not OK.
  final pulumi.Input<List<FleetObservabilityFeatureErrorResponseGkehubV1alpha>> errors;

  /// Creates a new [FleetObservabilityFleetObservabilityBaseFeatureStateResponseGkehubV1alpha].
  /// [code] The high-level, machine-readable status of this Feature.
  /// [errors] Errors after reconciling the monitoring and logging feature if the code is not OK.
  const FleetObservabilityFleetObservabilityBaseFeatureStateResponseGkehubV1alpha({
    required this.code,
    required this.errors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'errors': pulumi.Input.mapInputValue<List<FleetObservabilityFeatureErrorResponseGkehubV1alpha>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<FleetObservabilityFeatureErrorResponseGkehubV1alpha, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FleetObservabilityFleetObservabilityBaseFeatureStateResponseGkehubV1alpha.fromMap(Map<String, dynamic> map) {
    return FleetObservabilityFleetObservabilityBaseFeatureStateResponseGkehubV1alpha(
      code: pulumi.Input.fromValue(map['code'] as String),
      errors: pulumi.Input.fromValue(pulumi.Input.decodeList<FleetObservabilityFeatureErrorResponseGkehubV1alpha>(map['errors']!, (value) => FleetObservabilityFeatureErrorResponseGkehubV1alpha.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

