// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_run_v2_container_port_response.dart';
import 'google_cloud_run_v2_env_var_response.dart';
import 'google_cloud_run_v2_probe_response.dart';
import 'google_cloud_run_v2_resource_requirements_response.dart';
import 'google_cloud_run_v2_volume_mount_response.dart';

/// A single application container. This specifies both the container to run, the command to run in the container and the arguments to supply to it. Note that additional arguments can be supplied by the system to the container at runtime.
class GoogleCloudRunV2ContainerResponse {
  /// Arguments to the entrypoint. The docker image's CMD is used if this is not provided.
  final pulumi.Input<List<String>> args;
  /// Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if this is not provided.
  final pulumi.Input<List<String>> command;
  /// Names of the containers that must start before this container.
  final pulumi.Input<List<String>> dependsOn;
  /// List of environment variables to set in the container.
  final pulumi.Input<List<GoogleCloudRunV2EnvVarResponse>> env;
  /// Name of the container image in Dockerhub, Google Artifact Registry, or Google Container Registry. If the host is not provided, Dockerhub is assumed.
  final pulumi.Input<String> image;
  /// Periodic probe of container liveness. Container will be restarted if the probe fails.
  final pulumi.Input<GoogleCloudRunV2ProbeResponse> livenessProbe;
  /// Name of the container specified as a DNS_LABEL (RFC 1123).
  final pulumi.Input<String> name;
  /// List of ports to expose from the container. Only a single port can be specified. The specified ports must be listening on all interfaces (0.0.0.0) within the container to be accessible. If omitted, a port number will be chosen and passed to the container through the PORT environment variable for the container to listen on.
  final pulumi.Input<List<GoogleCloudRunV2ContainerPortResponse>> ports;
  /// Compute Resource requirements by this container.
  final pulumi.Input<GoogleCloudRunV2ResourceRequirementsResponse> resources;
  /// Startup probe of application within the container. All other probes are disabled if a startup probe is provided, until it succeeds. Container will not be added to service endpoints if the probe fails.
  final pulumi.Input<GoogleCloudRunV2ProbeResponse> startupProbe;
  /// Volume to mount into the container's filesystem.
  final pulumi.Input<List<GoogleCloudRunV2VolumeMountResponse>> volumeMounts;
  /// Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image.
  final pulumi.Input<String> workingDir;

  /// Creates a new [GoogleCloudRunV2ContainerResponse].
  /// [args] Arguments to the entrypoint. The docker image's CMD is used if this is not provided.
  /// [command] Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if this is not provided.
  /// [dependsOn] Names of the containers that must start before this container.
  /// [env] List of environment variables to set in the container.
  /// [image] Name of the container image in Dockerhub, Google Artifact Registry, or Google Container Registry. If the host is not provided, Dockerhub is assumed.
  /// [livenessProbe] Periodic probe of container liveness. Container will be restarted if the probe fails.
  /// [name] Name of the container specified as a DNS_LABEL (RFC 1123).
  /// [ports] List of ports to expose from the container. Only a single port can be specified. The specified ports must be listening on all interfaces (0.0.0.0) within the container to be accessible. If omitted, a port number will be chosen and passed to the container through the PORT environment variable for the container to listen on.
  /// [resources] Compute Resource requirements by this container.
  /// [startupProbe] Startup probe of application within the container. All other probes are disabled if a startup probe is provided, until it succeeds. Container will not be added to service endpoints if the probe fails.
  /// [volumeMounts] Volume to mount into the container's filesystem.
  /// [workingDir] Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image.
  GoogleCloudRunV2ContainerResponse({
    required this.args,
    required this.command,
    required this.dependsOn,
    required this.env,
    required this.image,
    required this.livenessProbe,
    required this.name,
    required this.ports,
    required this.resources,
    required this.startupProbe,
    required this.volumeMounts,
    required this.workingDir,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': args,
      'command': command,
      'dependsOn': dependsOn,
      'env': pulumi.Input.mapInputValue<List<GoogleCloudRunV2EnvVarResponse>, List<Map<String, dynamic>>>(env, (value) => pulumi.Input.encodeList<GoogleCloudRunV2EnvVarResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'image': image,
      'livenessProbe': pulumi.Input.mapInputValue<GoogleCloudRunV2ProbeResponse, Map<String, dynamic>>(livenessProbe, (value) => value.toMap()),
      'name': name,
      'ports': pulumi.Input.mapInputValue<List<GoogleCloudRunV2ContainerPortResponse>, List<Map<String, dynamic>>>(ports, (value) => pulumi.Input.encodeList<GoogleCloudRunV2ContainerPortResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resources': pulumi.Input.mapInputValue<GoogleCloudRunV2ResourceRequirementsResponse, Map<String, dynamic>>(resources, (value) => value.toMap()),
      'startupProbe': pulumi.Input.mapInputValue<GoogleCloudRunV2ProbeResponse, Map<String, dynamic>>(startupProbe, (value) => value.toMap()),
      'volumeMounts': pulumi.Input.mapInputValue<List<GoogleCloudRunV2VolumeMountResponse>, List<Map<String, dynamic>>>(volumeMounts, (value) => pulumi.Input.encodeList<GoogleCloudRunV2VolumeMountResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'workingDir': workingDir,
    };
  }

  factory GoogleCloudRunV2ContainerResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRunV2ContainerResponse(
      args: ((map['args'] as List).cast<String>()).input(),
      command: ((map['command'] as List).cast<String>()).input(),
      dependsOn: ((map['dependsOn'] as List).cast<String>()).input(),
      env: (pulumi.Input.decodeList<GoogleCloudRunV2EnvVarResponse>(map['env'], (value) => GoogleCloudRunV2EnvVarResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      image: (map['image'] as String).input(),
      livenessProbe: (GoogleCloudRunV2ProbeResponse.fromMap((map['livenessProbe'] as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      ports: (pulumi.Input.decodeList<GoogleCloudRunV2ContainerPortResponse>(map['ports'], (value) => GoogleCloudRunV2ContainerPortResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resources: (GoogleCloudRunV2ResourceRequirementsResponse.fromMap((map['resources'] as Map).cast<String, dynamic>())).input(),
      startupProbe: (GoogleCloudRunV2ProbeResponse.fromMap((map['startupProbe'] as Map).cast<String, dynamic>())).input(),
      volumeMounts: (pulumi.Input.decodeList<GoogleCloudRunV2VolumeMountResponse>(map['volumeMounts'], (value) => GoogleCloudRunV2VolumeMountResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      workingDir: (map['workingDir'] as String).input(),
    );
  }
}

