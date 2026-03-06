// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A Docker container.
class ContainerResponse {
  /// Optional. Arguments passed to the entrypoint.
  final pulumi.Input<List<String>> args;
  /// Optional. If set, overrides the default ENTRYPOINT specified by the image.
  final pulumi.Input<List<String>> command;
  /// Optional. Environment variables passed to the container's entrypoint.
  final pulumi.Input<Map<String, String>> env;
  /// Optional. A Docker container image that defines a custom environment. Cloud Workstations provides a number of [preconfigured images](https://cloud.google.com/workstations/docs/preconfigured-base-images), but you can create your own [custom container images](https://cloud.google.com/workstations/docs/custom-container-images). If using a private image, the `host.gceInstance.serviceAccount` field must be specified in the workstation configuration. If using a custom container image, the service account must have [Artifact Registry Reader](https://cloud.google.com/artifact-registry/docs/access-control#roles) permission to pull the specified image. Otherwise, the image must be publicly accessible.
  final pulumi.Input<String> image;
  /// Optional. If set, overrides the USER specified in the image with the given uid.
  final pulumi.Input<int> runAsUser;
  /// Optional. If set, overrides the default DIR specified by the image.
  final pulumi.Input<String> workingDir;

  /// Creates a new [ContainerResponse].
  /// [args] Optional. Arguments passed to the entrypoint.
  /// [command] Optional. If set, overrides the default ENTRYPOINT specified by the image.
  /// [env] Optional. Environment variables passed to the container's entrypoint.
  /// [image] Optional. A Docker container image that defines a custom environment. Cloud Workstations provides a number of [preconfigured images](https://cloud.google.com/workstations/docs/preconfigured-base-images), but you can create your own [custom container images](https://cloud.google.com/workstations/docs/custom-container-images). If using a private image, the `host.gceInstance.serviceAccount` field must be specified in the workstation configuration. If using a custom container image, the service account must have [Artifact Registry Reader](https://cloud.google.com/artifact-registry/docs/access-control#roles) permission to pull the specified image. Otherwise, the image must be publicly accessible.
  /// [runAsUser] Optional. If set, overrides the USER specified in the image with the given uid.
  /// [workingDir] Optional. If set, overrides the default DIR specified by the image.
  const ContainerResponse({
    required this.args,
    required this.command,
    required this.env,
    required this.image,
    required this.runAsUser,
    required this.workingDir,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': args,
      'command': command,
      'env': env,
      'image': image,
      'runAsUser': runAsUser,
      'workingDir': workingDir,
    };
  }

  factory ContainerResponse.fromMap(Map<String, dynamic> map) {
    return ContainerResponse(
      args: pulumi.Input.fromValue((map['args'] as List).cast<String>()),
      command: pulumi.Input.fromValue((map['command'] as List).cast<String>()),
      env: pulumi.Input.fromValue((map['env'] as Map).cast<String, String>()),
      image: pulumi.Input.fromValue(map['image'] as String),
      runAsUser: pulumi.Input.fromValue(map['runAsUser'] as int),
      workingDir: pulumi.Input.fromValue(map['workingDir'] as String),
    );
  }
}

