// ignore_for_file: unused_element, unnecessary_cast

import 'job_response.dart';

/// Deployment job composition.
class DeploymentJobsResponse {
  /// The deploy Job. This is the deploy job in the phase.
  final JobResponse deployJob;
  /// The postdeploy Job, which is the last job on the phase.
  final JobResponse postdeployJob;
  /// The predeploy Job, which is the first job on the phase.
  final JobResponse predeployJob;
  /// The verify Job. Runs after a deploy if the deploy succeeds.
  final JobResponse verifyJob;

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
      'deployJob': deployJob.toMap(),
      'postdeployJob': postdeployJob.toMap(),
      'predeployJob': predeployJob.toMap(),
      'verifyJob': verifyJob.toMap(),
    };
  }

  factory DeploymentJobsResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentJobsResponse(
      deployJob: JobResponse.fromMap((map['deployJob'] as Map).cast<String, dynamic>()),
      postdeployJob: JobResponse.fromMap((map['postdeployJob'] as Map).cast<String, dynamic>()),
      predeployJob: JobResponse.fromMap((map['predeployJob'] as Map).cast<String, dynamic>()),
      verifyJob: JobResponse.fromMap((map['verifyJob'] as Map).cast<String, dynamic>()),
    );
  }
}

