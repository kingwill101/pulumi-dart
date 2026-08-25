// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeployPolicySelectorTarget {
  /// ID of the `Target`. The value of this field could be one of the following: * The last segment of a target name. It only needs the ID to determine which target is being referred to * "*", all targets in a location.
  final pulumi.Input<String?>? id;
  /// Target labels.
  final pulumi.Input<Map<String, String>?>? labels;

  /// Creates a new [DeployPolicySelectorTarget].
  /// [id] ID of the `Target`. The value of this field could be one of the following: * The last segment of a target name. It only needs the ID to determine which target is being referred to * "*", all targets in a location.
  /// [labels] Target labels.
  const DeployPolicySelectorTarget({
    this.id,
    this.labels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'labels': ?labels,
    };
  }

  factory DeployPolicySelectorTarget.fromMap(Map<String, dynamic> map) {
    return DeployPolicySelectorTarget(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
