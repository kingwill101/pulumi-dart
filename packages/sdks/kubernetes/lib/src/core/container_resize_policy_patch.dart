// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ContainerResizePolicy represents resource resize policy for the container.
class ContainerResizePolicyPatch {
  /// Name of the resource to which this resource resize policy applies. Supported values: cpu, memory.
  final pulumi.Input<String>? resourceName;
  /// Restart policy to apply when specified resource is resized. If not specified, it defaults to NotRequired.
  final pulumi.Input<String>? restartPolicy;

  /// Creates a new [ContainerResizePolicyPatch].
  /// [resourceName] Name of the resource to which this resource resize policy applies. Supported values: cpu, memory.
  /// [restartPolicy] Restart policy to apply when specified resource is resized. If not specified, it defaults to NotRequired.
  ContainerResizePolicyPatch({
    this.resourceName,
    this.restartPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceName': ?resourceName,
      'restartPolicy': ?restartPolicy,
    };
  }

  factory ContainerResizePolicyPatch.fromMap(Map<String, dynamic> map) {
    return ContainerResizePolicyPatch(
      resourceName: map['resourceName'] == null ? null : (map['resourceName'] as String).input(),
      restartPolicy: map['restartPolicy'] == null ? null : (map['restartPolicy'] as String).input(),
    );
  }
}

