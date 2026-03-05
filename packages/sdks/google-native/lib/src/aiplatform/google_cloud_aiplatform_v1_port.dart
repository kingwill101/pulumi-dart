// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a network port in a container.
class GoogleCloudAiplatformV1Port {
  /// The number of the port to expose on the pod's IP address. Must be a valid port number, between 1 and 65535 inclusive.
  final pulumi.Input<int>? containerPort;

  /// Creates a new [GoogleCloudAiplatformV1Port].
  /// [containerPort] The number of the port to expose on the pod's IP address. Must be a valid port number, between 1 and 65535 inclusive.
  GoogleCloudAiplatformV1Port({
    this.containerPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerPort': ?containerPort,
    };
  }

  factory GoogleCloudAiplatformV1Port.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1Port(
      containerPort: (() { final guardedValue = map['containerPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

