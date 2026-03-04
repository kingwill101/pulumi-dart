// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'postdeploy.dart';
import 'predeploy.dart';

/// CanaryDeployment represents the canary deployment configuration
class CanaryDeployment {
  /// The percentage based deployments that will occur as a part of a `Rollout`. List is expected in ascending order and each integer n is 0 &lt;= n &lt; 100.
  final pulumi.Input<List<int>> percentages;

  /// Optional. Configuration for the postdeploy job of the last phase. If this is not configured, there will be no postdeploy job for this phase.
  final pulumi.Input<Postdeploy>? postdeploy;

  /// Optional. Configuration for the predeploy job of the first phase. If this is not configured, there will be no predeploy job for this phase.
  final pulumi.Input<Predeploy>? predeploy;

  /// Whether to run verify tests after each percentage deployment.
  final pulumi.Input<bool>? verify;

  /// Creates a new [CanaryDeployment].
  /// [percentages] The percentage based deployments that will occur as a part of a `Rollout`. List is expected in ascending order and each integer n is 0 &lt;= n &lt; 100.
  /// [postdeploy] Optional. Configuration for the postdeploy job of the last phase. If this is not configured, there will be no postdeploy job for this phase.
  /// [predeploy] Optional. Configuration for the predeploy job of the first phase. If this is not configured, there will be no predeploy job for this phase.
  /// [verify] Whether to run verify tests after each percentage deployment.
  CanaryDeployment({
    required this.percentages,
    this.postdeploy,
    this.predeploy,
    this.verify,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'percentages': percentages,
      'postdeploy':
          ?pulumi.Input.mapOptionalInputValue<Postdeploy, Map<String, dynamic>>(
            postdeploy,
            (value) => value.toMap(),
          ),
      'predeploy':
          ?pulumi.Input.mapOptionalInputValue<Predeploy, Map<String, dynamic>>(
            predeploy,
            (value) => value.toMap(),
          ),
      'verify': ?verify,
    };
  }

  factory CanaryDeployment.fromMap(Map<String, dynamic> map) {
    return CanaryDeployment(
      percentages: pulumi.Input.fromValue(
        (map['percentages'] as List).cast<int>(),
      ),
      postdeploy: (() {
        final guardedValue = map['postdeploy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Postdeploy.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      predeploy: (() {
        final guardedValue = map['predeploy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Predeploy.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      verify: (() {
        final guardedValue = map['verify'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
