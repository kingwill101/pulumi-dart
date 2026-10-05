// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a network port in a single container. This message is a subset of the [Kubernetes ContainerPort v1 core specification](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.18/#containerport-v1-core).
class GoogleCloudMlV1ContainerPort {
  /// Number of the port to expose on the container. This must be a valid port number: 0 &lt; PORT_NUMBER &lt; 65536.
  final pulumi.Input<int?>? containerPort;

  /// Creates a new [GoogleCloudMlV1ContainerPort].
  /// [containerPort] Number of the port to expose on the container. This must be a valid port number: 0 &lt; PORT_NUMBER &lt; 65536.
  const GoogleCloudMlV1ContainerPort({
    this.containerPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerPort': ?containerPort,
    };
  }

  factory GoogleCloudMlV1ContainerPort.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1ContainerPort(
      containerPort: (() { final guardedValue = map['containerPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
