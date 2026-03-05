// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_response.dart';

/// ChildRollouts job composition
class ChildRolloutJobsResponse {
  /// List of AdvanceChildRolloutJobs
  final pulumi.Input<List<JobResponse>> advanceRolloutJobs;
  /// List of CreateChildRolloutJobs
  final pulumi.Input<List<JobResponse>> createRolloutJobs;

  /// Creates a new [ChildRolloutJobsResponse].
  /// [advanceRolloutJobs] List of AdvanceChildRolloutJobs
  /// [createRolloutJobs] List of CreateChildRolloutJobs
  ChildRolloutJobsResponse({
    required this.advanceRolloutJobs,
    required this.createRolloutJobs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advanceRolloutJobs': pulumi.Input.mapInputValue<List<JobResponse>, List<Map<String, dynamic>>>(advanceRolloutJobs, (value) => pulumi.Input.encodeList<JobResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createRolloutJobs': pulumi.Input.mapInputValue<List<JobResponse>, List<Map<String, dynamic>>>(createRolloutJobs, (value) => pulumi.Input.encodeList<JobResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ChildRolloutJobsResponse.fromMap(Map<String, dynamic> map) {
    return ChildRolloutJobsResponse(
      advanceRolloutJobs: pulumi.Input.fromValue(pulumi.Input.decodeList<JobResponse>(map['advanceRolloutJobs']!, (value) => JobResponse.fromMap((value as Map).cast<String, dynamic>()))),
      createRolloutJobs: pulumi.Input.fromValue(pulumi.Input.decodeList<JobResponse>(map['createRolloutJobs']!, (value) => JobResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

