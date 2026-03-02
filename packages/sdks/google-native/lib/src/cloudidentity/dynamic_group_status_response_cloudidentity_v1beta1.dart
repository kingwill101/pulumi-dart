// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The current status of a dynamic group along with timestamp.
class DynamicGroupStatusResponseCloudidentityV1beta1 {
  /// Status of the dynamic group.
  final pulumi.Input<String> status;
  /// The latest time at which the dynamic group is guaranteed to be in the given status. If status is `UP_TO_DATE`, the latest time at which the dynamic group was confirmed to be up-to-date. If status is `UPDATING_MEMBERSHIPS`, the time at which dynamic group was created.
  final pulumi.Input<String> statusTime;

  /// Creates a new [DynamicGroupStatusResponseCloudidentityV1beta1].
  /// [status] Status of the dynamic group.
  /// [statusTime] The latest time at which the dynamic group is guaranteed to be in the given status. If status is `UP_TO_DATE`, the latest time at which the dynamic group was confirmed to be up-to-date. If status is `UPDATING_MEMBERSHIPS`, the time at which dynamic group was created.
  DynamicGroupStatusResponseCloudidentityV1beta1({
    required this.status,
    required this.statusTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': status,
      'statusTime': statusTime,
    };
  }

  factory DynamicGroupStatusResponseCloudidentityV1beta1.fromMap(Map<String, dynamic> map) {
    return DynamicGroupStatusResponseCloudidentityV1beta1(
      status: (map['status'] as String).input(),
      statusTime: (map['statusTime'] as String).input(),
    );
  }
}

