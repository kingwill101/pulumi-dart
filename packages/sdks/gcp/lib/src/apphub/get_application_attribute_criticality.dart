// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApplicationAttributeCriticality {
  /// Criticality type. Possible values: ["MISSION_CRITICAL", "HIGH", "MEDIUM", "LOW"]
  final pulumi.Input<String> type;

  /// Creates a new [GetApplicationAttributeCriticality].
  /// [type] Criticality type. Possible values: ["MISSION_CRITICAL", "HIGH", "MEDIUM", "LOW"]
  const GetApplicationAttributeCriticality({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory GetApplicationAttributeCriticality.fromMap(Map<String, dynamic> map) {
    return GetApplicationAttributeCriticality(
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
