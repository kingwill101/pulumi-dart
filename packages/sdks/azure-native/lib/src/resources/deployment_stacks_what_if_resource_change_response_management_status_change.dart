// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The predicted changes to the deployment stack management status of the resource.
class DeploymentStacksWhatIfResourceChangeResponseManagementStatusChange {
  /// The predicted value after the deployment is executed.
  final pulumi.Input<String>? after;
  /// The predicted value before the deployment is executed.
  final pulumi.Input<String>? before;

  /// Creates a new [DeploymentStacksWhatIfResourceChangeResponseManagementStatusChange].
  /// [after] The predicted value after the deployment is executed.
  /// [before] The predicted value before the deployment is executed.
  const DeploymentStacksWhatIfResourceChangeResponseManagementStatusChange({
    this.after,
    this.before,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'after': ?after,
      'before': ?before,
    };
  }

  factory DeploymentStacksWhatIfResourceChangeResponseManagementStatusChange.fromMap(Map<String, dynamic> map) {
    return DeploymentStacksWhatIfResourceChangeResponseManagementStatusChange(
      after: (() { final guardedValue = map['after']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      before: (() { final guardedValue = map['before']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

