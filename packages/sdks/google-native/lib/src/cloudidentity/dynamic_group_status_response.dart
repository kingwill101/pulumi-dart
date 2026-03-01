// ignore_for_file: unused_element, unnecessary_cast


/// The current status of a dynamic group along with timestamp.
class DynamicGroupStatusResponse {
  /// Status of the dynamic group.
  final String status;
  /// The latest time at which the dynamic group is guaranteed to be in the given status. If status is `UP_TO_DATE`, the latest time at which the dynamic group was confirmed to be up-to-date. If status is `UPDATING_MEMBERSHIPS`, the time at which dynamic group was created.
  final String statusTime;

  /// Creates a new [DynamicGroupStatusResponse].
  /// [status] Status of the dynamic group.
  /// [statusTime] The latest time at which the dynamic group is guaranteed to be in the given status. If status is `UP_TO_DATE`, the latest time at which the dynamic group was confirmed to be up-to-date. If status is `UPDATING_MEMBERSHIPS`, the time at which dynamic group was created.
  DynamicGroupStatusResponse({
    required this.status,
    required this.statusTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': status,
      'statusTime': statusTime,
    };
  }

  factory DynamicGroupStatusResponse.fromMap(Map<String, dynamic> map) {
    return DynamicGroupStatusResponse(
      status: map['status'] as String,
      statusTime: map['statusTime'] as String,
    );
  }
}

