// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_inspect_job_config.dart';
import 'google_privacy_dlp_v2_risk_analysis_job_config.dart';

/// {@template pulumi_dlp_v2_dlp_job_args_doc}
/// The set of arguments for DlpJob.
/// {@endtemplate}
/// {@macro pulumi_dlp_v2_dlp_job_args_doc}
class DlpJobArgs {
  /// An inspection job scans a storage repository for InfoTypes.
  final pulumi.Input<GooglePrivacyDlpV2InspectJobConfig>? inspectJob;
  /// The job id can contain uppercase and lowercase letters, numbers, and hyphens; that is, it must match the regular expression: `[a-zA-Z\d-_]+`. The maximum length is 100 characters. Can be empty to allow the system to generate one.
  final pulumi.Input<String>? jobId;
  /// Deprecated. This field has no effect.
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;
  /// A risk analysis job calculates re-identification risk metrics for a BigQuery table.
  final pulumi.Input<GooglePrivacyDlpV2RiskAnalysisJobConfig>? riskJob;

  /// Creates a new [DlpJobArgs].
  /// [inspectJob] An inspection job scans a storage repository for InfoTypes.
  /// [jobId] The job id can contain uppercase and lowercase letters, numbers, and hyphens; that is, it must match the regular expression: `[a-zA-Z\d-_]+`. The maximum length is 100 characters. Can be empty to allow the system to generate one.
  /// [location] Deprecated. This field has no effect.
  /// [project] Optional.
  /// [riskJob] A risk analysis job calculates re-identification risk metrics for a BigQuery table.
  const DlpJobArgs({
    this.inspectJob,
    this.jobId,
    this.location,
    this.project,
    this.riskJob,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inspectJob': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2InspectJobConfig, Map<String, dynamic>>(inspectJob, (value) => value.toMap()),
      'jobId': ?jobId,
      'location': ?location,
      'project': ?project,
      'riskJob': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2RiskAnalysisJobConfig, Map<String, dynamic>>(riskJob, (value) => value.toMap()),
    };
  }

  factory DlpJobArgs.fromMap(Map<String, dynamic> map) {
    return DlpJobArgs(
      inspectJob: (() { final guardedValue = map['inspectJob']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2InspectJobConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      jobId: (() { final guardedValue = map['jobId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      riskJob: (() { final guardedValue = map['riskJob']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2RiskAnalysisJobConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
