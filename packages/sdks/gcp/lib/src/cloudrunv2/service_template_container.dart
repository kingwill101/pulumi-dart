// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_template_container_build_info.dart';
import 'service_template_container_env.dart';
import 'service_template_container_liveness_probe.dart';
import 'service_template_container_ports.dart';
import 'service_template_container_resources.dart';
import 'service_template_container_source_code.dart';
import 'service_template_container_startup_probe.dart';
import 'service_template_container_volume_mount.dart';

class ServiceTemplateContainer {
  /// Arguments to the entrypoint. The docker image's CMD is used if this is not provided. Variable references are not supported in Cloud Run.
  final pulumi.Input<List<String>>? args;
  /// Base image for this container. If set, it indicates that the service is enrolled into automatic base image update.
  final pulumi.Input<String>? baseImageUri;
  /// (Output)
  /// The build info of the container image.
  /// Structure is documented below.
  final pulumi.Input<List<ServiceTemplateContainerBuildInfo>>? buildInfos;
  /// Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell
  final pulumi.Input<List<String>>? commands;
  /// Containers which should be started before this container. If specified the container will wait to start until all containers with the listed names are healthy.
  final pulumi.Input<List<String>>? dependsOns;
  /// List of environment variables to set in the container.
  /// Structure is documented below.
  final pulumi.Input<List<ServiceTemplateContainerEnv>>? envs;
  /// URL of the Container image in Google Container Registry or Google Artifact Registry. More info: https://kubernetes.io/docs/concepts/containers/images
  final pulumi.Input<String> image;
  /// Periodic probe of container liveness. Container will be restarted if the probe fails. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  /// Structure is documented below.
  final pulumi.Input<ServiceTemplateContainerLivenessProbe>? livenessProbe;
  /// Name of the container specified as a DNS_LABEL.
  final pulumi.Input<String>? name;
  /// List of ports to expose from the container. Only a single port can be specified. The specified ports must be listening on all interfaces (0.0.0.0) within the container to be accessible.
  /// If omitted, a port number will be chosen and passed to the container through the PORT environment variable for the container to listen on
  /// Structure is documented below.
  final pulumi.Input<ServiceTemplateContainerPorts>? ports;
  /// Compute Resource requirements by this container. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources
  /// Structure is documented below.
  final pulumi.Input<ServiceTemplateContainerResources>? resources;
  /// Location of the source.
  /// Structure is documented below.
  final pulumi.Input<ServiceTemplateContainerSourceCode>? sourceCode;
  /// Startup probe of application within the container. All other probes are disabled if a startup probe is provided, until it succeeds. Container will not be added to service endpoints if the probe fails. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  /// Structure is documented below.
  final pulumi.Input<ServiceTemplateContainerStartupProbe>? startupProbe;
  /// Volume to mount into the container's filesystem.
  /// Structure is documented below.
  final pulumi.Input<List<ServiceTemplateContainerVolumeMount>>? volumeMounts;
  /// Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image.
  final pulumi.Input<String>? workingDir;

