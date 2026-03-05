// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyVMRetentionWeekly {
  /// The number of weekly backups to keep. Must be between `1` and `9999`
  final pulumi.Input<int> count;
  /// The weekday backups to retain. Must be one of `Sunday`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday` or `Saturday`.
  final pulumi.Input<List<String>> weekdays;

  /// Creates a new [PolicyVMRetentionWeekly].
  /// [count] The number of weekly backups to keep. Must be between `1` and `9999`
  /// [weekdays] The weekday backups to retain. Must be one of `Sunday`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday` or `Saturday`.
  PolicyVMRetentionWeekly({
    required this.count,
    required this.weekdays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'weekdays': weekdays,
    };
  }

  factory PolicyVMRetentionWeekly.fromMap(Map<String, dynamic> map) {
    return PolicyVMRetentionWeekly(
      count: pulumi.Input.fromValue(map['count'] as int),
      weekdays: pulumi.Input.fromValue((map['weekdays'] as List).cast<String>()),
    );
  }
}

