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

/// A single application container that you want to run within a pod.
class ContainerPatch {
  /// Arguments to the entrypoint. The container image's CMD is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. "$$(VAR_NAME)" will produce the string literal "$(VAR_NAME)". Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell
  final List<String>? args;
  /// Entrypoint array. Not executed within a shell. The container image's ENTRYPOINT is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. "$$(VAR_NAME)" will produce the string literal "$(VAR_NAME)". Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell
  final List<String>? command;
  /// List of environment variables to set in the container. Cannot be updated.
  final List<EnvVarPatch>? env;
  /// List of sources to populate environment variables in the container. The keys defined within a source may consist of any printable ASCII characters except '='. When a key exists in multiple sources, the value associated with the last source will take precedence. Values defined by an Env with a duplicate key will take precedence. Cannot be updated.
  final List<EnvFromSourcePatch>? envFrom;
  /// Container image name. More info: https://kubernetes.io/docs/concepts/containers/images This field is optional to allow higher level config management to default or override container images in workload controllers like Deployments and StatefulSets.
  final String? image;
  /// Image pull policy. One of Always, Never, IfNotPresent. Defaults to Always if :latest tag is specified, or IfNotPresent otherwise. Cannot be updated. More info: https://kubernetes.io/docs/concepts/containers/images#updating-images
  final String? imagePullPolicy;
  /// Actions that the management system should take in response to container lifecycle events. Cannot be updated.
  final LifecyclePatch? lifecycle;
  /// Periodic probe of container liveness. Container will be restarted if the probe fails. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  final ProbePatch? livenessProbe;
  /// Name of the container specified as a DNS_LABEL. Each container in a pod must have a unique name (DNS_LABEL). Cannot be updated.
  final String? name;
  /// List of ports to expose from the container. Not specifying a port here DOES NOT prevent that port from being exposed. Any port which is listening on the default "0.0.0.0" address inside a container will be accessible from the network. Modifying this array with strategic merge patch may corrupt the data. For more information See https://github.com/kubernetes/kubernetes/issues/108255. Cannot be updated.
  final List<ContainerPortPatch>? ports;
  /// Periodic probe of container service readiness. Container will be removed from service endpoints if the probe fails. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  final ProbePatch? readinessProbe;
  /// Resources resize policy for the container. This field cannot be set on ephemeral containers.
  final List<ContainerResizePolicyPatch>? resizePolicy;
  /// Compute Resources required by this container. Cannot be updated. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
  final ResourceRequirementsPatch? resources;
  /// RestartPolicy defines the restart behavior of individual containers in a pod. This overrides the pod-level restart policy. When this field is not specified, the restart behavior is defined by the Pod's restart policy and the container type. Additionally, setting the RestartPolicy as "Always" for the init container will have the following effect: this init container will be continually restarted on exit until all regular containers have terminated. Once all regular containers have completed, all init containers with restartPolicy "Always" will be shut down. This lifecycle differs from normal init containers and is often referred to as a "sidecar" container. Although this init container still starts in the init container sequence, it does not wait for the container to complete before proceeding to the next init container. Instead, the next init container starts immediately after this init container is started, or after any startupProbe has successfully completed.
  final String? restartPolicy;
  /// Represents a list of rules to be checked to determine if the container should be restarted on exit. The rules are evaluated in order. Once a rule matches a container exit condition, the remaining rules are ignored. If no rule matches the container exit condition, the Container-level restart policy determines the whether the container is restarted or not. Constraints on the rules: - At most 20 rules are allowed. - Rules can have the same action. - Identical rules are not forbidden in validations. When rules are specified, container MUST set RestartPolicy explicitly even it if matches the Pod's RestartPolicy.
  final List<ContainerRestartRulePatch>? restartPolicyRules;
  /// SecurityContext defines the security options the container should be run with. If set, the fields of SecurityContext override the equivalent fields of PodSecurityContext. More info: https://kubernetes.io/docs/tasks/configure-pod-container/security-context/
  final SecurityContextPatch? securityContext;
  /// StartupProbe indicates that the Pod has successfully initialized. If specified, no other probes are executed until this completes successfully. If this probe fails, the Pod will be restarted, just as if the livenessProbe failed. This can be used to provide different probe parameters at the beginning of a Pod's lifecycle, when it might take a long time to load data or warm a cache, than during steady-state operation. This cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  final ProbePatch? startupProbe;
  /// Whether this container should allocate a buffer for stdin in the container runtime. If this is not set, reads from stdin in the container will always result in EOF. Default is false.
  final bool? stdin;
  /// Whether the container runtime should close the stdin channel after it has been opened by a single attach. When stdin is true the stdin stream will remain open across multiple attach sessions. If stdinOnce is set to true, stdin is opened on container start, is empty until the first client attaches to stdin, and then remains open and accepts data until the client disconnects, at which time stdin is closed and remains closed until the container is restarted. If this flag is false, a container processes that reads from stdin will never receive an EOF. Default is false
  final bool? stdinOnce;
  /// Optional: Path at which the file to which the container's termination message will be written is mounted into the container's filesystem. Message written is intended to be brief final status, such as an assertion failure message. Will be truncated by the node if greater than 4096 bytes. The total message length across all containers will be limited to 12kb. Defaults to /dev/termination-log. Cannot be updated.
  final String? terminationMessagePath;
  /// Indicate how the termination message should be populated. File will use the contents of terminationMessagePath to populate the container status message on both success and failure. FallbackToLogsOnError will use the last chunk of container log output if the termination message file is empty and the container exited with an error. The log output is limited to 2048 bytes or 80 lines, whichever is smaller. Defaults to File. Cannot be updated.
  final String? terminationMessagePolicy;
  /// Whether this container should allocate a TTY for itself, also requires 'stdin' to be true. Default is false.
  final bool? tty;
  /// volumeDevices is the list of block devices to be used by the container.
  final List<VolumeDevicePatch>? volumeDevices;
  /// Pod volumes to mount into the container's filesystem. Cannot be updated.
  final List<VolumeMountPatch>? volumeMounts;
  /// Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image. Cannot be updated.
  final String? workingDir;

