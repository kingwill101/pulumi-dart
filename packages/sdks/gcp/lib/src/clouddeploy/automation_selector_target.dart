// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutomationSelectorTarget {
  /// ID of the `Target`. The value of this field could be one of the following: * The last segment of a target name. It only needs the ID to determine which target is being referred to * "*", all targets in a location.
  final pulumi.Input<String?>? id;
  /// Target labels.
  final pulumi.Input<Map<String, String>?>? labels;

  /// Creates a new [AutomationSelectorTarget].
  /// [id] ID of the `Target`. The value of this field could be one of the following: * The last segment of a target name. It only needs the ID to determine which target is being referred to * "*", all targets in a location.
  /// [labels] Target labels.
  const AutomationSelectorTarget({
    this.id,
    this.labels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'labels': ?labels,
    };
  }

  factory AutomationSelectorTarget.fromMap(Map<String, dynamic> map) {
    return AutomationSelectorTarget(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
