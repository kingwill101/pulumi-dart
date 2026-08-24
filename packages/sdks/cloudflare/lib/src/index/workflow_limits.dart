// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkflowLimits {
  final pulumi.Input<int?>? steps;

  /// Creates a new [WorkflowLimits].
  /// [steps] Optional.
  const WorkflowLimits({
    this.steps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'steps': ?steps,
    };
  }

  factory WorkflowLimits.fromMap(Map<String, dynamic> map) {
    return WorkflowLimits(
      steps: (() { final guardedValue = map['steps']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
