// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'child_rollout_jobs_response.dart';
import 'deployment_jobs_response.dart';

/// Phase represents a collection of jobs that are logically grouped together for a `Rollout`.
class PhaseResponse {
  /// ChildRollout job composition.
  final pulumi.Input<ChildRolloutJobsResponse> childRolloutJobs;
  /// Deployment job composition.
  final pulumi.Input<DeploymentJobsResponse> deploymentJobs;
  /// Additional information on why the Phase was skipped, if available.
  final pulumi.Input<String> skipMessage;
  /// Current state of the Phase.
  final pulumi.Input<String> state;

  /// Creates a new [PhaseResponse].
  /// [childRolloutJobs] ChildRollout job composition.
  /// [deploymentJobs] Deployment job composition.
  /// [skipMessage] Additional information on why the Phase was skipped, if available.
  /// [state] Current state of the Phase.
  PhaseResponse({
    required this.childRolloutJobs,
    required this.deploymentJobs,
    required this.skipMessage,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'childRolloutJobs': pulumi.Input.mapInputValue<ChildRolloutJobsResponse, Map<String, dynamic>>(childRolloutJobs, (value) => value.toMap()),
      'deploymentJobs': pulumi.Input.mapInputValue<DeploymentJobsResponse, Map<String, dynamic>>(deploymentJobs, (value) => value.toMap()),
      'skipMessage': skipMessage,
      'state': state,
    };
  }

  factory PhaseResponse.fromMap(Map<String, dynamic> map) {
    return PhaseResponse(
      childRolloutJobs: (ChildRolloutJobsResponse.fromMap((map['childRolloutJobs'] as Map).cast<String, dynamic>())).input(),
      deploymentJobs: (DeploymentJobsResponse.fromMap((map['deploymentJobs'] as Map).cast<String, dynamic>())).input(),
      skipMessage: (map['skipMessage'] as String).input(),
      state: (map['state'] as String).input(),
    );
  }
}

