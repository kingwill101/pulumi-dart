// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ContainerResizePolicy represents resource resize policy for the container.
class ContainerResizePolicy {
  /// Name of the resource to which this resource resize policy applies. Supported values: cpu, memory.
  final pulumi.Input<String> resourceName;
  /// Restart policy to apply when specified resource is resized. If not specified, it defaults to NotRequired.
  final pulumi.Input<String> restartPolicy;

  /// Creates a new [ContainerResizePolicy].
  /// [resourceName] Name of the resource to which this resource resize policy applies. Supported values: cpu, memory.
  /// [restartPolicy] Restart policy to apply when specified resource is resized. If not specified, it defaults to NotRequired.
  ContainerResizePolicy({
    required this.resourceName,
    required this.restartPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceName': resourceName,
      'restartPolicy': restartPolicy,
    };
  }

  factory ContainerResizePolicy.fromMap(Map<String, dynamic> map) {
    return ContainerResizePolicy(
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
      restartPolicy: pulumi.Input.fromValue(map['restartPolicy'] as String),
    );
  }
}

