// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A priming job instance.
class PrimingJobResponse {
  /// The job details or error information if any.
  final pulumi.Input<String> primingJobDetails;
  /// The unique identifier of the priming job.
  final pulumi.Input<String> primingJobId;
  /// The priming job name.
  final pulumi.Input<String> primingJobName;
  /// The current progress of the priming job, as a percentage.
  final pulumi.Input<double> primingJobPercentComplete;
  /// The state of the priming operation.
  final pulumi.Input<String> primingJobState;
  /// The status code of the priming job.
  final pulumi.Input<String> primingJobStatus;

  /// Creates a new [PrimingJobResponse].
  /// [primingJobDetails] The job details or error information if any.
  /// [primingJobId] The unique identifier of the priming job.
  /// [primingJobName] The priming job name.
  /// [primingJobPercentComplete] The current progress of the priming job, as a percentage.
  /// [primingJobState] The state of the priming operation.
  /// [primingJobStatus] The status code of the priming job.
  PrimingJobResponse({
    required this.primingJobDetails,
    required this.primingJobId,
    required this.primingJobName,
    required this.primingJobPercentComplete,
    required this.primingJobState,
    required this.primingJobStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primingJobDetails': primingJobDetails,
      'primingJobId': primingJobId,
      'primingJobName': primingJobName,
      'primingJobPercentComplete': primingJobPercentComplete,
      'primingJobState': primingJobState,
      'primingJobStatus': primingJobStatus,
    };
  }

  factory PrimingJobResponse.fromMap(Map<String, dynamic> map) {
    return PrimingJobResponse(
      primingJobDetails: (map['primingJobDetails'] as String).input(),
      primingJobId: (map['primingJobId'] as String).input(),
      primingJobName: (map['primingJobName'] as String).input(),
      primingJobPercentComplete: (map['primingJobPercentComplete'] as double).input(),
      primingJobState: (map['primingJobState'] as String).input(),
      primingJobStatus: (map['primingJobStatus'] as String).input(),
    );
  }
}

