// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkloadAttributesCriticality {
  /// Criticality type.
  /// Possible values are: `MISSION_CRITICAL`, `HIGH`, `MEDIUM`, `LOW`.
  final pulumi.Input<String> type;

  /// Creates a new [WorkloadAttributesCriticality].
  /// [type] Criticality type.
  const WorkloadAttributesCriticality({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory WorkloadAttributesCriticality.fromMap(Map<String, dynamic> map) {
    return WorkloadAttributesCriticality(
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
