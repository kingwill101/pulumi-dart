// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_port_response.dart';
import 'env_from_source_response.dart';
import 'env_var_response.dart';
import 'probe_response.dart';
import 'resource_requirements_response.dart';
import 'security_context_response.dart';
import 'volume_mount_response.dart';

/// A single application container. This specifies both the container to run, the command to run in the container and the arguments to supply to it. Note that additional arguments may be supplied by the system to the container at runtime.
class ContainerResponse {
  /// Arguments to the entrypoint. The docker image's CMD is used if this is not provided. Variable references are not supported in Cloud Run.
  final pulumi.Input<List<String>> args;
  /// Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if this is not provided. Variable references are not supported in Cloud Run.
  final pulumi.Input<List<String>> command;
  /// List of environment variables to set in the container. EnvVar with duplicate names are generally allowed; if referencing a secret, the name must be unique for the container. For non-secret EnvVar names, the Container will only get the last-declared one.
  final pulumi.Input<List<EnvVarResponse>> env;
  /// Not supported by Cloud Run.
  final pulumi.Input<List<EnvFromSourceResponse>> envFrom;
  /// Name of the container image in Dockerhub, Google Artifact Registry, or Google Container Registry. If the host is not provided, Dockerhub is assumed.
  final pulumi.Input<String> image;
  /// Image pull policy. One of Always, Never, IfNotPresent. Defaults to Always if :latest tag is specified, or IfNotPresent otherwise.
  final pulumi.Input<String> imagePullPolicy;
  /// Periodic probe of container liveness. Container will be restarted if the probe fails.
  final pulumi.Input<ProbeResponse> livenessProbe;
  /// Name of the container specified as a DNS_LABEL (RFC 1123).
  final pulumi.Input<String> name;
  /// List of ports to expose from the container. Only a single port can be specified. The specified ports must be listening on all interfaces (0.0.0.0) within the container to be accessible. If omitted, a port number will be chosen and passed to the container through the PORT environment variable for the container to listen on.
  final pulumi.Input<List<ContainerPortResponse>> ports;
  /// Not supported by Cloud Run.
  final pulumi.Input<ProbeResponse> readinessProbe;
  /// Compute Resources required by this container.
  final pulumi.Input<ResourceRequirementsResponse> resources;
  /// Not supported by Cloud Run.
  final pulumi.Input<SecurityContextResponse> securityContext;
  /// Startup probe of application within the container. All other probes are disabled if a startup probe is provided, until it succeeds. Container will not receive traffic if the probe fails. If not provided, a default startup probe with TCP socket action is used.
  final pulumi.Input<ProbeResponse> startupProbe;
  /// Path at which the file to which the container's termination message will be written is mounted into the container's filesystem. Message written is intended to be brief final status, such as an assertion failure message. Will be truncated by the node if greater than 4096 bytes. The total message length across all containers will be limited to 12kb. Defaults to /dev/termination-log.
  final pulumi.Input<String> terminationMessagePath;
  /// Indicate how the termination message should be populated. File will use the contents of terminationMessagePath to populate the container status message on both success and failure. FallbackToLogsOnError will use the last chunk of container log output if the termination message file is empty and the container exited with an error. The log output is limited to 2048 bytes or 80 lines, whichever is smaller. Defaults to File. Cannot be updated.
  final pulumi.Input<String> terminationMessagePolicy;
  /// Volume to mount into the container's filesystem. Only supports SecretVolumeSources. Pod volumes to mount into the container's filesystem.
  final pulumi.Input<List<VolumeMountResponse>> volumeMounts;
  /// Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image.
  final pulumi.Input<String> workingDir;

