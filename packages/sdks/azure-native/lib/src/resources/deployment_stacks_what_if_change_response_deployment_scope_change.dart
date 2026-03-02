// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Predicted changes to the deployment scope for the deployment stack.
class DeploymentStacksWhatIfChangeResponseDeploymentScopeChange {
  /// The predicted value after the deployment is executed.
  final pulumi.Input<String>? after;
  /// The predicted value before the deployment is executed.
  final pulumi.Input<String>? before;

  /// Creates a new [DeploymentStacksWhatIfChangeResponseDeploymentScopeChange].
  /// [after] The predicted value after the deployment is executed.
  /// [before] The predicted value before the deployment is executed.
  DeploymentStacksWhatIfChangeResponseDeploymentScopeChange({
    this.after,
    this.before,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'after': ?after,
      'before': ?before,
    };
  }

  factory DeploymentStacksWhatIfChangeResponseDeploymentScopeChange.fromMap(Map<String, dynamic> map) {
    return DeploymentStacksWhatIfChangeResponseDeploymentScopeChange(
      after: map['after'] == null ? null : (map['after']! as String).input(),
      before: map['before'] == null ? null : (map['before']! as String).input(),
    );
  }
}

