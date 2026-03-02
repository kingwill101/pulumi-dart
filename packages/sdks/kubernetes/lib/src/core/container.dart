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

/// A single application container that you want to run within a pod.
class Container {
  /// Arguments to the entrypoint. The container image's CMD is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. "$$(VAR_NAME)" will produce the string literal "$(VAR_NAME)". Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell
  final pulumi.Input<List<String>>? args;
  /// Entrypoint array. Not executed within a shell. The container image's ENTRYPOINT is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. "$$(VAR_NAME)" will produce the string literal "$(VAR_NAME)". Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell
  final pulumi.Input<List<String>>? command;
  /// List of environment variables to set in the container. Cannot be updated.
  final pulumi.Input<List<EnvVar>>? env;
  /// List of sources to populate environment variables in the container. The keys defined within a source may consist of any printable ASCII characters except '='. When a key exists in multiple sources, the value associated with the last source will take precedence. Values defined by an Env with a duplicate key will take precedence. Cannot be updated.
  final pulumi.Input<List<EnvFromSource>>? envFrom;
  /// Container image name. More info: https://kubernetes.io/docs/concepts/containers/images This field is optional to allow higher level config management to default or override container images in workload controllers like Deployments and StatefulSets.
  final pulumi.Input<String>? image;
  /// Image pull policy. One of Always, Never, IfNotPresent. Defaults to Always if :latest tag is specified, or IfNotPresent otherwise. Cannot be updated. More info: https://kubernetes.io/docs/concepts/containers/images#updating-images
  final pulumi.Input<String>? imagePullPolicy;
  /// Actions that the management system should take in response to container lifecycle events. Cannot be updated.
  final pulumi.Input<Lifecycle>? lifecycle;
  /// Periodic probe of container liveness. Container will be restarted if the probe fails. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  final pulumi.Input<Probe>? livenessProbe;
  /// Name of the container specified as a DNS_LABEL. Each container in a pod must have a unique name (DNS_LABEL). Cannot be updated.
  final pulumi.Input<String> name;
  /// List of ports to expose from the container. Not specifying a port here DOES NOT prevent that port from being exposed. Any port which is listening on the default "0.0.0.0" address inside a container will be accessible from the network. Modifying this array with strategic merge patch may corrupt the data. For more information See https://github.com/kubernetes/kubernetes/issues/108255. Cannot be updated.
  final pulumi.Input<List<ContainerPort>>? ports;
  /// Periodic probe of container service readiness. Container will be removed from service endpoints if the probe fails. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  final pulumi.Input<Probe>? readinessProbe;
  /// Resources resize policy for the container. This field cannot be set on ephemeral containers.
  final pulumi.Input<List<ContainerResizePolicy>>? resizePolicy;
  /// Compute Resources required by this container. Cannot be updated. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
  final pulumi.Input<ResourceRequirements>? resources;
  /// RestartPolicy defines the restart behavior of individual containers in a pod. This overrides the pod-level restart policy. When this field is not specified, the restart behavior is defined by the Pod's restart policy and the container type. Additionally, setting the RestartPolicy as "Always" for the init container will have the following effect: this init container will be continually restarted on exit until all regular containers have terminated. Once all regular containers have completed, all init containers with restartPolicy "Always" will be shut down. This lifecycle differs from normal init containers and is often referred to as a "sidecar" container. Although this init container still starts in the init container sequence, it does not wait for the container to complete before proceeding to the next init container. Instead, the next init container starts immediately after this init container is started, or after any startupProbe has successfully completed.
  final pulumi.Input<String>? restartPolicy;
  /// Represents a list of rules to be checked to determine if the container should be restarted on exit. The rules are evaluated in order. Once a rule matches a container exit condition, the remaining rules are ignored. If no rule matches the container exit condition, the Container-level restart policy determines the whether the container is restarted or not. Constraints on the rules: - At most 20 rules are allowed. - Rules can have the same action. - Identical rules are not forbidden in validations. When rules are specified, container MUST set RestartPolicy explicitly even it if matches the Pod's RestartPolicy.
  final pulumi.Input<List<ContainerRestartRule>>? restartPolicyRules;
  /// SecurityContext defines the security options the container should be run with. If set, the fields of SecurityContext override the equivalent fields of PodSecurityContext. More info: https://kubernetes.io/docs/tasks/configure-pod-container/security-context/
  final pulumi.Input<SecurityContext>? securityContext;
  /// StartupProbe indicates that the Pod has successfully initialized. If specified, no other probes are executed until this completes successfully. If this probe fails, the Pod will be restarted, just as if the livenessProbe failed. This can be used to provide different probe parameters at the beginning of a Pod's lifecycle, when it might take a long time to load data or warm a cache, than during steady-state operation. This cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  final pulumi.Input<Probe>? startupProbe;
  /// Whether this container should allocate a buffer for stdin in the container runtime. If this is not set, reads from stdin in the container will always result in EOF. Default is false.
  final pulumi.Input<bool>? stdin;
  /// Whether the container runtime should close the stdin channel after it has been opened by a single attach. When stdin is true the stdin stream will remain open across multiple attach sessions. If stdinOnce is set to true, stdin is opened on container start, is empty until the first client attaches to stdin, and then remains open and accepts data until the client disconnects, at which time stdin is closed and remains closed until the container is restarted. If this flag is false, a container processes that reads from stdin will never receive an EOF. Default is false
  final pulumi.Input<bool>? stdinOnce;
  /// Optional: Path at which the file to which the container's termination message will be written is mounted into the container's filesystem. Message written is intended to be brief final status, such as an assertion failure message. Will be truncated by the node if greater than 4096 bytes. The total message length across all containers will be limited to 12kb. Defaults to /dev/termination-log. Cannot be updated.
  final pulumi.Input<String>? terminationMessagePath;
  /// Indicate how the termination message should be populated. File will use the contents of terminationMessagePath to populate the container status message on both success and failure. FallbackToLogsOnError will use the last chunk of container log output if the termination message file is empty and the container exited with an error. The log output is limited to 2048 bytes or 80 lines, whichever is smaller. Defaults to File. Cannot be updated.
  final pulumi.Input<String>? terminationMessagePolicy;
  /// Whether this container should allocate a TTY for itself, also requires 'stdin' to be true. Default is false.
  final pulumi.Input<bool>? tty;
  /// volumeDevices is the list of block devices to be used by the container.
  final pulumi.Input<List<VolumeDevice>>? volumeDevices;
  /// Pod volumes to mount into the container's filesystem. Cannot be updated.
  final pulumi.Input<List<VolumeMount>>? volumeMounts;
  /// Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image. Cannot be updated.
  final pulumi.Input<String>? workingDir;

