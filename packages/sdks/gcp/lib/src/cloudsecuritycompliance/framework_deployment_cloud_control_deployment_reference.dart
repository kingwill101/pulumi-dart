// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FrameworkDeploymentCloudControlDeploymentReference {
  /// (Output)
  /// The name of the CloudControlDeployment. The format is:
  /// {parent}/locations/{location}/cloudControlDeployments/{cloud_control_deployment_id}
  final pulumi.Input<String?>? cloudControlDeployment;

  /// Creates a new [FrameworkDeploymentCloudControlDeploymentReference].
  /// [cloudControlDeployment] (Output)
  const FrameworkDeploymentCloudControlDeploymentReference({
    this.cloudControlDeployment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudControlDeployment': ?cloudControlDeployment,
    };
  }

  factory FrameworkDeploymentCloudControlDeploymentReference.fromMap(Map<String, dynamic> map) {
    return FrameworkDeploymentCloudControlDeploymentReference(
      cloudControlDeployment: (() { final guardedValue = map['cloudControlDeployment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
