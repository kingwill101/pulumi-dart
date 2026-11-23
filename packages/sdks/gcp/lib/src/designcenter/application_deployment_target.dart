// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_deployment_target_gke_deployment_target.dart';

class ApplicationDeploymentTarget {
  /// The GKE deployment target.
  /// Structure is documented below.
  final pulumi.Input<ApplicationDeploymentTargetGkeDeploymentTarget?>? gkeDeploymentTarget;

  /// Creates a new [ApplicationDeploymentTarget].
  /// [gkeDeploymentTarget] The GKE deployment target.
  const ApplicationDeploymentTarget({
    this.gkeDeploymentTarget,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gkeDeploymentTarget': ?pulumi.Input.mapOptionalInputValue<ApplicationDeploymentTargetGkeDeploymentTarget, Map<String, dynamic>>(gkeDeploymentTarget, (value) => value.toMap()),
    };
  }

  factory ApplicationDeploymentTarget.fromMap(Map<String, dynamic> map) {
    return ApplicationDeploymentTarget(
      gkeDeploymentTarget: (() { final guardedValue = map['gkeDeploymentTarget']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationDeploymentTargetGkeDeploymentTarget.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
