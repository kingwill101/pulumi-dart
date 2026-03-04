// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'canary_response.dart';
import 'standard_response.dart';

/// Strategy contains deployment strategy information.
class StrategyResponse {
  /// Canary deployment strategy provides progressive percentage based deployments to a Target.
  final pulumi.Input<CanaryResponse> canary;

  /// Standard deployment strategy executes a single deploy and allows verifying the deployment.
  final pulumi.Input<StandardResponse> standard;

  /// Creates a new [StrategyResponse].
  /// [canary] Canary deployment strategy provides progressive percentage based deployments to a Target.
  /// [standard] Standard deployment strategy executes a single deploy and allows verifying the deployment.
  StrategyResponse({required this.canary, required this.standard});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'canary':
          pulumi.Input.mapInputValue<CanaryResponse, Map<String, dynamic>>(
            canary,
            (value) => value.toMap(),
          ),
      'standard':
          pulumi.Input.mapInputValue<StandardResponse, Map<String, dynamic>>(
            standard,
            (value) => value.toMap(),
          ),
    };
  }

  factory StrategyResponse.fromMap(Map<String, dynamic> map) {
    return StrategyResponse(
      canary: pulumi.Input.fromValue(
        CanaryResponse.fromMap((map['canary']! as Map).cast<String, dynamic>()),
      ),
      standard: pulumi.Input.fromValue(
        StandardResponse.fromMap(
          (map['standard']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