  /// Creates a new [Container].
  /// [args] Arguments to the entrypoint. The container image's CMD is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. "$$(VAR_NAME)" will produce the string literal "$(VAR_NAME)". Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell
  /// [command] Entrypoint array. Not executed within a shell. The container image's ENTRYPOINT is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. "$$(VAR_NAME)" will produce the string literal "$(VAR_NAME)". Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell
  /// [env] List of environment variables to set in the container. Cannot be updated.
  /// [envFrom] List of sources to populate environment variables in the container. The keys defined within a source may consist of any printable ASCII characters except '='. When a key exists in multiple sources, the value associated with the last source will take precedence. Values defined by an Env with a duplicate key will take precedence. Cannot be updated.
  /// [image] Container image name. More info: https://kubernetes.io/docs/concepts/containers/images This field is optional to allow higher level config management to default or override container images in workload controllers like Deployments and StatefulSets.
  /// [imagePullPolicy] Image pull policy. One of Always, Never, IfNotPresent. Defaults to Always if :latest tag is specified, or IfNotPresent otherwise. Cannot be updated. More info: https://kubernetes.io/docs/concepts/containers/images#updating-images
  /// [lifecycle] Actions that the management system should take in response to container lifecycle events. Cannot be updated.
  /// [livenessProbe] Periodic probe of container liveness. Container will be restarted if the probe fails. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  /// [name] Name of the container specified as a DNS_LABEL. Each container in a pod must have a unique name (DNS_LABEL). Cannot be updated.
  /// [ports] List of ports to expose from the container. Not specifying a port here DOES NOT prevent that port from being exposed. Any port which is listening on the default "0.0.0.0" address inside a container will be accessible from the network. Modifying this array with strategic merge patch may corrupt the data. For more information See https://github.com/kubernetes/kubernetes/issues/108255. Cannot be updated.
  /// [readinessProbe] Periodic probe of container service readiness. Container will be removed from service endpoints if the probe fails. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  /// [resizePolicy] Resources resize policy for the container. This field cannot be set on ephemeral containers.
  /// [resources] Compute Resources required by this container. Cannot be updated. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
  /// [restartPolicy] RestartPolicy defines the restart behavior of individual containers in a pod. This overrides the pod-level restart policy. When this field is not specified, the restart behavior is defined by the Pod's restart policy and the container type. Additionally, setting the RestartPolicy as "Always" for the init container will have the following effect: this init container will be continually restarted on exit until all regular containers have terminated. Once all regular containers have completed, all init containers with restartPolicy "Always" will be shut down. This lifecycle differs from normal init containers and is often referred to as a "sidecar" container. Although this init container still starts in the init container sequence, it does not wait for the container to complete before proceeding to the next init container. Instead, the next init container starts immediately after this init container is started, or after any startupProbe has successfully completed.
  /// [restartPolicyRules] Represents a list of rules to be checked to determine if the container should be restarted on exit. The rules are evaluated in order. Once a rule matches a container exit condition, the remaining rules are ignored. If no rule matches the container exit condition, the Container-level restart policy determines the whether the container is restarted or not. Constraints on the rules: - At most 20 rules are allowed. - Rules can have the same action. - Identical rules are not forbidden in validations. When rules are specified, container MUST set RestartPolicy explicitly even it if matches the Pod's RestartPolicy.
  /// [securityContext] SecurityContext defines the security options the container should be run with. If set, the fields of SecurityContext override the equivalent fields of PodSecurityContext. More info: https://kubernetes.io/docs/tasks/configure-pod-container/security-context/
  /// [startupProbe] StartupProbe indicates that the Pod has successfully initialized. If specified, no other probes are executed until this completes successfully. If this probe fails, the Pod will be restarted, just as if the livenessProbe failed. This can be used to provide different probe parameters at the beginning of a Pod's lifecycle, when it might take a long time to load data or warm a cache, than during steady-state operation. This cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  /// [stdin] Whether this container should allocate a buffer for stdin in the container runtime. If this is not set, reads from stdin in the container will always result in EOF. Default is false.
  /// [stdinOnce] Whether the container runtime should close the stdin channel after it has been opened by a single attach. When stdin is true the stdin stream will remain open across multiple attach sessions. If stdinOnce is set to true, stdin is opened on container start, is empty until the first client attaches to stdin, and then remains open and accepts data until the client disconnects, at which time stdin is closed and remains closed until the container is restarted. If this flag is false, a container processes that reads from stdin will never receive an EOF. Default is false
  /// [terminationMessagePath] Optional: Path at which the file to which the container's termination message will be written is mounted into the container's filesystem. Message written is intended to be brief final status, such as an assertion failure message. Will be truncated by the node if greater than 4096 bytes. The total message length across all containers will be limited to 12kb. Defaults to /dev/termination-log. Cannot be updated.
  /// [terminationMessagePolicy] Indicate how the termination message should be populated. File will use the contents of terminationMessagePath to populate the container status message on both success and failure. FallbackToLogsOnError will use the last chunk of container log output if the termination message file is empty and the container exited with an error. The log output is limited to 2048 bytes or 80 lines, whichever is smaller. Defaults to File. Cannot be updated.
  /// [tty] Whether this container should allocate a TTY for itself, also requires 'stdin' to be true. Default is false.
  /// [volumeDevices] volumeDevices is the list of block devices to be used by the container.
  /// [volumeMounts] Pod volumes to mount into the container's filesystem. Cannot be updated.
  /// [workingDir] Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image. Cannot be updated.
  Container({
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
      'terminationMessagePath': ?terminationMessagePath,
      'terminationMessagePolicy': ?terminationMessagePolicy,
      'tty': ?tty,
      'volumeDevices': ?pulumi.Input.mapOptionalInputValue<List<VolumeDevice>, List<Map<String, dynamic>>>(volumeDevices, (value) => pulumi.Input.encodeList<VolumeDevice, Map<String, dynamic>>(value, (value) => value.toMap())),
      'volumeMounts': ?pulumi.Input.mapOptionalInputValue<List<VolumeMount>, List<Map<String, dynamic>>>(volumeMounts, (value) => pulumi.Input.encodeList<VolumeMount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'workingDir': ?workingDir,
    };
  }

  factory Container.fromMap(Map<String, dynamic> map) {
    return Container(
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
      terminationMessagePath: map['terminationMessagePath'] == null ? null : (map['terminationMessagePath']! as String).input(),
      terminationMessagePolicy: map['terminationMessagePolicy'] == null ? null : (map['terminationMessagePolicy']! as String).input(),
      tty: map['tty'] == null ? null : (map['tty']! as bool).input(),
      volumeDevices: map['volumeDevices'] == null ? null : (pulumi.Input.decodeList<VolumeDevice>(map['volumeDevices']!, (value) => VolumeDevice.fromMap((value as Map).cast<String, dynamic>()))).input(),
      volumeMounts: map['volumeMounts'] == null ? null : (pulumi.Input.decodeList<VolumeMount>(map['volumeMounts']!, (value) => VolumeMount.fromMap((value as Map).cast<String, dynamic>()))).input(),
      workingDir: map['workingDir'] == null ? null : (map['workingDir']! as String).input(),
    );
  }
}

