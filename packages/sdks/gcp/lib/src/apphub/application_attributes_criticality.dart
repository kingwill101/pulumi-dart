// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationAttributesCriticality {
  /// Criticality type.
  /// Possible values are: `MISSION_CRITICAL`, `HIGH`, `MEDIUM`, `LOW`.
  final pulumi.Input<String> type;

  /// Creates a new [ApplicationAttributesCriticality].
  /// [type] Criticality type.
  ApplicationAttributesCriticality({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory ApplicationAttributesCriticality.fromMap(Map<String, dynamic> map) {
    return ApplicationAttributesCriticality(
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

