// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_port.dart';
import 'env_from_source.dart';
import 'env_var.dart';
import 'probe.dart';
import 'resource_requirements.dart';
import 'security_context.dart';
import 'volume_mount.dart';

/// A single application container. This specifies both the container to run, the command to run in the container and the arguments to supply to it. Note that additional arguments may be supplied by the system to the container at runtime.
class Container {
  /// Arguments to the entrypoint. The docker image's CMD is used if this is not provided. Variable references are not supported in Cloud Run.
  final pulumi.Input<List<String>>? args;
  /// Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if this is not provided. Variable references are not supported in Cloud Run.
  final pulumi.Input<List<String>>? command;
  /// List of environment variables to set in the container. EnvVar with duplicate names are generally allowed; if referencing a secret, the name must be unique for the container. For non-secret EnvVar names, the Container will only get the last-declared one.
  final pulumi.Input<List<EnvVar>>? env;
  /// Not supported by Cloud Run.
  final pulumi.Input<List<EnvFromSource>>? envFrom;
  /// Name of the container image in Dockerhub, Google Artifact Registry, or Google Container Registry. If the host is not provided, Dockerhub is assumed.
  final pulumi.Input<String> image;
  /// Image pull policy. One of Always, Never, IfNotPresent. Defaults to Always if :latest tag is specified, or IfNotPresent otherwise.
  final pulumi.Input<String>? imagePullPolicy;
  /// Periodic probe of container liveness. Container will be restarted if the probe fails.
  final pulumi.Input<Probe>? livenessProbe;
  /// Name of the container specified as a DNS_LABEL (RFC 1123).
  final pulumi.Input<String>? name;
  /// List of ports to expose from the container. Only a single port can be specified. The specified ports must be listening on all interfaces (0.0.0.0) within the container to be accessible. If omitted, a port number will be chosen and passed to the container through the PORT environment variable for the container to listen on.
  final pulumi.Input<List<ContainerPort>>? ports;
  /// Not supported by Cloud Run.
  final pulumi.Input<Probe>? readinessProbe;
  /// Compute Resources required by this container.
  final pulumi.Input<ResourceRequirements>? resources;
  /// Not supported by Cloud Run.
  final pulumi.Input<SecurityContext>? securityContext;
  /// Startup probe of application within the container. All other probes are disabled if a startup probe is provided, until it succeeds. Container will not receive traffic if the probe fails. If not provided, a default startup probe with TCP socket action is used.
  final pulumi.Input<Probe>? startupProbe;
  /// Path at which the file to which the container's termination message will be written is mounted into the container's filesystem. Message written is intended to be brief final status, such as an assertion failure message. Will be truncated by the node if greater than 4096 bytes. The total message length across all containers will be limited to 12kb. Defaults to /dev/termination-log.
  final pulumi.Input<String>? terminationMessagePath;
  /// Indicate how the termination message should be populated. File will use the contents of terminationMessagePath to populate the container status message on both success and failure. FallbackToLogsOnError will use the last chunk of container log output if the termination message file is empty and the container exited with an error. The log output is limited to 2048 bytes or 80 lines, whichever is smaller. Defaults to File. Cannot be updated.
  final pulumi.Input<String>? terminationMessagePolicy;
  /// Volume to mount into the container's filesystem. Only supports SecretVolumeSources. Pod volumes to mount into the container's filesystem.
  final pulumi.Input<List<VolumeMount>>? volumeMounts;
  /// Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image.
  final pulumi.Input<String>? workingDir;

  /// Creates a new [Container].
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
  const Container({
    this.args,
    this.command,
    this.env,
    this.envFrom,
    required this.image,
    this.imagePullPolicy,
    this.livenessProbe,
    this.name,
    this.ports,
    this.readinessProbe,
    this.resources,
    this.securityContext,
    this.startupProbe,
    this.terminationMessagePath,
    this.terminationMessagePolicy,
    this.volumeMounts,
    this.workingDir,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?args,
      'command': ?command,
      'env': ?pulumi.Input.mapOptionalInputValue<List<EnvVar>, List<Map<String, dynamic>>>(env, (value) => pulumi.Input.encodeList<EnvVar, Map<String, dynamic>>(value, (value) => value.toMap())),
      'envFrom': ?pulumi.Input.mapOptionalInputValue<List<EnvFromSource>, List<Map<String, dynamic>>>(envFrom, (value) => pulumi.Input.encodeList<EnvFromSource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'image': image,
      'imagePullPolicy': ?imagePullPolicy,
      'livenessProbe': ?pulumi.Input.mapOptionalInputValue<Probe, Map<String, dynamic>>(livenessProbe, (value) => value.toMap()),
      'name': ?name,
      'ports': ?pulumi.Input.mapOptionalInputValue<List<ContainerPort>, List<Map<String, dynamic>>>(ports, (value) => pulumi.Input.encodeList<ContainerPort, Map<String, dynamic>>(value, (value) => value.toMap())),
      'readinessProbe': ?pulumi.Input.mapOptionalInputValue<Probe, Map<String, dynamic>>(readinessProbe, (value) => value.toMap()),
      'resources': ?pulumi.Input.mapOptionalInputValue<ResourceRequirements, Map<String, dynamic>>(resources, (value) => value.toMap()),
      'securityContext': ?pulumi.Input.mapOptionalInputValue<SecurityContext, Map<String, dynamic>>(securityContext, (value) => value.toMap()),
      'startupProbe': ?pulumi.Input.mapOptionalInputValue<Probe, Map<String, dynamic>>(startupProbe, (value) => value.toMap()),
      'terminationMessagePath': ?terminationMessagePath,
      'terminationMessagePolicy': ?terminationMessagePolicy,
      'volumeMounts': ?pulumi.Input.mapOptionalInputValue<List<VolumeMount>, List<Map<String, dynamic>>>(volumeMounts, (value) => pulumi.Input.encodeList<VolumeMount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'workingDir': ?workingDir,
    };
  }

  factory Container.fromMap(Map<String, dynamic> map) {
    return Container(
      args: (() { final guardedValue = map['args']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      command: (() { final guardedValue = map['command']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      env: (() { final guardedValue = map['env']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EnvVar>(guardedValue, (value) => EnvVar.fromMap((value as Map).cast<String, dynamic>()))); })(),
      envFrom: (() { final guardedValue = map['envFrom']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EnvFromSource>(guardedValue, (value) => EnvFromSource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      image: pulumi.Input.fromValue(map['image'] as String),
      imagePullPolicy: (() { final guardedValue = map['imagePullPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      livenessProbe: (() { final guardedValue = map['livenessProbe']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Probe.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ports: (() { final guardedValue = map['ports']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ContainerPort>(guardedValue, (value) => ContainerPort.fromMap((value as Map).cast<String, dynamic>()))); })(),
      readinessProbe: (() { final guardedValue = map['readinessProbe']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Probe.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceRequirements.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      securityContext: (() { final guardedValue = map['securityContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityContext.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      startupProbe: (() { final guardedValue = map['startupProbe']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Probe.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      terminationMessagePath: (() { final guardedValue = map['terminationMessagePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      terminationMessagePolicy: (() { final guardedValue = map['terminationMessagePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumeMounts: (() { final guardedValue = map['volumeMounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VolumeMount>(guardedValue, (value) => VolumeMount.fromMap((value as Map).cast<String, dynamic>()))); })(),
      workingDir: (() { final guardedValue = map['workingDir']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