  /// Creates a new [ContainerPatch].
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
  ContainerPatch({
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
      'env': ?env == null ? null : pulumi.Input.encodeList<EnvVarPatch, Map<String, dynamic>>(env!, (value) => value.toMap()),
      'envFrom': ?envFrom == null ? null : pulumi.Input.encodeList<EnvFromSourcePatch, Map<String, dynamic>>(envFrom!, (value) => value.toMap()),
      'image': ?image,
      'imagePullPolicy': ?imagePullPolicy,
      'lifecycle': ?lifecycle == null ? null : lifecycle!.toMap(),
      'livenessProbe': ?livenessProbe == null ? null : livenessProbe!.toMap(),
      'name': ?name,
      'ports': ?ports == null ? null : pulumi.Input.encodeList<ContainerPortPatch, Map<String, dynamic>>(ports!, (value) => value.toMap()),
      'readinessProbe': ?readinessProbe == null ? null : readinessProbe!.toMap(),
      'resizePolicy': ?resizePolicy == null ? null : pulumi.Input.encodeList<ContainerResizePolicyPatch, Map<String, dynamic>>(resizePolicy!, (value) => value.toMap()),
      'resources': ?resources == null ? null : resources!.toMap(),
      'restartPolicy': ?restartPolicy,
      'restartPolicyRules': ?restartPolicyRules == null ? null : pulumi.Input.encodeList<ContainerRestartRulePatch, Map<String, dynamic>>(restartPolicyRules!, (value) => value.toMap()),
      'securityContext': ?securityContext == null ? null : securityContext!.toMap(),
      'startupProbe': ?startupProbe == null ? null : startupProbe!.toMap(),
      'stdin': ?stdin,
      'stdinOnce': ?stdinOnce,
      'terminationMessagePath': ?terminationMessagePath,
      'terminationMessagePolicy': ?terminationMessagePolicy,
      'tty': ?tty,
      'volumeDevices': ?volumeDevices == null ? null : pulumi.Input.encodeList<VolumeDevicePatch, Map<String, dynamic>>(volumeDevices!, (value) => value.toMap()),
      'volumeMounts': ?volumeMounts == null ? null : pulumi.Input.encodeList<VolumeMountPatch, Map<String, dynamic>>(volumeMounts!, (value) => value.toMap()),
      'workingDir': ?workingDir,
    };
  }

