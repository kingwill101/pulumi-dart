// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiEndpointWithModelGardenDeploymentModelConfigContainerSpecPort {
  /// The number of the port to expose on the pod's IP address.
  /// Must be a valid port number, between 1 and 65535 inclusive.
  final pulumi.Input<int>? containerPort;

  /// Creates a new [AiEndpointWithModelGardenDeploymentModelConfigContainerSpecPort].
  /// [containerPort] The number of the port to expose on the pod's IP address.
  AiEndpointWithModelGardenDeploymentModelConfigContainerSpecPort({
    this.containerPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'containerPort': ?containerPort};
  }

  factory AiEndpointWithModelGardenDeploymentModelConfigContainerSpecPort.fromMap(
    Map<String, dynamic> map,
  ) {
    return AiEndpointWithModelGardenDeploymentModelConfigContainerSpecPort(
      containerPort: (() {
        final guardedValue = map['containerPort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
