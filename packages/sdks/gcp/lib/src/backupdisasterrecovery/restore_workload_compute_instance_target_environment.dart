// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RestoreWorkloadComputeInstanceTargetEnvironment {
  /// Required. Target project for the Compute Engine instance.
  final pulumi.Input<String> project;
  /// Required. The zone of the Compute Engine instance.
  final pulumi.Input<String> zone;

  /// Creates a new [RestoreWorkloadComputeInstanceTargetEnvironment].
  /// [project] Required. Target project for the Compute Engine instance.
  /// [zone] Required. The zone of the Compute Engine instance.
  const RestoreWorkloadComputeInstanceTargetEnvironment({
    required this.project,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': project,
      'zone': zone,
    };
  }

  factory RestoreWorkloadComputeInstanceTargetEnvironment.fromMap(Map<String, dynamic> map) {
    return RestoreWorkloadComputeInstanceTargetEnvironment(
      project: pulumi.Input.fromValue(map['project'] as String),
      zone: pulumi.Input.fromValue(map['zone'] as String),
    );
  }
}

