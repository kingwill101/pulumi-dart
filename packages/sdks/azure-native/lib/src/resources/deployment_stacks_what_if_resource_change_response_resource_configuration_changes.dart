// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_stacks_what_if_property_change_response.dart';

/// The predicted changes to the resource configuration.
class DeploymentStacksWhatIfResourceChangeResponseResourceConfigurationChanges {
  /// The predicted value after the deployment is executed.
  final pulumi.Input<dynamic>? after;
  /// The predicted value before the deployment is executed.
  final pulumi.Input<dynamic>? before;
  /// The predicted changes to the properties."
  final pulumi.Input<List<DeploymentStacksWhatIfPropertyChangeResponse>>? delta;

  /// Creates a new [DeploymentStacksWhatIfResourceChangeResponseResourceConfigurationChanges].
  /// [after] The predicted value after the deployment is executed.
  /// [before] The predicted value before the deployment is executed.
  /// [delta] The predicted changes to the properties."
  const DeploymentStacksWhatIfResourceChangeResponseResourceConfigurationChanges({
    this.after,
    this.before,
    this.delta,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'after': ?after,
      'before': ?before,
      'delta': ?pulumi.Input.mapOptionalInputValue<List<DeploymentStacksWhatIfPropertyChangeResponse>, List<Map<String, dynamic>>>(delta, (value) => pulumi.Input.encodeList<DeploymentStacksWhatIfPropertyChangeResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DeploymentStacksWhatIfResourceChangeResponseResourceConfigurationChanges.fromMap(Map<String, dynamic> map) {
    return DeploymentStacksWhatIfResourceChangeResponseResourceConfigurationChanges(
      after: (() { final guardedValue = map['after']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      before: (() { final guardedValue = map['before']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      delta: (() { final guardedValue = map['delta']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DeploymentStacksWhatIfPropertyChangeResponse>(guardedValue, (value) => DeploymentStacksWhatIfPropertyChangeResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