  factory ContainerPatch.fromMap(Map<String, dynamic> map) {
    return ContainerPatch(
      args: map['args'] == null ? null : (map['args'] as List).cast<String>(),
      command: map['command'] == null ? null : (map['command'] as List).cast<String>(),
      env: map['env'] == null ? null : pulumi.Input.decodeList<EnvVarPatch>(map['env'], (value) => EnvVarPatch.fromMap((value as Map).cast<String, dynamic>())),
      envFrom: map['envFrom'] == null ? null : pulumi.Input.decodeList<EnvFromSourcePatch>(map['envFrom'], (value) => EnvFromSourcePatch.fromMap((value as Map).cast<String, dynamic>())),
      image: map['image'] == null ? null : map['image'] as String,
      imagePullPolicy: map['imagePullPolicy'] == null ? null : map['imagePullPolicy'] as String,
      lifecycle: map['lifecycle'] == null ? null : LifecyclePatch.fromMap((map['lifecycle'] as Map).cast<String, dynamic>()),
      livenessProbe: map['livenessProbe'] == null ? null : ProbePatch.fromMap((map['livenessProbe'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      ports: map['ports'] == null ? null : pulumi.Input.decodeList<ContainerPortPatch>(map['ports'], (value) => ContainerPortPatch.fromMap((value as Map).cast<String, dynamic>())),
      readinessProbe: map['readinessProbe'] == null ? null : ProbePatch.fromMap((map['readinessProbe'] as Map).cast<String, dynamic>()),
      resizePolicy: map['resizePolicy'] == null ? null : pulumi.Input.decodeList<ContainerResizePolicyPatch>(map['resizePolicy'], (value) => ContainerResizePolicyPatch.fromMap((value as Map).cast<String, dynamic>())),
      resources: map['resources'] == null ? null : ResourceRequirementsPatch.fromMap((map['resources'] as Map).cast<String, dynamic>()),
      restartPolicy: map['restartPolicy'] == null ? null : map['restartPolicy'] as String,
      restartPolicyRules: map['restartPolicyRules'] == null ? null : pulumi.Input.decodeList<ContainerRestartRulePatch>(map['restartPolicyRules'], (value) => ContainerRestartRulePatch.fromMap((value as Map).cast<String, dynamic>())),
      securityContext: map['securityContext'] == null ? null : SecurityContextPatch.fromMap((map['securityContext'] as Map).cast<String, dynamic>()),
      startupProbe: map['startupProbe'] == null ? null : ProbePatch.fromMap((map['startupProbe'] as Map).cast<String, dynamic>()),
      stdin: map['stdin'] == null ? null : map['stdin'] as bool,
      stdinOnce: map['stdinOnce'] == null ? null : map['stdinOnce'] as bool,
      terminationMessagePath: map['terminationMessagePath'] == null ? null : map['terminationMessagePath'] as String,
      terminationMessagePolicy: map['terminationMessagePolicy'] == null ? null : map['terminationMessagePolicy'] as String,
      tty: map['tty'] == null ? null : map['tty'] as bool,
      volumeDevices: map['volumeDevices'] == null ? null : pulumi.Input.decodeList<VolumeDevicePatch>(map['volumeDevices'], (value) => VolumeDevicePatch.fromMap((value as Map).cast<String, dynamic>())),
      volumeMounts: map['volumeMounts'] == null ? null : pulumi.Input.decodeList<VolumeMountPatch>(map['volumeMounts'], (value) => VolumeMountPatch.fromMap((value as Map).cast<String, dynamic>())),
      workingDir: map['workingDir'] == null ? null : map['workingDir'] as String,
    );
  }
}

