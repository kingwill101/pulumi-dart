// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a network port in a single container. This message is a subset of the [Kubernetes ContainerPort v1 core specification](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.18/#containerport-v1-core).
class GoogleCloudMlV1ContainerPortResponse {
  /// Number of the port to expose on the container. This must be a valid port number: 0 &lt; PORT_NUMBER &lt; 65536.
  final pulumi.Input<int> containerPort;

  /// Creates a new [GoogleCloudMlV1ContainerPortResponse].
  /// [containerPort] Number of the port to expose on the container. This must be a valid port number: 0 &lt; PORT_NUMBER &lt; 65536.
  GoogleCloudMlV1ContainerPortResponse({
    required this.containerPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerPort': containerPort,
    };
  }

  factory GoogleCloudMlV1ContainerPortResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1ContainerPortResponse(
      containerPort: pulumi.Input.fromValue(map['containerPort'] as int),
    );
  }
}

