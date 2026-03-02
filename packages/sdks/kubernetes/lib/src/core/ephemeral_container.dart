// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_port.dart';
import 'container_resize_policy.dart';
import 'container_restart_rule.dart';
import 'env_from_source.dart';
import 'env_var.dart';
import 'lifecycle.dart';
import 'probe.dart';
import 'resource_requirements.dart';
import 'security_context.dart';
import 'volume_device.dart';
import 'volume_mount.dart';

/// An EphemeralContainer is a temporary container that you may add to an existing Pod for user-initiated activities such as debugging. Ephemeral containers have no resource or scheduling guarantees, and they will not be restarted when they exit or when a Pod is removed or restarted. The kubelet may evict a Pod if an ephemeral container causes the Pod to exceed its resource allocation.
///
/// To add an ephemeral container, use the ephemeralcontainers subresource of an existing Pod. Ephemeral containers may not be removed or restarted.
class EphemeralContainer {
  /// Arguments to the entrypoint. The image's CMD is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. "$$(VAR_NAME)" will produce the string literal "$(VAR_NAME)". Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell
  final pulumi.Input<List<String>>? args;
  /// Entrypoint array. Not executed within a shell. The image's ENTRYPOINT is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. "$$(VAR_NAME)" will produce the string literal "$(VAR_NAME)". Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell
  final pulumi.Input<List<String>>? command;
  /// List of environment variables to set in the container. Cannot be updated.
  final pulumi.Input<List<EnvVar>>? env;
  /// List of sources to populate environment variables in the container. The keys defined within a source may consist of any printable ASCII characters except '='. When a key exists in multiple sources, the value associated with the last source will take precedence. Values defined by an Env with a duplicate key will take precedence. Cannot be updated.
  final pulumi.Input<List<EnvFromSource>>? envFrom;
  /// Container image name. More info: https://kubernetes.io/docs/concepts/containers/images
  final pulumi.Input<String>? image;
  /// Image pull policy. One of Always, Never, IfNotPresent. Defaults to Always if :latest tag is specified, or IfNotPresent otherwise. Cannot be updated. More info: https://kubernetes.io/docs/concepts/containers/images#updating-images
  final pulumi.Input<String>? imagePullPolicy;
  /// Lifecycle is not allowed for ephemeral containers.
  final pulumi.Input<Lifecycle>? lifecycle;
  /// Probes are not allowed for ephemeral containers.
  final pulumi.Input<Probe>? livenessProbe;
  /// Name of the ephemeral container specified as a DNS_LABEL. This name must be unique among all containers, init containers and ephemeral containers.
  final pulumi.Input<String> name;
  /// Ports are not allowed for ephemeral containers.
  final pulumi.Input<List<ContainerPort>>? ports;
  /// Probes are not allowed for ephemeral containers.
  final pulumi.Input<Probe>? readinessProbe;
  /// Resources resize policy for the container.
  final pulumi.Input<List<ContainerResizePolicy>>? resizePolicy;
  /// Resources are not allowed for ephemeral containers. Ephemeral containers use spare resources already allocated to the pod.
  final pulumi.Input<ResourceRequirements>? resources;
  /// Restart policy for the container to manage the restart behavior of each container within a pod. You cannot set this field on ephemeral containers.
  final pulumi.Input<String>? restartPolicy;
  /// Represents a list of rules to be checked to determine if the container should be restarted on exit. You cannot set this field on ephemeral containers.
  final pulumi.Input<List<ContainerRestartRule>>? restartPolicyRules;
  /// Optional: SecurityContext defines the security options the ephemeral container should be run with. If set, the fields of SecurityContext override the equivalent fields of PodSecurityContext.
  final pulumi.Input<SecurityContext>? securityContext;
  /// Probes are not allowed for ephemeral containers.
  final pulumi.Input<Probe>? startupProbe;
  /// Whether this container should allocate a buffer for stdin in the container runtime. If this is not set, reads from stdin in the container will always result in EOF. Default is false.
  final pulumi.Input<bool>? stdin;
  /// Whether the container runtime should close the stdin channel after it has been opened by a single attach. When stdin is true the stdin stream will remain open across multiple attach sessions. If stdinOnce is set to true, stdin is opened on container start, is empty until the first client attaches to stdin, and then remains open and accepts data until the client disconnects, at which time stdin is closed and remains closed until the container is restarted. If this flag is false, a container processes that reads from stdin will never receive an EOF. Default is false
  final pulumi.Input<bool>? stdinOnce;
  /// If set, the name of the container from PodSpec that this ephemeral container targets. The ephemeral container will be run in the namespaces (IPC, PID, etc) of this container. If not set then the ephemeral container uses the namespaces configured in the Pod spec.
  ///
  /// The container runtime must implement support for this feature. If the runtime does not support namespace targeting then the result of setting this field is undefined.
  final pulumi.Input<String>? targetContainerName;
  /// Optional: Path at which the file to which the container's termination message will be written is mounted into the container's filesystem. Message written is intended to be brief final status, such as an assertion failure message. Will be truncated by the node if greater than 4096 bytes. The total message length across all containers will be limited to 12kb. Defaults to /dev/termination-log. Cannot be updated.
  final pulumi.Input<String>? terminationMessagePath;
  /// Indicate how the termination message should be populated. File will use the contents of terminationMessagePath to populate the container status message on both success and failure. FallbackToLogsOnError will use the last chunk of container log output if the termination message file is empty and the container exited with an error. The log output is limited to 2048 bytes or 80 lines, whichever is smaller. Defaults to File. Cannot be updated.
  final pulumi.Input<String>? terminationMessagePolicy;
  /// Whether this container should allocate a TTY for itself, also requires 'stdin' to be true. Default is false.
  final pulumi.Input<bool>? tty;
  /// volumeDevices is the list of block devices to be used by the container.
  final pulumi.Input<List<VolumeDevice>>? volumeDevices;
  /// Pod volumes to mount into the container's filesystem. Subpath mounts are not allowed for ephemeral containers. Cannot be updated.
  final pulumi.Input<List<VolumeMount>>? volumeMounts;
  /// Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image. Cannot be updated.
  final pulumi.Input<String>? workingDir;

