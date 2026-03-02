// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// TargetsPresentCondition contains information on any Targets defined in the Delivery Pipeline that do not actually exist.
class TargetsPresentConditionResponse {
  /// The list of Target names that do not exist. For example, `projects/{project_id}/locations/{location_name}/targets/{target_name}`.
  final pulumi.Input<List<String>> missingTargets;
  /// True if there aren't any missing Targets.
  final pulumi.Input<bool> status;
  /// Last time the condition was updated.
  final pulumi.Input<String> updateTime;

  /// Creates a new [TargetsPresentConditionResponse].
  /// [missingTargets] The list of Target names that do not exist. For example, `projects/{project_id}/locations/{location_name}/targets/{target_name}`.
  /// [status] True if there aren't any missing Targets.
  /// [updateTime] Last time the condition was updated.
  TargetsPresentConditionResponse({
    required this.missingTargets,
    required this.status,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'missingTargets': missingTargets,
      'status': status,
      'updateTime': updateTime,
    };
  }

  factory TargetsPresentConditionResponse.fromMap(Map<String, dynamic> map) {
    return TargetsPresentConditionResponse(
      missingTargets: ((map['missingTargets'] as List).cast<String>()).input(),
      status: (map['status'] as bool).input(),
      updateTime: (map['updateTime'] as String).input(),
    );
  }
}

