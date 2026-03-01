// ignore_for_file: unused_element, unnecessary_cast


class PolicyFileShareRetentionWeekly {
  /// The number of daily backups to keep. Must be between `1` and `200` (inclusive)
  final int count;
  /// The weekday backups to retain. Must be one of `Sunday`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday` or `Saturday`.
  final List<String> weekdays;

  /// Creates a new [PolicyFileShareRetentionWeekly].
  /// [count] The number of daily backups to keep. Must be between `1` and `200` (inclusive)
  /// [weekdays] The weekday backups to retain. Must be one of `Sunday`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday` or `Saturday`.
  PolicyFileShareRetentionWeekly({
    required this.count,
    required this.weekdays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'weekdays': weekdays,
    };
  }

  factory PolicyFileShareRetentionWeekly.fromMap(Map<String, dynamic> map) {
    return PolicyFileShareRetentionWeekly(
      count: map['count'] as int,
      weekdays: (map['weekdays'] as List).cast<String>(),
    );
  }
}