  /// Creates a new [ContainerResponse].
  /// [args] Arguments to the entrypoint. The docker image's CMD is used if this is not provided. Variable references are not supported in Cloud Run.
  /// [command] Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if this is not provided. Variable references are not supported in Cloud Run.
  /// [env] List of environment variables to set in the container. EnvVar with duplicate names are generally allowed; if referencing a secret, the name must be unique for the container. For non-secret EnvVar names, the Container will only get the last-declared one.
  /// [envFrom] Not supported by Cloud Run.
  /// [image] Name of the container image in Dockerhub, Google Artifact Registry, or Google Container Registry. If the host is not provided, Dockerhub is assumed.
  /// [imagePullPolicy] Image pull policy. One of Always, Never, IfNotPresent. Defaults to Always if :latest tag is specified, or IfNotPresent otherwise.
  /// [livenessProbe] Periodic probe of container liveness. Container will be restarted if the probe fails.
  /// [name] Name of the container specified as a DNS_LABEL (RFC 1123).
  /// [ports] List of ports to expose from the container. Only a single port can be specified. The specified ports must be listening on all interfaces (0.0.0.0) within the container to be accessible. If omitted, a port number will be chosen and passed to the container through the PORT environment variable for the container to listen on.
  /// [readinessProbe] Not supported by Cloud Run.
  /// [resources] Compute Resources required by this container.
  /// [securityContext] Not supported by Cloud Run.
  /// [startupProbe] Startup probe of application within the container. All other probes are disabled if a startup probe is provided, until it succeeds. Container will not receive traffic if the probe fails. If not provided, a default startup probe with TCP socket action is used.
  /// [terminationMessagePath] Path at which the file to which the container's termination message will be written is mounted into the container's filesystem. Message written is intended to be brief final status, such as an assertion failure message. Will be truncated by the node if greater than 4096 bytes. The total message length across all containers will be limited to 12kb. Defaults to /dev/termination-log.
  /// [terminationMessagePolicy] Indicate how the termination message should be populated. File will use the contents of terminationMessagePath to populate the container status message on both success and failure. FallbackToLogsOnError will use the last chunk of container log output if the termination message file is empty and the container exited with an error. The log output is limited to 2048 bytes or 80 lines, whichever is smaller. Defaults to File. Cannot be updated.
  /// [volumeMounts] Volume to mount into the container's filesystem. Only supports SecretVolumeSources. Pod volumes to mount into the container's filesystem.
  /// [workingDir] Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image.
  ContainerResponse({
    required this.args,
    required this.command,
    required this.env,
    required this.envFrom,
    required this.image,
    required this.imagePullPolicy,
    required this.livenessProbe,
    required this.name,
    required this.ports,
    required this.readinessProbe,
    required this.resources,
    required this.securityContext,
    required this.startupProbe,
    required this.terminationMessagePath,
    required this.terminationMessagePolicy,
    required this.volumeMounts,
    required this.workingDir,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': args,
      'command': command,
      'env': pulumi.Input.mapInputValue<List<EnvVarResponse>, List<Map<String, dynamic>>>(env, (value) => pulumi.Input.encodeList<EnvVarResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'envFrom': pulumi.Input.mapInputValue<List<EnvFromSourceResponse>, List<Map<String, dynamic>>>(envFrom, (value) => pulumi.Input.encodeList<EnvFromSourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'image': image,
      'imagePullPolicy': imagePullPolicy,
      'livenessProbe': pulumi.Input.mapInputValue<ProbeResponse, Map<String, dynamic>>(livenessProbe, (value) => value.toMap()),
      'name': name,
      'ports': pulumi.Input.mapInputValue<List<ContainerPortResponse>, List<Map<String, dynamic>>>(ports, (value) => pulumi.Input.encodeList<ContainerPortResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'readinessProbe': pulumi.Input.mapInputValue<ProbeResponse, Map<String, dynamic>>(readinessProbe, (value) => value.toMap()),
      'resources': pulumi.Input.mapInputValue<ResourceRequirementsResponse, Map<String, dynamic>>(resources, (value) => value.toMap()),
      'securityContext': pulumi.Input.mapInputValue<SecurityContextResponse, Map<String, dynamic>>(securityContext, (value) => value.toMap()),
      'startupProbe': pulumi.Input.mapInputValue<ProbeResponse, Map<String, dynamic>>(startupProbe, (value) => value.toMap()),
      'terminationMessagePath': terminationMessagePath,
      'terminationMessagePolicy': terminationMessagePolicy,
      'volumeMounts': pulumi.Input.mapInputValue<List<VolumeMountResponse>, List<Map<String, dynamic>>>(volumeMounts, (value) => pulumi.Input.encodeList<VolumeMountResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'workingDir': workingDir,
    };
  }

  factory ContainerResponse.fromMap(Map<String, dynamic> map) {
    return ContainerResponse(
      args: ((map['args'] as List).cast<String>()).input(),
      command: ((map['command'] as List).cast<String>()).input(),
      env: (pulumi.Input.decodeList<EnvVarResponse>(map['env'], (value) => EnvVarResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      envFrom: (pulumi.Input.decodeList<EnvFromSourceResponse>(map['envFrom'], (value) => EnvFromSourceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      image: (map['image'] as String).input(),
      imagePullPolicy: (map['imagePullPolicy'] as String).input(),
      livenessProbe: (ProbeResponse.fromMap((map['livenessProbe'] as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      ports: (pulumi.Input.decodeList<ContainerPortResponse>(map['ports'], (value) => ContainerPortResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      readinessProbe: (ProbeResponse.fromMap((map['readinessProbe'] as Map).cast<String, dynamic>())).input(),
      resources: (ResourceRequirementsResponse.fromMap((map['resources'] as Map).cast<String, dynamic>())).input(),
      securityContext: (SecurityContextResponse.fromMap((map['securityContext'] as Map).cast<String, dynamic>())).input(),
      startupProbe: (ProbeResponse.fromMap((map['startupProbe'] as Map).cast<String, dynamic>())).input(),
      terminationMessagePath: (map['terminationMessagePath'] as String).input(),
      terminationMessagePolicy: (map['terminationMessagePolicy'] as String).input(),
      volumeMounts: (pulumi.Input.decodeList<VolumeMountResponse>(map['volumeMounts'], (value) => VolumeMountResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      workingDir: (map['workingDir'] as String).input(),
    );
  }
}