  /// Creates a new [ServiceTemplateContainer].
  /// [args] Arguments to the entrypoint. The docker image's CMD is used if this is not provided. Variable references are not supported in Cloud Run.
  /// [baseImageUri] Base image for this container. If set, it indicates that the service is enrolled into automatic base image update.
  /// [buildInfos] (Output)
  /// [commands] Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell
  /// [dependsOns] Containers which should be started before this container. If specified the container will wait to start until all containers with the listed names are healthy.
  /// [envs] List of environment variables to set in the container.
  /// [image] URL of the Container image in Google Container Registry or Google Artifact Registry. More info: https://kubernetes.io/docs/concepts/containers/images
  /// [livenessProbe] Periodic probe of container liveness. Container will be restarted if the probe fails. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  /// [name] Name of the container specified as a DNS_LABEL.
  /// [ports] List of ports to expose from the container. Only a single port can be specified. The specified ports must be listening on all interfaces (0.0.0.0) within the container to be accessible.
  /// [resources] Compute Resource requirements by this container. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources
  /// [sourceCode] Location of the source.
  /// [startupProbe] Startup probe of application within the container. All other probes are disabled if a startup probe is provided, until it succeeds. Container will not be added to service endpoints if the probe fails. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  /// [volumeMounts] Volume to mount into the container's filesystem.
  /// [workingDir] Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image.
  ServiceTemplateContainer({
    this.args,
    this.baseImageUri,
    this.buildInfos,
    this.commands,
    this.dependsOns,
    this.envs,
    required this.image,
    this.livenessProbe,
    this.name,
    this.ports,
    this.resources,
    this.sourceCode,
    this.startupProbe,
    this.volumeMounts,
    this.workingDir,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?args,
      'baseImageUri': ?baseImageUri,
      'buildInfos': ?pulumi.Input.mapOptionalInputValue<List<ServiceTemplateContainerBuildInfo>, List<Map<String, dynamic>>>(buildInfos, (value) => pulumi.Input.encodeList<ServiceTemplateContainerBuildInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'commands': ?commands,
      'dependsOns': ?dependsOns,
      'envs': ?pulumi.Input.mapOptionalInputValue<List<ServiceTemplateContainerEnv>, List<Map<String, dynamic>>>(envs, (value) => pulumi.Input.encodeList<ServiceTemplateContainerEnv, Map<String, dynamic>>(value, (value) => value.toMap())),
      'image': image,
      'livenessProbe': ?pulumi.Input.mapOptionalInputValue<ServiceTemplateContainerLivenessProbe, Map<String, dynamic>>(livenessProbe, (value) => value.toMap()),
      'name': ?name,
      'ports': ?pulumi.Input.mapOptionalInputValue<ServiceTemplateContainerPorts, Map<String, dynamic>>(ports, (value) => value.toMap()),
      'resources': ?pulumi.Input.mapOptionalInputValue<ServiceTemplateContainerResources, Map<String, dynamic>>(resources, (value) => value.toMap()),
      'sourceCode': ?pulumi.Input.mapOptionalInputValue<ServiceTemplateContainerSourceCode, Map<String, dynamic>>(sourceCode, (value) => value.toMap()),
      'startupProbe': ?pulumi.Input.mapOptionalInputValue<ServiceTemplateContainerStartupProbe, Map<String, dynamic>>(startupProbe, (value) => value.toMap()),
      'volumeMounts': ?pulumi.Input.mapOptionalInputValue<List<ServiceTemplateContainerVolumeMount>, List<Map<String, dynamic>>>(volumeMounts, (value) => pulumi.Input.encodeList<ServiceTemplateContainerVolumeMount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'workingDir': ?workingDir,
    };
  }

  factory ServiceTemplateContainer.fromMap(Map<String, dynamic> map) {
    return ServiceTemplateContainer(
      args: map['args'] == null ? null : ((map['args'] as List).cast<String>()).input(),
      baseImageUri: map['baseImageUri'] == null ? null : (map['baseImageUri'] as String).input(),
      buildInfos: map['buildInfos'] == null ? null : (pulumi.Input.decodeList<ServiceTemplateContainerBuildInfo>(map['buildInfos'], (value) => ServiceTemplateContainerBuildInfo.fromMap((value as Map).cast<String, dynamic>()))).input(),
      commands: map['commands'] == null ? null : ((map['commands'] as List).cast<String>()).input(),
      dependsOns: map['dependsOns'] == null ? null : ((map['dependsOns'] as List).cast<String>()).input(),
      envs: map['envs'] == null ? null : (pulumi.Input.decodeList<ServiceTemplateContainerEnv>(map['envs'], (value) => ServiceTemplateContainerEnv.fromMap((value as Map).cast<String, dynamic>()))).input(),
      image: (map['image'] as String).input(),
      livenessProbe: map['livenessProbe'] == null ? null : (ServiceTemplateContainerLivenessProbe.fromMap((map['livenessProbe'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      ports: map['ports'] == null ? null : (ServiceTemplateContainerPorts.fromMap((map['ports'] as Map).cast<String, dynamic>())).input(),
      resources: map['resources'] == null ? null : (ServiceTemplateContainerResources.fromMap((map['resources'] as Map).cast<String, dynamic>())).input(),
      sourceCode: map['sourceCode'] == null ? null : (ServiceTemplateContainerSourceCode.fromMap((map['sourceCode'] as Map).cast<String, dynamic>())).input(),
      startupProbe: map['startupProbe'] == null ? null : (ServiceTemplateContainerStartupProbe.fromMap((map['startupProbe'] as Map).cast<String, dynamic>())).input(),
      volumeMounts: map['volumeMounts'] == null ? null : (pulumi.Input.decodeList<ServiceTemplateContainerVolumeMount>(map['volumeMounts'], (value) => ServiceTemplateContainerVolumeMount.fromMap((value as Map).cast<String, dynamic>()))).input(),
      workingDir: map['workingDir'] == null ? null : (map['workingDir'] as String).input(),
    );
  }
}

