// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'phase_config_response.dart';

/// CustomCanaryDeployment represents the custom canary deployment configuration.
class CustomCanaryDeploymentResponse {
  /// Configuration for each phase in the canary deployment in the order executed.
  final pulumi.Input<List<PhaseConfigResponse>> phaseConfigs;

  /// Creates a new [CustomCanaryDeploymentResponse].
  /// [phaseConfigs] Configuration for each phase in the canary deployment in the order executed.
  CustomCanaryDeploymentResponse({
    required this.phaseConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'phaseConfigs': pulumi.Input.mapInputValue<List<PhaseConfigResponse>, List<Map<String, dynamic>>>(phaseConfigs, (value) => pulumi.Input.encodeList<PhaseConfigResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CustomCanaryDeploymentResponse.fromMap(Map<String, dynamic> map) {
    return CustomCanaryDeploymentResponse(
      phaseConfigs: (pulumi.Input.decodeList<PhaseConfigResponse>(map['phaseConfigs'], (value) => PhaseConfigResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

