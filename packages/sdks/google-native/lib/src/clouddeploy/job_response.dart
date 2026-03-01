// ignore_for_file: unused_element, unnecessary_cast

import 'postdeploy_job_response.dart';
import 'predeploy_job_response.dart';

/// Job represents an operation for a `Rollout`.
class JobResponse {
  /// An advanceChildRollout Job.
  final Map<String, dynamic> advanceChildRolloutJob;
  /// A createChildRollout Job.
  final Map<String, dynamic> createChildRolloutJob;
  /// A deploy Job.
  final Map<String, dynamic> deployJob;
  /// The name of the `JobRun` responsible for the most recent invocation of this Job.
  final String jobRun;
  /// A postdeploy Job.
  final PostdeployJobResponse postdeployJob;
  /// A predeploy Job.
  final PredeployJobResponse predeployJob;
  /// Additional information on why the Job was skipped, if available.
  final String skipMessage;
  /// The current state of the Job.
  final String state;
  /// A verify Job.
  final Map<String, dynamic> verifyJob;

  /// Creates a new [JobResponse].
  /// [advanceChildRolloutJob] An advanceChildRollout Job.
  /// [createChildRolloutJob] A createChildRollout Job.
  /// [deployJob] A deploy Job.
  /// [jobRun] The name of the `JobRun` responsible for the most recent invocation of this Job.
  /// [postdeployJob] A postdeploy Job.
  /// [predeployJob] A predeploy Job.
  /// [skipMessage] Additional information on why the Job was skipped, if available.
  /// [state] The current state of the Job.
  /// [verifyJob] A verify Job.
  JobResponse({
    required this.advanceChildRolloutJob,
    required this.createChildRolloutJob,
    required this.deployJob,
    required this.jobRun,
    required this.postdeployJob,
    required this.predeployJob,
    required this.skipMessage,
    required this.state,
    required this.verifyJob,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advanceChildRolloutJob': advanceChildRolloutJob,
      'createChildRolloutJob': createChildRolloutJob,
      'deployJob': deployJob,
      'jobRun': jobRun,
      'postdeployJob': postdeployJob.toMap(),
      'predeployJob': predeployJob.toMap(),
      'skipMessage': skipMessage,
      'state': state,
      'verifyJob': verifyJob,
    };
  }

  factory JobResponse.fromMap(Map<String, dynamic> map) {
    return JobResponse(
      advanceChildRolloutJob: (map['advanceChildRolloutJob'] as Map).cast<String, dynamic>(),
      createChildRolloutJob: (map['createChildRolloutJob'] as Map).cast<String, dynamic>(),
      deployJob: (map['deployJob'] as Map).cast<String, dynamic>(),
      jobRun: map['jobRun'] as String,
      postdeployJob: PostdeployJobResponse.fromMap((map['postdeployJob'] as Map).cast<String, dynamic>()),
      predeployJob: PredeployJobResponse.fromMap((map['predeployJob'] as Map).cast<String, dynamic>()),
      skipMessage: map['skipMessage'] as String,
      state: map['state'] as String,
      verifyJob: (map['verifyJob'] as Map).cast<String, dynamic>(),
    );
  }
}

