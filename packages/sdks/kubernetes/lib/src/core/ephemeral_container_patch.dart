// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_port_patch.dart';
import 'container_resize_policy_patch.dart';
import 'container_restart_rule_patch.dart';
import 'env_from_source_patch.dart';
import 'env_var_patch.dart';
import 'lifecycle_patch.dart';
import 'probe_patch.dart';
import 'resource_requirements_patch.dart';
import 'security_context_patch.dart';
import 'volume_device_patch.dart';
import 'volume_mount_patch.dart';

/// An EphemeralContainer is a temporary container that you may add to an existing Pod for user-initiated activities such as debugging. Ephemeral containers have no resource or scheduling guarantees, and they will not be restarted when they exit or when a Pod is removed or restarted. The kubelet may evict a Pod if an ephemeral container causes the Pod to exceed its resource allocation.
///
/// To add an ephemeral container, use the ephemeralcontainers subresource of an existing Pod. Ephemeral containers may not be removed or restarted.
class EphemeralContainerPatch {
  /// Arguments to the entrypoint. The image's CMD is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. "$$(VAR_NAME)" will produce the string literal "$(VAR_NAME)". Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell
  final pulumi.Input<List<String>>? args;
  /// Entrypoint array. Not executed within a shell. The image's ENTRYPOINT is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. "$$(VAR_NAME)" will produce the string literal "$(VAR_NAME)". Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell
  final pulumi.Input<List<String>>? command;
  /// List of environment variables to set in the container. Cannot be updated.
  final pulumi.Input<List<EnvVarPatch>>? env;
  /// List of sources to populate environment variables in the container. The keys defined within a source may consist of any printable ASCII characters except '='. When a key exists in multiple sources, the value associated with the last source will take precedence. Values defined by an Env with a duplicate key will take precedence. Cannot be updated.
  final pulumi.Input<List<EnvFromSourcePatch>>? envFrom;
  /// Container image name. More info: https://kubernetes.io/docs/concepts/containers/images
  final pulumi.Input<String>? image;
  /// Image pull policy. One of Always, Never, IfNotPresent. Defaults to Always if :latest tag is specified, or IfNotPresent otherwise. Cannot be updated. More info: https://kubernetes.io/docs/concepts/containers/images#updating-images
  final pulumi.Input<String>? imagePullPolicy;
  /// Lifecycle is not allowed for ephemeral containers.
  final pulumi.Input<LifecyclePatch>? lifecycle;
  /// Probes are not allowed for ephemeral containers.
  final pulumi.Input<ProbePatch>? livenessProbe;
  /// Name of the ephemeral container specified as a DNS_LABEL. This name must be unique among all containers, init containers and ephemeral containers.
  final pulumi.Input<String>? name;
  /// Ports are not allowed for ephemeral containers.
  final pulumi.Input<List<ContainerPortPatch>>? ports;
  /// Probes are not allowed for ephemeral containers.
  final pulumi.Input<ProbePatch>? readinessProbe;
  /// Resources resize policy for the container.
  final pulumi.Input<List<ContainerResizePolicyPatch>>? resizePolicy;
  /// Resources are not allowed for ephemeral containers. Ephemeral containers use spare resources already allocated to the pod.
  final pulumi.Input<ResourceRequirementsPatch>? resources;
  /// Restart policy for the container to manage the restart behavior of each container within a pod. You cannot set this field on ephemeral containers.
  final pulumi.Input<String>? restartPolicy;
  /// Represents a list of rules to be checked to determine if the container should be restarted on exit. You cannot set this field on ephemeral containers.
  final pulumi.Input<List<ContainerRestartRulePatch>>? restartPolicyRules;
  /// Optional: SecurityContext defines the security options the ephemeral container should be run with. If set, the fields of SecurityContext override the equivalent fields of PodSecurityContext.
  final pulumi.Input<SecurityContextPatch>? securityContext;
  /// Probes are not allowed for ephemeral containers.
  final pulumi.Input<ProbePatch>? startupProbe;
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
  final pulumi.Input<List<VolumeDevicePatch>>? volumeDevices;
  /// Pod volumes to mount into the container's filesystem. Subpath mounts are not allowed for ephemeral containers. Cannot be updated.
  final pulumi.Input<List<VolumeMountPatch>>? volumeMounts;
  /// Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image. Cannot be updated.
  final pulumi.Input<String>? workingDir;

