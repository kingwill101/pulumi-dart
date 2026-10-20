// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'status_response.dart';
import 'vm_utilization_info_response.dart';

/// Result data returned by getUtilizationReport.
class GetUtilizationReportResult {
  /// The time the report was created (this refers to the time of the request, not the time the report creation completed).
  final String? createTime;
  /// The report display name, as assigned by the user.
  final String? displayName;
  /// Provides details on the state of the report in case of an error.
  final StatusResponse? error;
  /// The point in time when the time frame ends. Notice that the time frame is counted backwards. For instance if the "frame_end_time" value is 2021/01/20 and the time frame is WEEK then the report covers the week between 2021/01/20 and 2021/01/14.
  final String? frameEndTime;
  /// The report unique name.
  final String? name;
  /// Current state of the report.
  final String? state;
  /// The time the state was last set.
  final String? stateTime;
  /// Time frame of the report.
  final String? timeFrame;
  /// Total number of VMs included in the report.
  final int? vmCount;
  /// List of utilization information per VM. When sent as part of the request, the "vm_id" field is used in order to specify which VMs to include in the report. In that case all other fields are ignored.
  final List<VmUtilizationInfoResponse>? vms;

  /// Creates a new [GetUtilizationReportResult].
  /// [createTime] The time the report was created (this refers to the time of the request, not the time the report creation completed).
  /// [displayName] The report display name, as assigned by the user.
  /// [error] Provides details on the state of the report in case of an error.
  /// [frameEndTime] The point in time when the time frame ends. Notice that the time frame is counted backwards. For instance if the "frame_end_time" value is 2021/01/20 and the time frame is WEEK then the report covers the week between 2021/01/20 and 2021/01/14.
  /// [name] The report unique name.
  /// [state] Current state of the report.
  /// [stateTime] The time the state was last set.
  /// [timeFrame] Time frame of the report.
  /// [vmCount] Total number of VMs included in the report.
  /// [vms] List of utilization information per VM. When sent as part of the request, the "vm_id" field is used in order to specify which VMs to include in the report. In that case all other fields are ignored.
  const GetUtilizationReportResult({
    this.createTime,
    this.displayName,
    this.error,
    this.frameEndTime,
    this.name,
    this.state,
    this.stateTime,
    this.timeFrame,
    this.vmCount,
    this.vms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'displayName': ?displayName,
      'error': ?error?.toMap(),
      'frameEndTime': ?frameEndTime,
      'name': ?name,
      'state': ?state,
      'stateTime': ?stateTime,
      'timeFrame': ?timeFrame,
      'vmCount': ?vmCount,
      'vms': ?(() { final guardedValue = vms; if (guardedValue == null) return null; return pulumi.Input.encodeList<VmUtilizationInfoResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetUtilizationReportResult.fromMap(Map<String, dynamic> map) {
    return GetUtilizationReportResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      error: (() { final guardedValue = map['error']; if (guardedValue == null) return null; return StatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      frameEndTime: (() { final guardedValue = map['frameEndTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      stateTime: (() { final guardedValue = map['stateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      timeFrame: (() { final guardedValue = map['timeFrame']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vmCount: (() { final guardedValue = map['vmCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      vms: (() { final guardedValue = map['vms']; if (guardedValue == null) return null; return pulumi.Input.decodeList<VmUtilizationInfoResponse>(guardedValue, (value) => VmUtilizationInfoResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
