// ignore_for_file: unused_element, unnecessary_cast


class GetShareSnapshotSchedule {
  /// The name of this Data Share.
  final String name;
  /// The interval of the synchronization with the source data.
  final String recurrence;
  /// The synchronization with the source data's start time.
  final String startTime;

  /// Creates a new [GetShareSnapshotSchedule].
  /// [name] The name of this Data Share.
  /// [recurrence] The interval of the synchronization with the source data.
  /// [startTime] The synchronization with the source data's start time.
  GetShareSnapshotSchedule({
    required this.name,
    required this.recurrence,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'recurrence': recurrence,
      'startTime': startTime,
    };
  }

  factory GetShareSnapshotSchedule.fromMap(Map<String, dynamic> map) {
    return GetShareSnapshotSchedule(
      name: map['name'] as String,
      recurrence: map['recurrence'] as String,
      startTime: map['startTime'] as String,
    );
  }
}