  /// Creates a new [EphemeralContainerPatch].
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
  EphemeralContainerPatch({
    this.args,
    this.command,
    this.env,
    this.envFrom,
    this.image,
    this.imagePullPolicy,
    this.lifecycle,
    this.livenessProbe,
    this.name,
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
      'env': ?pulumi.Input.mapOptionalInputValue<List<EnvVarPatch>, List<Map<String, dynamic>>>(env, (value) => pulumi.Input.encodeList<EnvVarPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'envFrom': ?pulumi.Input.mapOptionalInputValue<List<EnvFromSourcePatch>, List<Map<String, dynamic>>>(envFrom, (value) => pulumi.Input.encodeList<EnvFromSourcePatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'image': ?image,
      'imagePullPolicy': ?imagePullPolicy,
      'lifecycle': ?pulumi.Input.mapOptionalInputValue<LifecyclePatch, Map<String, dynamic>>(lifecycle, (value) => value.toMap()),
      'livenessProbe': ?pulumi.Input.mapOptionalInputValue<ProbePatch, Map<String, dynamic>>(livenessProbe, (value) => value.toMap()),
      'name': ?name,
      'ports': ?pulumi.Input.mapOptionalInputValue<List<ContainerPortPatch>, List<Map<String, dynamic>>>(ports, (value) => pulumi.Input.encodeList<ContainerPortPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'readinessProbe': ?pulumi.Input.mapOptionalInputValue<ProbePatch, Map<String, dynamic>>(readinessProbe, (value) => value.toMap()),
      'resizePolicy': ?pulumi.Input.mapOptionalInputValue<List<ContainerResizePolicyPatch>, List<Map<String, dynamic>>>(resizePolicy, (value) => pulumi.Input.encodeList<ContainerResizePolicyPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resources': ?pulumi.Input.mapOptionalInputValue<ResourceRequirementsPatch, Map<String, dynamic>>(resources, (value) => value.toMap()),
      'restartPolicy': ?restartPolicy,
      'restartPolicyRules': ?pulumi.Input.mapOptionalInputValue<List<ContainerRestartRulePatch>, List<Map<String, dynamic>>>(restartPolicyRules, (value) => pulumi.Input.encodeList<ContainerRestartRulePatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'securityContext': ?pulumi.Input.mapOptionalInputValue<SecurityContextPatch, Map<String, dynamic>>(securityContext, (value) => value.toMap()),
      'startupProbe': ?pulumi.Input.mapOptionalInputValue<ProbePatch, Map<String, dynamic>>(startupProbe, (value) => value.toMap()),
      'stdin': ?stdin,
      'stdinOnce': ?stdinOnce,
      'targetContainerName': ?targetContainerName,
      'terminationMessagePath': ?terminationMessagePath,
      'terminationMessagePolicy': ?terminationMessagePolicy,
      'tty': ?tty,
      'volumeDevices': ?pulumi.Input.mapOptionalInputValue<List<VolumeDevicePatch>, List<Map<String, dynamic>>>(volumeDevices, (value) => pulumi.Input.encodeList<VolumeDevicePatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'volumeMounts': ?pulumi.Input.mapOptionalInputValue<List<VolumeMountPatch>, List<Map<String, dynamic>>>(volumeMounts, (value) => pulumi.Input.encodeList<VolumeMountPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'workingDir': ?workingDir,
    };
  }

  factory EphemeralContainerPatch.fromMap(Map<String, dynamic> map) {
    return EphemeralContainerPatch(
      args: (() { final guardedValue = map['args']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      command: (() { final guardedValue = map['command']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      env: (() { final guardedValue = map['env']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EnvVarPatch>(guardedValue, (value) => EnvVarPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      envFrom: (() { final guardedValue = map['envFrom']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EnvFromSourcePatch>(guardedValue, (value) => EnvFromSourcePatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imagePullPolicy: (() { final guardedValue = map['imagePullPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lifecycle: (() { final guardedValue = map['lifecycle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LifecyclePatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      livenessProbe: (() { final guardedValue = map['livenessProbe']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProbePatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ports: (() { final guardedValue = map['ports']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ContainerPortPatch>(guardedValue, (value) => ContainerPortPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      readinessProbe: (() { final guardedValue = map['readinessProbe']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProbePatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resizePolicy: (() { final guardedValue = map['resizePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ContainerResizePolicyPatch>(guardedValue, (value) => ContainerResizePolicyPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceRequirementsPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      restartPolicy: (() { final guardedValue = map['restartPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      restartPolicyRules: (() { final guardedValue = map['restartPolicyRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ContainerRestartRulePatch>(guardedValue, (value) => ContainerRestartRulePatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      securityContext: (() { final guardedValue = map['securityContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityContextPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      startupProbe: (() { final guardedValue = map['startupProbe']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProbePatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      stdin: (() { final guardedValue = map['stdin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      stdinOnce: (() { final guardedValue = map['stdinOnce']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      targetContainerName: (() { final guardedValue = map['targetContainerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      terminationMessagePath: (() { final guardedValue = map['terminationMessagePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      terminationMessagePolicy: (() { final guardedValue = map['terminationMessagePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tty: (() { final guardedValue = map['tty']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      volumeDevices: (() { final guardedValue = map['volumeDevices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VolumeDevicePatch>(guardedValue, (value) => VolumeDevicePatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      volumeMounts: (() { final guardedValue = map['volumeMounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VolumeMountPatch>(guardedValue, (value) => VolumeMountPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      workingDir: (() { final guardedValue = map['workingDir']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

