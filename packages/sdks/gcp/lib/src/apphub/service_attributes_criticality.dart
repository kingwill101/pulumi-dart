// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceAttributesCriticality {
  /// Criticality type.
  /// Possible values are: `MISSION_CRITICAL`, `HIGH`, `MEDIUM`, `LOW`.
  final pulumi.Input<String> type;

  /// Creates a new [ServiceAttributesCriticality].
  /// [type] Criticality type.
  ServiceAttributesCriticality({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory ServiceAttributesCriticality.fromMap(Map<String, dynamic> map) {
    return ServiceAttributesCriticality(
      type: (map['type'] as String).input(),
    );
  }
}