  /// Creates a new [EphemeralContainer].
  /// [args] Arguments to the entrypoint. The image's CMD is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. "$$(VAR_NAME)" will produce the string literal "$(VAR_NAME)". Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell
  /// [command] Entrypoint array. Not executed within a shell. The image's ENTRYPOINT is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. "$$(VAR_NAME)" will produce the string literal "$(VAR_NAME)". Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell
  /// [env] List of environment variables to set in the container. Cannot be updated.
  /// [envFrom] List of sources to populate environment variables in the container. The keys defined within a source may consist of any printable ASCII characters except '='. When a key exists in multiple sources, the value associated with the last source will take precedence. Values defined by an Env with a duplicate key will take precedence. Cannot be updated.
  /// [image] Container image name. More info: https://kubernetes.io/docs/concepts/containers/images
  /// [imagePullPolicy] Image pull policy. One of Always, Never, IfNotPresent. Defaults to Always if :latest tag is specified, or IfNotPresent otherwise. Cannot be updated. More info: https://kubernetes.io/docs/concepts/containers/images#updating-images
  /// [lifecycle] Lifecycle is not allowed for ephemeral containers.
  /// [livenessProbe] Probes are not allowed for ephemeral containers.
  /// [name] Name of the ephemeral container specified as a DNS_LABEL. This name must be unique among all containers, init containers and ephemeral containers.
  /// [ports] Ports are not allowed for ephemeral containers.
  /// [readinessProbe] Probes are not allowed for ephemeral containers.
  /// [resizePolicy] Resources resize policy for the container.
  /// [resources] Resources are not allowed for ephemeral containers. Ephemeral containers use spare resources already allocated to the pod.
  /// [restartPolicy] Restart policy for the container to manage the restart behavior of each container within a pod. You cannot set this field on ephemeral containers.
  /// [restartPolicyRules] Represents a list of rules to be checked to determine if the container should be restarted on exit. You cannot set this field on ephemeral containers.
  /// [securityContext] Optional: SecurityContext defines the security options the ephemeral container should be run with. If set, the fields of SecurityContext override the equivalent fields of PodSecurityContext.
  /// [startupProbe] Probes are not allowed for ephemeral containers.
  /// [stdin] Whether this container should allocate a buffer for stdin in the container runtime. If this is not set, reads from stdin in the container will always result in EOF. Default is false.
  /// [stdinOnce] Whether the container runtime should close the stdin channel after it has been opened by a single attach. When stdin is true the stdin stream will remain open across multiple attach sessions. If stdinOnce is set to true, stdin is opened on container start, is empty until the first client attaches to stdin, and then remains open and accepts data until the client disconnects, at which time stdin is closed and remains closed until the container is restarted. If this flag is false, a container processes that reads from stdin will never receive an EOF. Default is false
  /// [targetContainerName] If set, the name of the container from PodSpec that this ephemeral container targets. The ephemeral container will be run in the namespaces (IPC, PID, etc) of this container. If not set then the ephemeral container uses the namespaces configured in the Pod spec.
  /// [terminationMessagePath] Optional: Path at which the file to which the container's termination message will be written is mounted into the container's filesystem. Message written is intended to be brief final status, such as an assertion failure message. Will be truncated by the node if greater than 4096 bytes. The total message length across all containers will be limited to 12kb. Defaults to /dev/termination-log. Cannot be updated.
  /// [terminationMessagePolicy] Indicate how the termination message should be populated. File will use the contents of terminationMessagePath to populate the container status message on both success and failure. FallbackToLogsOnError will use the last chunk of container log output if the termination message file is empty and the container exited with an error. The log output is limited to 2048 bytes or 80 lines, whichever is smaller. Defaults to File. Cannot be updated.
  /// [tty] Whether this container should allocate a TTY for itself, also requires 'stdin' to be true. Default is false.
  /// [volumeDevices] volumeDevices is the list of block devices to be used by the container.
  /// [volumeMounts] Pod volumes to mount into the container's filesystem. Subpath mounts are not allowed for ephemeral containers. Cannot be updated.
  /// [workingDir] Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image. Cannot be updated.
  EphemeralContainer({
    this.args,
    this.command,
    this.env,
    this.envFrom,
    this.image,
    this.imagePullPolicy,
    this.lifecycle,
    this.livenessProbe,
    required this.name,
    this.ports,
    this.readinessProbe,
    this.resizePolicy,
    this.resources,
    this.restartPolicy,
    this.restartPolicyRules,
    this.securityContext,
    this.startupProbe,
    this.stdin,
    this.stdinOnce,
    this.targetContainerName,
    this.terminationMessagePath,
    this.terminationMessagePolicy,
    this.tty,
    this.volumeDevices,
    this.volumeMounts,
    this.workingDir,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?args,
      'command': ?command,
      'env': ?pulumi.Input.mapOptionalInputValue<List<EnvVar>, List<Map<String, dynamic>>>(env, (value) => pulumi.Input.encodeList<EnvVar, Map<String, dynamic>>(value, (value) => value.toMap())),
      'envFrom': ?pulumi.Input.mapOptionalInputValue<List<EnvFromSource>, List<Map<String, dynamic>>>(envFrom, (value) => pulumi.Input.encodeList<EnvFromSource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'image': ?image,
      'imagePullPolicy': ?imagePullPolicy,
      'lifecycle': ?pulumi.Input.mapOptionalInputValue<Lifecycle, Map<String, dynamic>>(lifecycle, (value) => value.toMap()),
      'livenessProbe': ?pulumi.Input.mapOptionalInputValue<Probe, Map<String, dynamic>>(livenessProbe, (value) => value.toMap()),
      'name': name,
      'ports': ?pulumi.Input.mapOptionalInputValue<List<ContainerPort>, List<Map<String, dynamic>>>(ports, (value) => pulumi.Input.encodeList<ContainerPort, Map<String, dynamic>>(value, (value) => value.toMap())),
      'readinessProbe': ?pulumi.Input.mapOptionalInputValue<Probe, Map<String, dynamic>>(readinessProbe, (value) => value.toMap()),
      'resizePolicy': ?pulumi.Input.mapOptionalInputValue<List<ContainerResizePolicy>, List<Map<String, dynamic>>>(resizePolicy, (value) => pulumi.Input.encodeList<ContainerResizePolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resources': ?pulumi.Input.mapOptionalInputValue<ResourceRequirements, Map<String, dynamic>>(resources, (value) => value.toMap()),
      'restartPolicy': ?restartPolicy,
      'restartPolicyRules': ?pulumi.Input.mapOptionalInputValue<List<ContainerRestartRule>, List<Map<String, dynamic>>>(restartPolicyRules, (value) => pulumi.Input.encodeList<ContainerRestartRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'securityContext': ?pulumi.Input.mapOptionalInputValue<SecurityContext, Map<String, dynamic>>(securityContext, (value) => value.toMap()),
      'startupProbe': ?pulumi.Input.mapOptionalInputValue<Probe, Map<String, dynamic>>(startupProbe, (value) => value.toMap()),
      'stdin': ?stdin,
      'stdinOnce': ?stdinOnce,
      'targetContainerName': ?targetContainerName,
      'terminationMessagePath': ?terminationMessagePath,
      'terminationMessagePolicy': ?terminationMessagePolicy,
      'tty': ?tty,
      'volumeDevices': ?pulumi.Input.mapOptionalInputValue<List<VolumeDevice>, List<Map<String, dynamic>>>(volumeDevices, (value) => pulumi.Input.encodeList<VolumeDevice, Map<String, dynamic>>(value, (value) => value.toMap())),
      'volumeMounts': ?pulumi.Input.mapOptionalInputValue<List<VolumeMount>, List<Map<String, dynamic>>>(volumeMounts, (value) => pulumi.Input.encodeList<VolumeMount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'workingDir': ?workingDir,
    };
  }

  factory EphemeralContainer.fromMap(Map<String, dynamic> map) {
    return EphemeralContainer(
      args: map['args'] == null ? null : ((map['args']! as List).cast<String>()).input(),
      command: map['command'] == null ? null : ((map['command']! as List).cast<String>()).input(),
      env: map['env'] == null ? null : (pulumi.Input.decodeList<EnvVar>(map['env']!, (value) => EnvVar.fromMap((value as Map).cast<String, dynamic>()))).input(),
      envFrom: map['envFrom'] == null ? null : (pulumi.Input.decodeList<EnvFromSource>(map['envFrom']!, (value) => EnvFromSource.fromMap((value as Map).cast<String, dynamic>()))).input(),
      image: map['image'] == null ? null : (map['image']! as String).input(),
      imagePullPolicy: map['imagePullPolicy'] == null ? null : (map['imagePullPolicy']! as String).input(),
      lifecycle: map['lifecycle'] == null ? null : (Lifecycle.fromMap((map['lifecycle']! as Map).cast<String, dynamic>())).input(),
      livenessProbe: map['livenessProbe'] == null ? null : (Probe.fromMap((map['livenessProbe']! as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      ports: map['ports'] == null ? null : (pulumi.Input.decodeList<ContainerPort>(map['ports']!, (value) => ContainerPort.fromMap((value as Map).cast<String, dynamic>()))).input(),
      readinessProbe: map['readinessProbe'] == null ? null : (Probe.fromMap((map['readinessProbe']! as Map).cast<String, dynamic>())).input(),
      resizePolicy: map['resizePolicy'] == null ? null : (pulumi.Input.decodeList<ContainerResizePolicy>(map['resizePolicy']!, (value) => ContainerResizePolicy.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resources: map['resources'] == null ? null : (ResourceRequirements.fromMap((map['resources']! as Map).cast<String, dynamic>())).input(),
      restartPolicy: map['restartPolicy'] == null ? null : (map['restartPolicy']! as String).input(),
      restartPolicyRules: map['restartPolicyRules'] == null ? null : (pulumi.Input.decodeList<ContainerRestartRule>(map['restartPolicyRules']!, (value) => ContainerRestartRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      securityContext: map['securityContext'] == null ? null : (SecurityContext.fromMap((map['securityContext']! as Map).cast<String, dynamic>())).input(),
      startupProbe: map['startupProbe'] == null ? null : (Probe.fromMap((map['startupProbe']! as Map).cast<String, dynamic>())).input(),
      stdin: map['stdin'] == null ? null : (map['stdin']! as bool).input(),
      stdinOnce: map['stdinOnce'] == null ? null : (map['stdinOnce']! as bool).input(),
      targetContainerName: map['targetContainerName'] == null ? null : (map['targetContainerName']! as String).input(),
      terminationMessagePath: map['terminationMessagePath'] == null ? null : (map['terminationMessagePath']! as String).input(),
      terminationMessagePolicy: map['terminationMessagePolicy'] == null ? null : (map['terminationMessagePolicy']! as String).input(),
      tty: map['tty'] == null ? null : (map['tty']! as bool).input(),
      volumeDevices: map['volumeDevices'] == null ? null : (pulumi.Input.decodeList<VolumeDevice>(map['volumeDevices']!, (value) => VolumeDevice.fromMap((value as Map).cast<String, dynamic>()))).input(),
      volumeMounts: map['volumeMounts'] == null ? null : (pulumi.Input.decodeList<VolumeMount>(map['volumeMounts']!, (value) => VolumeMount.fromMap((value as Map).cast<String, dynamic>()))).input(),
      workingDir: map['workingDir'] == null ? null : (map['workingDir']! as String).input(),
    );
  }
}

