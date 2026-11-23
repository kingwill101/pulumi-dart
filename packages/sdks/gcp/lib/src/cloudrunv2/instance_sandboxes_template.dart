// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_sandboxes_template_env.dart';
import 'instance_sandboxes_template_volume_mount.dart';

class InstanceSandboxesTemplate {
  /// Arguments to the entrypoint. The docker image's CMD is used if this is not provided.
  final pulumi.Input<List<String>?>? args;
  /// Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if this is not provided.
  final pulumi.Input<List<String>?>? commands;
  /// List of environment variables to set in the sandbox.
  /// Structure is documented below.
  final pulumi.Input<List<InstanceSandboxesTemplateEnv>?>? envs;
  /// Name of the container image in Dockerhub or Artifact Registry. If the host is not provided, Dockerhub is assumed.
  final pulumi.Input<String> image;
  /// Name of the sandbox specified as a DNS_LABEL (RFC 1123).
  final pulumi.Input<String> name;
  /// Volume to mount into the container's filesystem.
  /// Structure is documented below.
  final pulumi.Input<List<InstanceSandboxesTemplateVolumeMount>?>? volumeMounts;
  /// Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image.
  final pulumi.Input<String?>? workingDir;

  /// Creates a new [InstanceSandboxesTemplate].
  /// [args] Arguments to the entrypoint. The docker image's CMD is used if this is not provided.
  /// [commands] Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if this is not provided.
  /// [envs] List of environment variables to set in the sandbox.
  /// [image] Name of the container image in Dockerhub or Artifact Registry. If the host is not provided, Dockerhub is assumed.
  /// [name] Name of the sandbox specified as a DNS_LABEL (RFC 1123).
  /// [volumeMounts] Volume to mount into the container's filesystem.
  /// [workingDir] Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image.
  const InstanceSandboxesTemplate({
    this.args,
    this.commands,
    this.envs,
    required this.image,
    required this.name,
    this.volumeMounts,
    this.workingDir,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?args,
      'commands': ?commands,
      'envs': ?pulumi.Input.mapOptionalInputValue<List<InstanceSandboxesTemplateEnv>, List<Map<String, dynamic>>>(envs, (value) => pulumi.Input.encodeList<InstanceSandboxesTemplateEnv, Map<String, dynamic>>(value, (value) => value.toMap())),
      'image': image,
      'name': name,
      'volumeMounts': ?pulumi.Input.mapOptionalInputValue<List<InstanceSandboxesTemplateVolumeMount>, List<Map<String, dynamic>>>(volumeMounts, (value) => pulumi.Input.encodeList<InstanceSandboxesTemplateVolumeMount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'workingDir': ?workingDir,
    };
  }

  factory InstanceSandboxesTemplate.fromMap(Map<String, dynamic> map) {
    return InstanceSandboxesTemplate(
      args: (() { final guardedValue = map['args']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      commands: (() { final guardedValue = map['commands']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      envs: (() { final guardedValue = map['envs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceSandboxesTemplateEnv>(guardedValue, (value) => InstanceSandboxesTemplateEnv.fromMap((value as Map).cast<String, dynamic>()))); })(),
      image: pulumi.Input.fromValue(map['image'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      volumeMounts: (() { final guardedValue = map['volumeMounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceSandboxesTemplateVolumeMount>(guardedValue, (value) => InstanceSandboxesTemplateVolumeMount.fromMap((value as Map).cast<String, dynamic>()))); })(),
      workingDir: (() { final guardedValue = map['workingDir']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
