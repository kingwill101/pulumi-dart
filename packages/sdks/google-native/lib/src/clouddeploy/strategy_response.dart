// ignore_for_file: unused_element, unnecessary_cast

import 'canary_response.dart';
import 'standard_response.dart';

/// Strategy contains deployment strategy information.
class StrategyResponse {
  /// Canary deployment strategy provides progressive percentage based deployments to a Target.
  final CanaryResponse canary;
  /// Standard deployment strategy executes a single deploy and allows verifying the deployment.
  final StandardResponse standard;

  /// Creates a new [StrategyResponse].
  /// [canary] Canary deployment strategy provides progressive percentage based deployments to a Target.
  /// [standard] Standard deployment strategy executes a single deploy and allows verifying the deployment.
  StrategyResponse({
    required this.canary,
    required this.standard,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'canary': canary.toMap(),
      'standard': standard.toMap(),
    };
  }

  factory StrategyResponse.fromMap(Map<String, dynamic> map) {
    return StrategyResponse(
      canary: CanaryResponse.fromMap((map['canary'] as Map).cast<String, dynamic>()),
      standard: StandardResponse.fromMap((map['standard'] as Map).cast<String, dynamic>()),
    );
  }
}

