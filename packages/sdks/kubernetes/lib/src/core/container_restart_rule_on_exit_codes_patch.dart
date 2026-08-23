// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ContainerRestartRuleOnExitCodes describes the condition for handling an exited container based on its exit codes.
class ContainerRestartRuleOnExitCodesPatch {
  /// Represents the relationship between the container exit code(s) and the specified values. Possible values are: - In: the requirement is satisfied if the container exit code is in the
  /// set of specified values.
  /// - NotIn: the requirement is satisfied if the container exit code is
  /// not in the set of specified values.
  final pulumi.Input<String>? operator;
  /// Specifies the set of values to check for container exit codes. At most 255 elements are allowed.
  final pulumi.Input<List<int>>? values;

  /// Creates a new [ContainerRestartRuleOnExitCodesPatch].
  /// [operator] Represents the relationship between the container exit code(s) and the specified values. Possible values are: - In: the requirement is satisfied if the container exit code is in the
  /// [values] Specifies the set of values to check for container exit codes. At most 255 elements are allowed.
  const ContainerRestartRuleOnExitCodesPatch({
    this.operator,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operator': ?operator,
      'values': ?values,
    };
  }

  factory ContainerRestartRuleOnExitCodesPatch.fromMap(Map<String, dynamic> map) {
    return ContainerRestartRuleOnExitCodesPatch(
      operator: (() { final guardedValue = map['operator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
    );
  }
}
