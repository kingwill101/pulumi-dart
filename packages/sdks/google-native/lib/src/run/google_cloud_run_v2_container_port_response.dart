// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ContainerPort represents a network port in a single container.
class GoogleCloudRunV2ContainerPortResponse {
  /// Port number the container listens on. This must be a valid TCP port number, 0 &lt; container_port &lt; 65536.
  final pulumi.Input<int> containerPort;

  /// If specified, used to specify which protocol to use. Allowed values are "http1" and "h2c".
  final pulumi.Input<String> name;

  /// Creates a new [GoogleCloudRunV2ContainerPortResponse].
  /// [containerPort] Port number the container listens on. This must be a valid TCP port number, 0 &lt; container_port &lt; 65536.
  /// [name] If specified, used to specify which protocol to use. Allowed values are "http1" and "h2c".
  GoogleCloudRunV2ContainerPortResponse({
    required this.containerPort,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'containerPort': containerPort, 'name': name};
  }

  factory GoogleCloudRunV2ContainerPortResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudRunV2ContainerPortResponse(
      containerPort: pulumi.Input.fromValue(map['containerPort'] as int),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
