// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The predicted changes to the deployment stack deny status of the resource.
class DeploymentStacksWhatIfResourceChangeResponseDenyStatusChange {
  /// The predicted value after the deployment is executed.
  final pulumi.Input<String>? after;

  /// The predicted value before the deployment is executed.
  final pulumi.Input<String>? before;

  /// Creates a new [DeploymentStacksWhatIfResourceChangeResponseDenyStatusChange].
  /// [after] The predicted value after the deployment is executed.
  /// [before] The predicted value before the deployment is executed.
  DeploymentStacksWhatIfResourceChangeResponseDenyStatusChange({
    this.after,
    this.before,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'after': ?after, 'before': ?before};
  }

  factory DeploymentStacksWhatIfResourceChangeResponseDenyStatusChange.fromMap(
    Map<String, dynamic> map,
  ) {
    return DeploymentStacksWhatIfResourceChangeResponseDenyStatusChange(
      after: (() {
        final guardedValue = map['after'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      before: (() {
        final guardedValue = map['before'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
