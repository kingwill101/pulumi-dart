// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The current status of a dynamic group along with timestamp.
class DynamicGroupStatusResponse {
  /// Status of the dynamic group.
  final pulumi.Input<String> status;

  /// The latest time at which the dynamic group is guaranteed to be in the given status. If status is `UP_TO_DATE`, the latest time at which the dynamic group was confirmed to be up-to-date. If status is `UPDATING_MEMBERSHIPS`, the time at which dynamic group was created.
  final pulumi.Input<String> statusTime;

  /// Creates a new [DynamicGroupStatusResponse].
  /// [status] Status of the dynamic group.
  /// [statusTime] The latest time at which the dynamic group is guaranteed to be in the given status. If status is `UP_TO_DATE`, the latest time at which the dynamic group was confirmed to be up-to-date. If status is `UPDATING_MEMBERSHIPS`, the time at which dynamic group was created.
  DynamicGroupStatusResponse({required this.status, required this.statusTime});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'status': status, 'statusTime': statusTime};
  }

  factory DynamicGroupStatusResponse.fromMap(Map<String, dynamic> map) {
    return DynamicGroupStatusResponse(
      status: pulumi.Input.fromValue(map['status'] as String),
      statusTime: pulumi.Input.fromValue(map['statusTime'] as String),
    );
  }
}
