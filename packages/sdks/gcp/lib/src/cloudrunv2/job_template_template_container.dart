// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_template_template_container_env.dart';
import 'job_template_template_container_port.dart';
import 'job_template_template_container_resources.dart';
import 'job_template_template_container_startup_probe.dart';
import 'job_template_template_container_volume_mount.dart';

class JobTemplateTemplateContainer {
  /// Arguments to the entrypoint. The docker image's CMD is used if this is not provided. Variable references are not supported in Cloud Run.
  final pulumi.Input<List<String>>? args;
  /// Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell
  final pulumi.Input<List<String>>? commands;
  /// Names of the containers that must start before this container.
  final pulumi.Input<List<String>>? dependsOns;
  /// List of environment variables to set in the container.
  /// Structure is documented below.
  final pulumi.Input<List<JobTemplateTemplateContainerEnv>>? envs;
  /// URL of the Container image in Google Container Registry or Google Artifact Registry. More info: https://kubernetes.io/docs/concepts/containers/images
  final pulumi.Input<String> image;
  /// Name of the container specified as a DNS_LABEL.
  final pulumi.Input<String>? name;
  /// List of ports to expose from the container. Only a single port can be specified. The specified ports must be listening on all interfaces (0.0.0.0) within the container to be accessible.
  /// If omitted, a port number will be chosen and passed to the container through the PORT environment variable for the container to listen on
  /// Structure is documented below.
  final pulumi.Input<List<JobTemplateTemplateContainerPort>>? ports;
  /// Compute Resource requirements by this container. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources
  /// Structure is documented below.
  final pulumi.Input<JobTemplateTemplateContainerResources>? resources;
  /// Startup probe of application within the container.
  /// All other probes are disabled if a startup probe is provided, until it
  /// succeeds. Container will not be added to service endpoints if the probe fails.
  /// Structure is documented below.
  final pulumi.Input<JobTemplateTemplateContainerStartupProbe>? startupProbe;
  /// Volume to mount into the container's filesystem.
  /// Structure is documented below.
  final pulumi.Input<List<JobTemplateTemplateContainerVolumeMount>>? volumeMounts;
  /// Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image.
  final pulumi.Input<String>? workingDir;

  /// Creates a new [JobTemplateTemplateContainer].
  /// [args] Arguments to the entrypoint. The docker image's CMD is used if this is not provided. Variable references are not supported in Cloud Run.
  /// [commands] Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell
  /// [dependsOns] Names of the containers that must start before this container.
  /// [envs] List of environment variables to set in the container.
  /// [image] URL of the Container image in Google Container Registry or Google Artifact Registry. More info: https://kubernetes.io/docs/concepts/containers/images
  /// [name] Name of the container specified as a DNS_LABEL.
  /// [ports] List of ports to expose from the container. Only a single port can be specified. The specified ports must be listening on all interfaces (0.0.0.0) within the container to be accessible.
  /// [resources] Compute Resource requirements by this container. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources
  /// [startupProbe] Startup probe of application within the container.
  /// [volumeMounts] Volume to mount into the container's filesystem.
  /// [workingDir] Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image.
  JobTemplateTemplateContainer({
    this.args,
    this.commands,
    this.dependsOns,
    this.envs,
    required this.image,
    this.name,
    this.ports,
    this.resources,
    this.startupProbe,
    this.volumeMounts,
    this.workingDir,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?args,
      'commands': ?commands,
      'dependsOns': ?dependsOns,
      'envs': ?pulumi.Input.mapOptionalInputValue<List<JobTemplateTemplateContainerEnv>, List<Map<String, dynamic>>>(envs, (value) => pulumi.Input.encodeList<JobTemplateTemplateContainerEnv, Map<String, dynamic>>(value, (value) => value.toMap())),
      'image': image,
      'name': ?name,
      'ports': ?pulumi.Input.mapOptionalInputValue<List<JobTemplateTemplateContainerPort>, List<Map<String, dynamic>>>(ports, (value) => pulumi.Input.encodeList<JobTemplateTemplateContainerPort, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resources': ?pulumi.Input.mapOptionalInputValue<JobTemplateTemplateContainerResources, Map<String, dynamic>>(resources, (value) => value.toMap()),
      'startupProbe': ?pulumi.Input.mapOptionalInputValue<JobTemplateTemplateContainerStartupProbe, Map<String, dynamic>>(startupProbe, (value) => value.toMap()),
      'volumeMounts': ?pulumi.Input.mapOptionalInputValue<List<JobTemplateTemplateContainerVolumeMount>, List<Map<String, dynamic>>>(volumeMounts, (value) => pulumi.Input.encodeList<JobTemplateTemplateContainerVolumeMount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'workingDir': ?workingDir,
    };
  }

  factory JobTemplateTemplateContainer.fromMap(Map<String, dynamic> map) {
    return JobTemplateTemplateContainer(
      args: map['args'] == null ? null : ((map['args'] as List).cast<String>()).input(),
      commands: map['commands'] == null ? null : ((map['commands'] as List).cast<String>()).input(),
      dependsOns: map['dependsOns'] == null ? null : ((map['dependsOns'] as List).cast<String>()).input(),
      envs: map['envs'] == null ? null : (pulumi.Input.decodeList<JobTemplateTemplateContainerEnv>(map['envs'], (value) => JobTemplateTemplateContainerEnv.fromMap((value as Map).cast<String, dynamic>()))).input(),
      image: (map['image'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      ports: map['ports'] == null ? null : (pulumi.Input.decodeList<JobTemplateTemplateContainerPort>(map['ports'], (value) => JobTemplateTemplateContainerPort.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resources: map['resources'] == null ? null : (JobTemplateTemplateContainerResources.fromMap((map['resources'] as Map).cast<String, dynamic>())).input(),
      startupProbe: map['startupProbe'] == null ? null : (JobTemplateTemplateContainerStartupProbe.fromMap((map['startupProbe'] as Map).cast<String, dynamic>())).input(),
      volumeMounts: map['volumeMounts'] == null ? null : (pulumi.Input.decodeList<JobTemplateTemplateContainerVolumeMount>(map['volumeMounts'], (value) => JobTemplateTemplateContainerVolumeMount.fromMap((value as Map).cast<String, dynamic>()))).input(),
      workingDir: map['workingDir'] == null ? null : (map['workingDir'] as String).input(),
    );
  }
}

