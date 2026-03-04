// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'status_response_vmmigration_v1alpha1.dart';
import 'vm_utilization_info_response_vmmigration_v1alpha1.dart';

/// Result data returned by getUtilizationReport.
class GetUtilizationReportVmmigrationV1alpha1Result {
  /// The time the report was created (this refers to the time of the request, not the time the report creation completed).
  final String createTime;

  /// The report display name, as assigned by the user.
  final String displayName;

  /// Provides details on the state of the report in case of an error.
  final StatusResponseVmmigrationV1alpha1 error;

  /// The point in time when the time frame ends. Notice that the time frame is counted backwards. For instance if the "frame_end_time" value is 2021/01/20 and the time frame is WEEK then the report covers the week between 2021/01/20 and 2021/01/14.
  final String frameEndTime;

  /// The report unique name.
  final String name;

  /// Current state of the report.
  final String state;

  /// The time the state was last set.
  final String stateTime;

  /// Time frame of the report.
  final String timeFrame;

  /// Total number of VMs included in the report.
  final int vmCount;

  /// List of utilization information per VM. When sent as part of the request, the "vm_id" field is used in order to specify which VMs to include in the report. In that case all other fields are ignored.
  final List<VmUtilizationInfoResponseVmmigrationV1alpha1> vms;

  /// Total number of VMs included in the report.
  final int vmsCount;

  /// Creates a new [GetUtilizationReportVmmigrationV1alpha1Result].
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
  /// [vmsCount] Total number of VMs included in the report.
  GetUtilizationReportVmmigrationV1alpha1Result({
    required this.createTime,
    required this.displayName,
    required this.error,
    required this.frameEndTime,
    required this.name,
    required this.state,
    required this.stateTime,
    required this.timeFrame,
    required this.vmCount,
    required this.vms,
    required this.vmsCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'displayName': displayName,
      'error': error.toMap(),
      'frameEndTime': frameEndTime,
      'name': name,
      'state': state,
      'stateTime': stateTime,
      'timeFrame': timeFrame,
      'vmCount': vmCount,
      'vms':
          pulumi.Input.encodeList<
            VmUtilizationInfoResponseVmmigrationV1alpha1,
            Map<String, dynamic>
          >(vms, (value) => value.toMap()),
      'vmsCount': vmsCount,
    };
  }

  factory GetUtilizationReportVmmigrationV1alpha1Result.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetUtilizationReportVmmigrationV1alpha1Result(
      createTime: map['createTime'] as String,
      displayName: map['displayName'] as String,
      error: StatusResponseVmmigrationV1alpha1.fromMap(
        (map['error']! as Map).cast<String, dynamic>(),
      ),
      frameEndTime: map['frameEndTime'] as String,
      name: map['name'] as String,
      state: map['state'] as String,
      stateTime: map['stateTime'] as String,
      timeFrame: map['timeFrame'] as String,
      vmCount: map['vmCount'] as int,
      vms:
          pulumi.Input.decodeList<VmUtilizationInfoResponseVmmigrationV1alpha1>(
            map['vms']!,
            (value) => VmUtilizationInfoResponseVmmigrationV1alpha1.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      vmsCount: map['vmsCount'] as int,
    );
  }
}
