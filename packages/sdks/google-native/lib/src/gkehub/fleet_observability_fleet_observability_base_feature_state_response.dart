// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_observability_feature_error_response.dart';

/// Base state for fleet observability feature.
class FleetObservabilityFleetObservabilityBaseFeatureStateResponse {
  /// The high-level, machine-readable status of this Feature.
  final pulumi.Input<String> code;
  /// Errors after reconciling the monitoring and logging feature if the code is not OK.
  final pulumi.Input<List<FleetObservabilityFeatureErrorResponse>> errors;

  /// Creates a new [FleetObservabilityFleetObservabilityBaseFeatureStateResponse].
  /// [code] The high-level, machine-readable status of this Feature.
  /// [errors] Errors after reconciling the monitoring and logging feature if the code is not OK.
  const FleetObservabilityFleetObservabilityBaseFeatureStateResponse({
    required this.code,
    required this.errors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'errors': pulumi.Input.mapInputValue<List<FleetObservabilityFeatureErrorResponse>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<FleetObservabilityFeatureErrorResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FleetObservabilityFleetObservabilityBaseFeatureStateResponse.fromMap(Map<String, dynamic> map) {
    return FleetObservabilityFleetObservabilityBaseFeatureStateResponse(
      code: pulumi.Input.fromValue(map['code'] as String),
      errors: pulumi.Input.fromValue(pulumi.Input.decodeList<FleetObservabilityFeatureErrorResponse>(map['errors']!, (value) => FleetObservabilityFeatureErrorResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

