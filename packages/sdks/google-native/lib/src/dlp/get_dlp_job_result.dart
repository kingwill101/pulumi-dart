// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_action_details_response.dart';
import 'google_privacy_dlp_v2_analyze_data_source_risk_details_response.dart';
import 'google_privacy_dlp_v2_error_response.dart';
import 'google_privacy_dlp_v2_inspect_data_source_details_response.dart';

/// Result data returned by getDlpJob.
class GetDlpJobResult {
  /// Events that should occur after the job has completed.
  final List<GooglePrivacyDlpV2ActionDetailsResponse>? actionDetails;
  /// Time when the job was created.
  final String? createTime;
  /// Time when the job finished.
  final String? endTime;
  /// A stream of errors encountered running the job.
  final List<GooglePrivacyDlpV2ErrorResponse>? errors;
  /// Results from inspecting a data source.
  final GooglePrivacyDlpV2InspectDataSourceDetailsResponse? inspectDetails;
  /// If created by a job trigger, the resource name of the trigger that instantiated the job.
  final String? jobTriggerName;
  /// Time when the job was last modified by the system.
  final String? lastModified;
  /// The server-assigned name.
  final String? name;
  /// Results from analyzing risk of a data source.
  final GooglePrivacyDlpV2AnalyzeDataSourceRiskDetailsResponse? riskDetails;
  /// Time when the job started.
  final String? startTime;
  /// State of a job.
  final String? state;
  /// The type of job.
  final String? type;

  /// Creates a new [GetDlpJobResult].
  /// [actionDetails] Events that should occur after the job has completed.
  /// [createTime] Time when the job was created.
  /// [endTime] Time when the job finished.
  /// [errors] A stream of errors encountered running the job.
  /// [inspectDetails] Results from inspecting a data source.
  /// [jobTriggerName] If created by a job trigger, the resource name of the trigger that instantiated the job.
  /// [lastModified] Time when the job was last modified by the system.
  /// [name] The server-assigned name.
  /// [riskDetails] Results from analyzing risk of a data source.
  /// [startTime] Time when the job started.
  /// [state] State of a job.
  /// [type] The type of job.
  const GetDlpJobResult({
    this.actionDetails,
    this.createTime,
    this.endTime,
    this.errors,
    this.inspectDetails,
    this.jobTriggerName,
    this.lastModified,
    this.name,
    this.riskDetails,
    this.startTime,
    this.state,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionDetails': ?(() { final guardedValue = actionDetails; if (guardedValue == null) return null; return pulumi.Input.encodeList<GooglePrivacyDlpV2ActionDetailsResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'createTime': ?createTime,
      'endTime': ?endTime,
      'errors': ?(() { final guardedValue = errors; if (guardedValue == null) return null; return pulumi.Input.encodeList<GooglePrivacyDlpV2ErrorResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'inspectDetails': ?inspectDetails?.toMap(),
      'jobTriggerName': ?jobTriggerName,
      'lastModified': ?lastModified,
      'name': ?name,
      'riskDetails': ?riskDetails?.toMap(),
      'startTime': ?startTime,
      'state': ?state,
      'type': ?type,
    };
  }

  factory GetDlpJobResult.fromMap(Map<String, dynamic> map) {
    return GetDlpJobResult(
      actionDetails: (() { final guardedValue = map['actionDetails']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GooglePrivacyDlpV2ActionDetailsResponse>(guardedValue, (value) => GooglePrivacyDlpV2ActionDetailsResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      errors: (() { final guardedValue = map['errors']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GooglePrivacyDlpV2ErrorResponse>(guardedValue, (value) => GooglePrivacyDlpV2ErrorResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      inspectDetails: (() { final guardedValue = map['inspectDetails']; if (guardedValue == null) return null; return GooglePrivacyDlpV2InspectDataSourceDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      jobTriggerName: (() { final guardedValue = map['jobTriggerName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastModified: (() { final guardedValue = map['lastModified']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      riskDetails: (() { final guardedValue = map['riskDetails']; if (guardedValue == null) return null; return GooglePrivacyDlpV2AnalyzeDataSourceRiskDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
