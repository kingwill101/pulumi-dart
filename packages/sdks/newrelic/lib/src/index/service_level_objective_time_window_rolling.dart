// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceLevelObjectiveTimeWindowRolling {
  /// Valid values are `1`, `7` and `28`.
  final pulumi.Input<int> count;
  /// The only supported value is `DAY`.
  final pulumi.Input<String> unit;

  /// Creates a new [ServiceLevelObjectiveTimeWindowRolling].
  /// [count] Valid values are `1`, `7` and `28`.
  /// [unit] The only supported value is `DAY`.
  ServiceLevelObjectiveTimeWindowRolling({
    required this.count,
    required this.unit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'unit': unit,
    };
  }

  factory ServiceLevelObjectiveTimeWindowRolling.fromMap(Map<String, dynamic> map) {
    return ServiceLevelObjectiveTimeWindowRolling(
      count: (map['count'] as int).input(),
      unit: (map['unit'] as String).input(),
    );
  }
}

