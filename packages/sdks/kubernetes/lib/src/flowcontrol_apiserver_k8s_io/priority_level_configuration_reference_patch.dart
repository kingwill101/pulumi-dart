// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// PriorityLevelConfigurationReference contains information that points to the "request-priority" being used.
class PriorityLevelConfigurationReferencePatch {
  /// `name` is the name of the priority level configuration being referenced Required.
  final pulumi.Input<String>? name;

  /// Creates a new [PriorityLevelConfigurationReferencePatch].
  /// [name] `name` is the name of the priority level configuration being referenced Required.
  PriorityLevelConfigurationReferencePatch({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory PriorityLevelConfigurationReferencePatch.fromMap(Map<String, dynamic> map) {
    return PriorityLevelConfigurationReferencePatch(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

