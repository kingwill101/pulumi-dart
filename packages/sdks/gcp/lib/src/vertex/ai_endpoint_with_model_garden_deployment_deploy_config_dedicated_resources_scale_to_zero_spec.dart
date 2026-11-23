// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesScaleToZeroSpec {
  /// (Optional, Beta)
  /// Duration of no traffic before scaling to zero. [MinValue=300] (5
  /// minutes) [MaxValue=28800] (8 hours)
  final pulumi.Input<String?>? idleScaledownPeriod;
  /// (Optional, Beta)
  /// Minimum duration that a deployment will be scaled up before traffic is
  /// evaluated for potential scale-down. [MinValue=300] (5 minutes)
  /// [MaxValue=28800] (8 hours)
  final pulumi.Input<String?>? minScaleupPeriod;

  /// Creates a new [AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesScaleToZeroSpec].
  /// [idleScaledownPeriod] (Optional, Beta)
  /// [minScaleupPeriod] (Optional, Beta)
  const AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesScaleToZeroSpec({
    this.idleScaledownPeriod,
    this.minScaleupPeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idleScaledownPeriod': ?idleScaledownPeriod,
      'minScaleupPeriod': ?minScaleupPeriod,
    };
  }

  factory AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesScaleToZeroSpec.fromMap(Map<String, dynamic> map) {
    return AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesScaleToZeroSpec(
      idleScaledownPeriod: (() { final guardedValue = map['idleScaledownPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minScaleupPeriod: (() { final guardedValue = map['minScaleupPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
