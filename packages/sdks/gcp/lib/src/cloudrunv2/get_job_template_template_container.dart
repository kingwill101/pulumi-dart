// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_job_template_template_container_env.dart';
import 'get_job_template_template_container_port.dart';
import 'get_job_template_template_container_resource.dart';
import 'get_job_template_template_container_startup_probe.dart';
import 'get_job_template_template_container_volume_mount.dart';

class GetJobTemplateTemplateContainer {
  /// Arguments to the entrypoint. The docker image's CMD is used if this is not provided. Variable references are not supported in Cloud Run.
  final pulumi.Input<List<String>> args;
  /// Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell
  final pulumi.Input<List<String>> commands;
  /// Names of the containers that must start before this container.
  final pulumi.Input<List<String>> dependsOns;
  /// List of environment variables to set in the container.
  final pulumi.Input<List<GetJobTemplateTemplateContainerEnv>> envs;
  /// URL of the Container image in Google Container Registry or Google Artifact Registry. More info: https://kubernetes.io/docs/concepts/containers/images
  final pulumi.Input<String> image;
  /// The name of the Cloud Run v2 Job.
  final pulumi.Input<String> name;
  /// List of ports to expose from the container. Only a single port can be specified. The specified ports must be listening on all interfaces (0.0.0.0) within the container to be accessible.
  ///
  /// If omitted, a port number will be chosen and passed to the container through the PORT environment variable for the container to listen on
  final pulumi.Input<List<GetJobTemplateTemplateContainerPort>> ports;
  /// Compute Resource requirements by this container. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources
  final pulumi.Input<List<GetJobTemplateTemplateContainerResource>> resources;
  /// Startup probe of application within the container.
  /// All other probes are disabled if a startup probe is provided, until it
  /// succeeds. Container will not be added to service endpoints if the probe fails.
  final pulumi.Input<List<GetJobTemplateTemplateContainerStartupProbe>> startupProbes;
  /// Volume to mount into the container's filesystem.
  final pulumi.Input<List<GetJobTemplateTemplateContainerVolumeMount>> volumeMounts;
  /// Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image.
  final pulumi.Input<String> workingDir;

  /// Creates a new [GetJobTemplateTemplateContainer].
  /// [args] Arguments to the entrypoint. The docker image's CMD is used if this is not provided. Variable references are not supported in Cloud Run.
  /// [commands] Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell
  /// [dependsOns] Names of the containers that must start before this container.
  /// [envs] List of environment variables to set in the container.
  /// [image] URL of the Container image in Google Container Registry or Google Artifact Registry. More info: https://kubernetes.io/docs/concepts/containers/images
  /// [name] The name of the Cloud Run v2 Job.
  /// [ports] List of ports to expose from the container. Only a single port can be specified. The specified ports must be listening on all interfaces (0.0.0.0) within the container to be accessible.
  /// [resources] Compute Resource requirements by this container. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources
  /// [startupProbes] Startup probe of application within the container.
  /// [volumeMounts] Volume to mount into the container's filesystem.
  /// [workingDir] Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image.
  const GetJobTemplateTemplateContainer({
    required this.args,
    required this.commands,
    required this.dependsOns,
    required this.envs,
    required this.image,
    required this.name,
    required this.ports,
    required this.resources,
    required this.startupProbes,
    required this.volumeMounts,
    required this.workingDir,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': args,
      'commands': commands,
      'dependsOns': dependsOns,
      'envs': pulumi.Input.mapInputValue<List<GetJobTemplateTemplateContainerEnv>, List<Map<String, dynamic>>>(envs, (value) => pulumi.Input.encodeList<GetJobTemplateTemplateContainerEnv, Map<String, dynamic>>(value, (value) => value.toMap())),
      'image': image,
      'name': name,
      'ports': pulumi.Input.mapInputValue<List<GetJobTemplateTemplateContainerPort>, List<Map<String, dynamic>>>(ports, (value) => pulumi.Input.encodeList<GetJobTemplateTemplateContainerPort, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resources': pulumi.Input.mapInputValue<List<GetJobTemplateTemplateContainerResource>, List<Map<String, dynamic>>>(resources, (value) => pulumi.Input.encodeList<GetJobTemplateTemplateContainerResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'startupProbes': pulumi.Input.mapInputValue<List<GetJobTemplateTemplateContainerStartupProbe>, List<Map<String, dynamic>>>(startupProbes, (value) => pulumi.Input.encodeList<GetJobTemplateTemplateContainerStartupProbe, Map<String, dynamic>>(value, (value) => value.toMap())),
      'volumeMounts': pulumi.Input.mapInputValue<List<GetJobTemplateTemplateContainerVolumeMount>, List<Map<String, dynamic>>>(volumeMounts, (value) => pulumi.Input.encodeList<GetJobTemplateTemplateContainerVolumeMount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'workingDir': workingDir,
    };
  }

  factory GetJobTemplateTemplateContainer.fromMap(Map<String, dynamic> map) {
    return GetJobTemplateTemplateContainer(
      args: pulumi.Input.fromValue((map['args'] as List).cast<String>()),
      commands: pulumi.Input.fromValue((map['commands'] as List).cast<String>()),
      dependsOns: pulumi.Input.fromValue((map['dependsOns'] as List).cast<String>()),
      envs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetJobTemplateTemplateContainerEnv>(map['envs']!, (value) => GetJobTemplateTemplateContainerEnv.fromMap((value as Map).cast<String, dynamic>()))),
      image: pulumi.Input.fromValue(map['image'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      ports: pulumi.Input.fromValue(pulumi.Input.decodeList<GetJobTemplateTemplateContainerPort>(map['ports']!, (value) => GetJobTemplateTemplateContainerPort.fromMap((value as Map).cast<String, dynamic>()))),
      resources: pulumi.Input.fromValue(pulumi.Input.decodeList<GetJobTemplateTemplateContainerResource>(map['resources']!, (value) => GetJobTemplateTemplateContainerResource.fromMap((value as Map).cast<String, dynamic>()))),
      startupProbes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetJobTemplateTemplateContainerStartupProbe>(map['startupProbes']!, (value) => GetJobTemplateTemplateContainerStartupProbe.fromMap((value as Map).cast<String, dynamic>()))),
      volumeMounts: pulumi.Input.fromValue(pulumi.Input.decodeList<GetJobTemplateTemplateContainerVolumeMount>(map['volumeMounts']!, (value) => GetJobTemplateTemplateContainerVolumeMount.fromMap((value as Map).cast<String, dynamic>()))),
      workingDir: pulumi.Input.fromValue(map['workingDir'] as String),
    );
  }
}
