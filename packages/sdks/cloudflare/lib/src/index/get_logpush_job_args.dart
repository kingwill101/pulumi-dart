// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_logpush_job_get_logpush_job_args_doc}
/// Arguments for getLogpushJob.
/// {@endtemplate}
/// {@macro pulumi_index_get_logpush_job_get_logpush_job_args_doc}
class GetLogpushJobArgs {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  final pulumi.Input<String?>? accountId;
  /// Unique id of the job.
  final pulumi.Input<int> jobId;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetLogpushJobArgs].
  /// [accountId] The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  /// [jobId] Unique id of the job.
  /// [zoneId] The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  const GetLogpushJobArgs({
    this.accountId,
    required this.jobId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'jobId': jobId,
      'zoneId': ?zoneId,
    };
  }

  factory GetLogpushJobArgs.fromMap(Map<String, dynamic> map) {
    return GetLogpushJobArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jobId: pulumi.Input.fromValue((map['jobId'] as num).toInt()),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
