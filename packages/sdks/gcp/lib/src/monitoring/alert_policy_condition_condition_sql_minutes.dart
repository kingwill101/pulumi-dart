// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertPolicyConditionConditionSqlMinutes {
  /// Number of minutes between runs. The interval must be greater than or
  /// equal to 5 minutes and less than or equal to 1440 minutes.
  final pulumi.Input<int> periodicity;

  /// Creates a new [AlertPolicyConditionConditionSqlMinutes].
  /// [periodicity] Number of minutes between runs. The interval must be greater than or
  AlertPolicyConditionConditionSqlMinutes({
    required this.periodicity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'periodicity': periodicity,
    };
  }

  factory AlertPolicyConditionConditionSqlMinutes.fromMap(Map<String, dynamic> map) {
    return AlertPolicyConditionConditionSqlMinutes(
      periodicity: (map['periodicity'] as int).input(),
    );
  }
}

