// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_run_v2_container_port.dart';
import 'google_cloud_run_v2_env_var.dart';
import 'google_cloud_run_v2_probe.dart';
import 'google_cloud_run_v2_resource_requirements.dart';
import 'google_cloud_run_v2_volume_mount.dart';

/// A single application container. This specifies both the container to run, the command to run in the container and the arguments to supply to it. Note that additional arguments can be supplied by the system to the container at runtime.
class GoogleCloudRunV2Container {
  /// Arguments to the entrypoint. The docker image's CMD is used if this is not provided.
  final pulumi.Input<List<String>>? args;
  /// Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if this is not provided.
  final pulumi.Input<List<String>>? command;
  /// Names of the containers that must start before this container.
  final pulumi.Input<List<String>>? dependsOn;
  /// List of environment variables to set in the container.
  final pulumi.Input<List<GoogleCloudRunV2EnvVar>>? env;
  /// Name of the container image in Dockerhub, Google Artifact Registry, or Google Container Registry. If the host is not provided, Dockerhub is assumed.
  final pulumi.Input<String> image;
  /// Periodic probe of container liveness. Container will be restarted if the probe fails.
  final pulumi.Input<GoogleCloudRunV2Probe>? livenessProbe;
  /// Name of the container specified as a DNS_LABEL (RFC 1123).
  final pulumi.Input<String>? name;
  /// List of ports to expose from the container. Only a single port can be specified. The specified ports must be listening on all interfaces (0.0.0.0) within the container to be accessible. If omitted, a port number will be chosen and passed to the container through the PORT environment variable for the container to listen on.
  final pulumi.Input<List<GoogleCloudRunV2ContainerPort>>? ports;
  /// Compute Resource requirements by this container.
  final pulumi.Input<GoogleCloudRunV2ResourceRequirements>? resources;
  /// Startup probe of application within the container. All other probes are disabled if a startup probe is provided, until it succeeds. Container will not be added to service endpoints if the probe fails.
  final pulumi.Input<GoogleCloudRunV2Probe>? startupProbe;
  /// Volume to mount into the container's filesystem.
  final pulumi.Input<List<GoogleCloudRunV2VolumeMount>>? volumeMounts;
  /// Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image.
  final pulumi.Input<String>? workingDir;

  /// Creates a new [GoogleCloudRunV2Container].
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
  const GoogleCloudRunV2Container({
    this.args,
    this.command,
    this.dependsOn,
    this.env,
    required this.image,
    this.livenessProbe,
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
      'command': ?command,
      'dependsOn': ?dependsOn,
      'env': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudRunV2EnvVar>, List<Map<String, dynamic>>>(env, (value) => pulumi.Input.encodeList<GoogleCloudRunV2EnvVar, Map<String, dynamic>>(value, (value) => value.toMap())),
      'image': image,
      'livenessProbe': ?pulumi.Input.mapOptionalInputValue<GoogleCloudRunV2Probe, Map<String, dynamic>>(livenessProbe, (value) => value.toMap()),
      'name': ?name,
      'ports': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudRunV2ContainerPort>, List<Map<String, dynamic>>>(ports, (value) => pulumi.Input.encodeList<GoogleCloudRunV2ContainerPort, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resources': ?pulumi.Input.mapOptionalInputValue<GoogleCloudRunV2ResourceRequirements, Map<String, dynamic>>(resources, (value) => value.toMap()),
      'startupProbe': ?pulumi.Input.mapOptionalInputValue<GoogleCloudRunV2Probe, Map<String, dynamic>>(startupProbe, (value) => value.toMap()),
      'volumeMounts': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudRunV2VolumeMount>, List<Map<String, dynamic>>>(volumeMounts, (value) => pulumi.Input.encodeList<GoogleCloudRunV2VolumeMount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'workingDir': ?workingDir,
    };
  }

  factory GoogleCloudRunV2Container.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRunV2Container(
      args: (() { final guardedValue = map['args']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      command: (() { final guardedValue = map['command']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      dependsOn: (() { final guardedValue = map['dependsOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      env: (() { final guardedValue = map['env']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudRunV2EnvVar>(guardedValue, (value) => GoogleCloudRunV2EnvVar.fromMap((value as Map).cast<String, dynamic>()))); })(),
      image: pulumi.Input.fromValue(map['image'] as String),
      livenessProbe: (() { final guardedValue = map['livenessProbe']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudRunV2Probe.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ports: (() { final guardedValue = map['ports']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudRunV2ContainerPort>(guardedValue, (value) => GoogleCloudRunV2ContainerPort.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudRunV2ResourceRequirements.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      startupProbe: (() { final guardedValue = map['startupProbe']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudRunV2Probe.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      volumeMounts: (() { final guardedValue = map['volumeMounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudRunV2VolumeMount>(guardedValue, (value) => GoogleCloudRunV2VolumeMount.fromMap((value as Map).cast<String, dynamic>()))); })(),
      workingDir: (() { final guardedValue = map['workingDir']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

