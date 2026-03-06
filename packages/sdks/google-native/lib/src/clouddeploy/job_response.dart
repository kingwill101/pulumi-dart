// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'postdeploy_job_response.dart';
import 'predeploy_job_response.dart';

/// Job represents an operation for a `Rollout`.
class JobResponse {
  /// An advanceChildRollout Job.
  final pulumi.Input<Map<String, dynamic>> advanceChildRolloutJob;
  /// A createChildRollout Job.
  final pulumi.Input<Map<String, dynamic>> createChildRolloutJob;
  /// A deploy Job.
  final pulumi.Input<Map<String, dynamic>> deployJob;
  /// The name of the `JobRun` responsible for the most recent invocation of this Job.
  final pulumi.Input<String> jobRun;
  /// A postdeploy Job.
  final pulumi.Input<PostdeployJobResponse> postdeployJob;
  /// A predeploy Job.
  final pulumi.Input<PredeployJobResponse> predeployJob;
  /// Additional information on why the Job was skipped, if available.
  final pulumi.Input<String> skipMessage;
  /// The current state of the Job.
  final pulumi.Input<String> state;
  /// A verify Job.
  final pulumi.Input<Map<String, dynamic>> verifyJob;

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
  const JobResponse({
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
      'postdeployJob': pulumi.Input.mapInputValue<PostdeployJobResponse, Map<String, dynamic>>(postdeployJob, (value) => value.toMap()),
      'predeployJob': pulumi.Input.mapInputValue<PredeployJobResponse, Map<String, dynamic>>(predeployJob, (value) => value.toMap()),
      'skipMessage': skipMessage,
      'state': state,
      'verifyJob': verifyJob,
    };
  }

  factory JobResponse.fromMap(Map<String, dynamic> map) {
    return JobResponse(
      advanceChildRolloutJob: pulumi.Input.fromValue((map['advanceChildRolloutJob']! as Map).cast<String, dynamic>()),
      createChildRolloutJob: pulumi.Input.fromValue((map['createChildRolloutJob']! as Map).cast<String, dynamic>()),
      deployJob: pulumi.Input.fromValue((map['deployJob']! as Map).cast<String, dynamic>()),
      jobRun: pulumi.Input.fromValue(map['jobRun'] as String),
      postdeployJob: pulumi.Input.fromValue(PostdeployJobResponse.fromMap((map['postdeployJob']! as Map).cast<String, dynamic>())),
      predeployJob: pulumi.Input.fromValue(PredeployJobResponse.fromMap((map['predeployJob']! as Map).cast<String, dynamic>())),
      skipMessage: pulumi.Input.fromValue(map['skipMessage'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
      verifyJob: pulumi.Input.fromValue((map['verifyJob']! as Map).cast<String, dynamic>()),
    );
  }
}

