// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_template_sandbox_template_env.dart';
import 'get_service_template_sandbox_template_volume_mount.dart';

class GetServiceTemplateSandboxTemplate {
  /// Arguments to the entrypoint. The docker image's CMD is used if this is not provided.
  final pulumi.Input<List<String>> args;
  /// Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if this is not provided.
  final pulumi.Input<List<String>> commands;
  /// List of environment variables to set in the sandbox.
  final pulumi.Input<List<GetServiceTemplateSandboxTemplateEnv>> envs;
  /// Name of the container image in Dockerhub or Artifact Registry. If the host is not provided, Dockerhub is assumed.
  final pulumi.Input<String> image;
  /// The name of the Cloud Run v2 Service.
  final pulumi.Input<String> name;
  /// Volume to mount into the container's filesystem.
  final pulumi.Input<List<GetServiceTemplateSandboxTemplateVolumeMount>> volumeMounts;
  /// Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image.
  final pulumi.Input<String> workingDir;

  /// Creates a new [GetServiceTemplateSandboxTemplate].
  /// [args] Arguments to the entrypoint. The docker image's CMD is used if this is not provided.
  /// [commands] Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if this is not provided.
  /// [envs] List of environment variables to set in the sandbox.
  /// [image] Name of the container image in Dockerhub or Artifact Registry. If the host is not provided, Dockerhub is assumed.
  /// [name] The name of the Cloud Run v2 Service.
  /// [volumeMounts] Volume to mount into the container's filesystem.
  /// [workingDir] Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image.
  const GetServiceTemplateSandboxTemplate({
    required this.args,
    required this.commands,
    required this.envs,
    required this.image,
    required this.name,
    required this.volumeMounts,
    required this.workingDir,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': args,
      'commands': commands,
      'envs': pulumi.Input.mapInputValue<List<GetServiceTemplateSandboxTemplateEnv>, List<Map<String, dynamic>>>(envs, (value) => pulumi.Input.encodeList<GetServiceTemplateSandboxTemplateEnv, Map<String, dynamic>>(value, (value) => value.toMap())),
      'image': image,
      'name': name,
      'volumeMounts': pulumi.Input.mapInputValue<List<GetServiceTemplateSandboxTemplateVolumeMount>, List<Map<String, dynamic>>>(volumeMounts, (value) => pulumi.Input.encodeList<GetServiceTemplateSandboxTemplateVolumeMount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'workingDir': workingDir,
    };
  }

  factory GetServiceTemplateSandboxTemplate.fromMap(Map<String, dynamic> map) {
    return GetServiceTemplateSandboxTemplate(
      args: pulumi.Input.fromValue((map['args'] as List).cast<String>()),
      commands: pulumi.Input.fromValue((map['commands'] as List).cast<String>()),
      envs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetServiceTemplateSandboxTemplateEnv>(map['envs']!, (value) => GetServiceTemplateSandboxTemplateEnv.fromMap((value as Map).cast<String, dynamic>()))),
      image: pulumi.Input.fromValue(map['image'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      volumeMounts: pulumi.Input.fromValue(pulumi.Input.decodeList<GetServiceTemplateSandboxTemplateVolumeMount>(map['volumeMounts']!, (value) => GetServiceTemplateSandboxTemplateVolumeMount.fromMap((value as Map).cast<String, dynamic>()))),
      workingDir: pulumi.Input.fromValue(map['workingDir'] as String),
    );
  }
}
