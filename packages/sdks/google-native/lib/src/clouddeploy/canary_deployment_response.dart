// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'postdeploy_response.dart';
import 'predeploy_response.dart';

/// CanaryDeployment represents the canary deployment configuration
class CanaryDeploymentResponse {
  /// The percentage based deployments that will occur as a part of a `Rollout`. List is expected in ascending order and each integer n is 0 <= n < 100.
  final pulumi.Input<List<int>> percentages;
  /// Optional. Configuration for the postdeploy job of the last phase. If this is not configured, there will be no postdeploy job for this phase.
  final pulumi.Input<PostdeployResponse> postdeploy;
  /// Optional. Configuration for the predeploy job of the first phase. If this is not configured, there will be no predeploy job for this phase.
  final pulumi.Input<PredeployResponse> predeploy;
  /// Whether to run verify tests after each percentage deployment.
  final pulumi.Input<bool> verify;

  /// Creates a new [CanaryDeploymentResponse].
  /// [percentages] The percentage based deployments that will occur as a part of a `Rollout`. List is expected in ascending order and each integer n is 0 <= n < 100.
  /// [postdeploy] Optional. Configuration for the postdeploy job of the last phase. If this is not configured, there will be no postdeploy job for this phase.
  /// [predeploy] Optional. Configuration for the predeploy job of the first phase. If this is not configured, there will be no predeploy job for this phase.
  /// [verify] Whether to run verify tests after each percentage deployment.
  CanaryDeploymentResponse({
    required this.percentages,
    required this.postdeploy,
    required this.predeploy,
    required this.verify,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'percentages': percentages,
      'postdeploy': pulumi.Input.mapInputValue<PostdeployResponse, Map<String, dynamic>>(postdeploy, (value) => value.toMap()),
      'predeploy': pulumi.Input.mapInputValue<PredeployResponse, Map<String, dynamic>>(predeploy, (value) => value.toMap()),
      'verify': verify,
    };
  }

  factory CanaryDeploymentResponse.fromMap(Map<String, dynamic> map) {
    return CanaryDeploymentResponse(
      percentages: ((map['percentages'] as List).cast<int>()).input(),
      postdeploy: (PostdeployResponse.fromMap((map['postdeploy'] as Map).cast<String, dynamic>())).input(),
      predeploy: (PredeployResponse.fromMap((map['predeploy'] as Map).cast<String, dynamic>())).input(),
      verify: (map['verify'] as bool).input(),
    );
  }
}

