// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_stacks_what_if_property_change_response.dart';

/// The predicted changes to the resource configuration.
class DeploymentStacksWhatIfResourceChangeResponseResourceConfigurationChanges {
  /// The predicted value after the deployment is executed.
  final dynamic after;
  /// The predicted value before the deployment is executed.
  final dynamic before;
  /// The predicted changes to the properties."
  final List<DeploymentStacksWhatIfPropertyChangeResponse>? delta;

  /// Creates a new [DeploymentStacksWhatIfResourceChangeResponseResourceConfigurationChanges].
  /// [after] The predicted value after the deployment is executed.
  /// [before] The predicted value before the deployment is executed.
  /// [delta] The predicted changes to the properties."
  DeploymentStacksWhatIfResourceChangeResponseResourceConfigurationChanges({
    this.after,
    this.before,
    this.delta,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'after': ?after,
      'before': ?before,
      'delta': ?delta == null ? null : pulumi.Input.encodeList<DeploymentStacksWhatIfPropertyChangeResponse, Map<String, dynamic>>(delta!, (value) => value.toMap()),
    };
  }

  factory DeploymentStacksWhatIfResourceChangeResponseResourceConfigurationChanges.fromMap(Map<String, dynamic> map) {
    return DeploymentStacksWhatIfResourceChangeResponseResourceConfigurationChanges(
      after: map['after'] == null ? null : map['after'],
      before: map['before'] == null ? null : map['before'],
      delta: map['delta'] == null ? null : pulumi.Input.decodeList<DeploymentStacksWhatIfPropertyChangeResponse>(map['delta'], (value) => DeploymentStacksWhatIfPropertyChangeResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

