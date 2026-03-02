// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_response.dart';

/// Deployment job composition.
class DeploymentJobsResponse {
  /// The deploy Job. This is the deploy job in the phase.
  final pulumi.Input<JobResponse> deployJob;
  /// The postdeploy Job, which is the last job on the phase.
  final pulumi.Input<JobResponse> postdeployJob;
  /// The predeploy Job, which is the first job on the phase.
  final pulumi.Input<JobResponse> predeployJob;
  /// The verify Job. Runs after a deploy if the deploy succeeds.
  final pulumi.Input<JobResponse> verifyJob;

  /// Creates a new [DeploymentJobsResponse].
  /// [deployJob] The deploy Job. This is the deploy job in the phase.
  /// [postdeployJob] The postdeploy Job, which is the last job on the phase.
  /// [predeployJob] The predeploy Job, which is the first job on the phase.
  /// [verifyJob] The verify Job. Runs after a deploy if the deploy succeeds.
  DeploymentJobsResponse({
    required this.deployJob,
    required this.postdeployJob,
    required this.predeployJob,
    required this.verifyJob,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deployJob': pulumi.Input.mapInputValue<JobResponse, Map<String, dynamic>>(deployJob, (value) => value.toMap()),
      'postdeployJob': pulumi.Input.mapInputValue<JobResponse, Map<String, dynamic>>(postdeployJob, (value) => value.toMap()),
      'predeployJob': pulumi.Input.mapInputValue<JobResponse, Map<String, dynamic>>(predeployJob, (value) => value.toMap()),
      'verifyJob': pulumi.Input.mapInputValue<JobResponse, Map<String, dynamic>>(verifyJob, (value) => value.toMap()),
    };
  }

  factory DeploymentJobsResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentJobsResponse(
      deployJob: (JobResponse.fromMap((map['deployJob'] as Map).cast<String, dynamic>())).input(),
      postdeployJob: (JobResponse.fromMap((map['postdeployJob'] as Map).cast<String, dynamic>())).input(),
      predeployJob: (JobResponse.fromMap((map['predeployJob'] as Map).cast<String, dynamic>())).input(),
      verifyJob: (JobResponse.fromMap((map['verifyJob'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

