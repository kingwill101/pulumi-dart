// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// PriorityLevelConfigurationReference contains information that points to the "request-priority" being used.
class PriorityLevelConfigurationReference {
  /// `name` is the name of the priority level configuration being referenced Required.
  final pulumi.Input<String> name;

  /// Creates a new [PriorityLevelConfigurationReference].
  /// [name] `name` is the name of the priority level configuration being referenced Required.
  const PriorityLevelConfigurationReference({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory PriorityLevelConfigurationReference.fromMap(Map<String, dynamic> map) {
    return PriorityLevelConfigurationReference(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

