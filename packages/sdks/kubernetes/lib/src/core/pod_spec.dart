// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'affinity.dart';
import 'container.dart';
import 'ephemeral_container.dart';
import 'host_alias.dart';
import 'local_object_reference.dart';
import 'pod_dnsconfig.dart';
import 'pod_os.dart';
import 'pod_readiness_gate.dart';
import 'pod_resource_claim.dart';
import 'pod_scheduling_gate.dart';
import 'pod_security_context.dart';
import 'resource_requirements.dart';
import 'toleration.dart';
import 'topology_spread_constraint.dart';
import 'volume.dart';
import 'workload_reference.dart';

/// PodSpec is a description of a pod.
class PodSpec {
  /// Optional duration in seconds the pod may be active on the node relative to StartTime before the system will actively try to mark it failed and kill associated containers. Value must be a positive integer.
  final int? activeDeadlineSeconds;
  /// If specified, the pod's scheduling constraints
  final Affinity? affinity;
  /// AutomountServiceAccountToken indicates whether a service account token should be automatically mounted.
  final bool? automountServiceAccountToken;
  /// List of containers belonging to the pod. Containers cannot currently be added or removed. There must be at least one container in a Pod. Cannot be updated.
  final List<Container> containers;
  /// Specifies the DNS parameters of a pod. Parameters specified here will be merged to the generated DNS configuration based on DNSPolicy.
  final PodDNSConfig? dnsConfig;
  /// Set DNS policy for the pod. Defaults to "ClusterFirst". Valid values are 'ClusterFirstWithHostNet', 'ClusterFirst', 'Default' or 'None'. DNS parameters given in DNSConfig will be merged with the policy selected with DNSPolicy. To have DNS options set along with hostNetwork, you have to specify DNS policy explicitly to 'ClusterFirstWithHostNet'.
  final String? dnsPolicy;
  /// EnableServiceLinks indicates whether information about services should be injected into pod's environment variables, matching the syntax of Docker links. Optional: Defaults to true.
  final bool? enableServiceLinks;
  /// List of ephemeral containers run in this pod. Ephemeral containers may be run in an existing pod to perform user-initiated actions such as debugging. This list cannot be specified when creating a pod, and it cannot be modified by updating the pod spec. In order to add an ephemeral container to an existing pod, use the pod's ephemeralcontainers subresource.
  final List<EphemeralContainer>? ephemeralContainers;
  /// HostAliases is an optional list of hosts and IPs that will be injected into the pod's hosts file if specified.
  final List<HostAlias>? hostAliases;
  /// Use the host's ipc namespace. Optional: Default to false.
  final bool? hostIPC;
  /// Host networking requested for this pod. Use the host's network namespace. When using HostNetwork you should specify ports so the scheduler is aware. When `hostNetwork` is true, specified `hostPort` fields in port definitions must match `containerPort`, and unspecified `hostPort` fields in port definitions are defaulted to match `containerPort`. Default to false.
  final bool? hostNetwork;
  /// Use the host's pid namespace. Optional: Default to false.
  final bool? hostPID;
  /// Use the host's user namespace. Optional: Default to true. If set to true or not present, the pod will be run in the host user namespace, useful for when the pod needs a feature only available to the host user namespace, such as loading a kernel module with CAP_SYS_MODULE. When set to false, a new userns is created for the pod. Setting false is useful for mitigating container breakout vulnerabilities even allowing users to run their containers as root without actually having root privileges on the host. This field is alpha-level and is only honored by servers that enable the UserNamespacesSupport feature.
  final bool? hostUsers;
  /// Specifies the hostname of the Pod If not specified, the pod's hostname will be set to a system-defined value.
  final String? hostname;
  /// HostnameOverride specifies an explicit override for the pod's hostname as perceived by the pod. This field only specifies the pod's hostname and does not affect its DNS records. When this field is set to a non-empty string: - It takes precedence over the values set in `hostname` and `subdomain`. - The Pod's hostname will be set to this value. - `setHostnameAsFQDN` must be nil or set to false. - `hostNetwork` must be set to false.
  ///
  /// This field must be a valid DNS subdomain as defined in RFC 1123 and contain at most 64 characters. Requires the HostnameOverride feature gate to be enabled.
  final String? hostnameOverride;
  /// ImagePullSecrets is an optional list of references to secrets in the same namespace to use for pulling any of the images used by this PodSpec. If specified, these secrets will be passed to individual puller implementations for them to use. More info: https://kubernetes.io/docs/concepts/containers/images#specifying-imagepullsecrets-on-a-pod
  final List<LocalObjectReference>? imagePullSecrets;
  /// List of initialization containers belonging to the pod. Init containers are executed in order prior to containers being started. If any init container fails, the pod is considered to have failed and is handled according to its restartPolicy. The name for an init container or normal container must be unique among all containers. Init containers may not have Lifecycle actions, Readiness probes, Liveness probes, or Startup probes. The resourceRequirements of an init container are taken into account during scheduling by finding the highest request/limit for each resource type, and then using the max of that value or the sum of the normal containers. Limits are applied to init containers in a similar fashion. Init containers cannot currently be added or removed. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/init-containers/
  final List<Container>? initContainers;
  /// NodeName indicates in which node this pod is scheduled. If empty, this pod is a candidate for scheduling by the scheduler defined in schedulerName. Once this field is set, the kubelet for this node becomes responsible for the lifecycle of this pod. This field should not be used to express a desire for the pod to be scheduled on a specific node. https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#nodename
  final String? nodeName;
  /// NodeSelector is a selector which must be true for the pod to fit on a node. Selector which must match a node's labels for the pod to be scheduled on that node. More info: https://kubernetes.io/docs/concepts/configuration/assign-pod-node/
  final Map<String, String>? nodeSelector;
  /// Specifies the OS of the containers in the pod. Some pod and container fields are restricted if this is set.
  ///
  /// If the OS field is set to linux, the following fields must be unset: -securityContext.windowsOptions
  ///
  /// If the OS field is set to windows, following fields must be unset: - spec.hostPID - spec.hostIPC - spec.hostUsers - spec.resources - spec.securityContext.appArmorProfile - spec.securityContext.seLinuxOptions - spec.securityContext.seccompProfile - spec.securityContext.fsGroup - spec.securityContext.fsGroupChangePolicy - spec.securityContext.sysctls - spec.shareProcessNamespace - spec.securityContext.runAsUser - spec.securityContext.runAsGroup - spec.securityContext.supplementalGroups - spec.securityContext.supplementalGroupsPolicy - spec.containers[*].securityContext.appArmorProfile - spec.containers[*].securityContext.seLinuxOptions - spec.containers[*].securityContext.seccompProfile - spec.containers[*].securityContext.capabilities - spec.containers[*].securityContext.readOnlyRootFilesystem - spec.containers[*].securityContext.privileged - spec.containers[*].securityContext.allowPrivilegeEscalation - spec.containers[*].securityContext.procMount - spec.containers[*].securityContext.runAsUser - spec.containers[*].securityContext.runAsGroup
  final PodOS? os;
  /// Overhead represents the resource overhead associated with running a pod for a given RuntimeClass. This field will be autopopulated at admission time by the RuntimeClass admission controller. If the RuntimeClass admission controller is enabled, overhead must not be set in Pod create requests. The RuntimeClass admission controller will reject Pod create requests which have the overhead already set. If RuntimeClass is configured and selected in the PodSpec, Overhead will be set to the value defined in the corresponding RuntimeClass, otherwise it will remain unset and treated as zero. More info: https://git.k8s.io/enhancements/keps/sig-node/688-pod-overhead/README.md
  final Map<String, String>? overhead;
  /// PreemptionPolicy is the Policy for preempting pods with lower priority. One of Never, PreemptLowerPriority. Defaults to PreemptLowerPriority if unset.
  final String? preemptionPolicy;
  /// The priority value. Various system components use this field to find the priority of the pod. When Priority Admission Controller is enabled, it prevents users from setting this field. The admission controller populates this field from PriorityClassName. The higher the value, the higher the priority.
  final int? priority;
  /// If specified, indicates the pod's priority. "system-node-critical" and "system-cluster-critical" are two special keywords which indicate the highest priorities with the former being the highest priority. Any other name must be defined by creating a PriorityClass object with that name. If not specified, the pod priority will be default or zero if there is no default.
  final String? priorityClassName;
  /// If specified, all readiness gates will be evaluated for pod readiness. A pod is ready when all its containers are ready AND all conditions specified in the readiness gates have status equal to "True" More info: https://git.k8s.io/enhancements/keps/sig-network/580-pod-readiness-gates
  final List<PodReadinessGate>? readinessGates;
  /// ResourceClaims defines which ResourceClaims must be allocated and reserved before the Pod is allowed to start. The resources will be made available to those containers which consume them by name.
  ///
  /// This is a stable field but requires that the DynamicResourceAllocation feature gate is enabled.
  ///
  /// This field is immutable.
  final List<PodResourceClaim>? resourceClaims;
  /// Resources is the total amount of CPU and Memory resources required by all containers in the pod. It supports specifying Requests and Limits for "cpu", "memory" and "hugepages-" resource names only. ResourceClaims are not supported.
  ///
  /// This field enables fine-grained control over resource allocation for the entire pod, allowing resource sharing among containers in a pod.
  ///
  /// This is an alpha field and requires enabling the PodLevelResources feature gate.
  final ResourceRequirements? resources;
  /// Restart policy for all containers within the pod. One of Always, OnFailure, Never. In some contexts, only a subset of those values may be permitted. Default to Always. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#restart-policy
  final String? restartPolicy;
  /// RuntimeClassName refers to a RuntimeClass object in the node.k8s.io group, which should be used to run this pod.  If no RuntimeClass resource matches the named class, the pod will not be run. If unset or empty, the "legacy" RuntimeClass will be used, which is an implicit class with an empty definition that uses the default runtime handler. More info: https://git.k8s.io/enhancements/keps/sig-node/585-runtime-class
  final String? runtimeClassName;
  /// If specified, the pod will be dispatched by specified scheduler. If not specified, the pod will be dispatched by default scheduler.
  final String? schedulerName;
  /// SchedulingGates is an opaque list of values that if specified will block scheduling the pod. If schedulingGates is not empty, the pod will stay in the SchedulingGated state and the scheduler will not attempt to schedule the pod.
  ///
  /// SchedulingGates can only be set at pod creation time, and be removed only afterwards.
  final List<PodSchedulingGate>? schedulingGates;
  /// SecurityContext holds pod-level security attributes and common container settings. Optional: Defaults to empty.  See type description for default values of each field.
  final PodSecurityContext? securityContext;
  /// DeprecatedServiceAccount is a deprecated alias for ServiceAccountName. Deprecated: Use serviceAccountName instead.
  final String? serviceAccount;
  /// ServiceAccountName is the name of the ServiceAccount to use to run this pod. More info: https://kubernetes.io/docs/tasks/configure-pod-container/configure-service-account/
  final String? serviceAccountName;
  /// If true the pod's hostname will be configured as the pod's FQDN, rather than the leaf name (the default). In Linux containers, this means setting the FQDN in the hostname field of the kernel (the nodename field of struct utsname). In Windows containers, this means setting the registry value of hostname for the registry key HKEY_LOCAL_MACHINE\\SYSTEM\\CurrentControlSet\\Services\\Tcpip\\Parameters to FQDN. If a pod does not have FQDN, this has no effect. Default to false.
  final bool? setHostnameAsFQDN;
  /// Share a single process namespace between all of the containers in a pod. When this is set containers will be able to view and signal processes from other containers in the same pod, and the first process in each container will not be assigned PID 1. HostPID and ShareProcessNamespace cannot both be set. Optional: Default to false.
  final bool? shareProcessNamespace;
  /// If specified, the fully qualified Pod hostname will be "<hostname>.<subdomain>.<pod namespace>.svc.<cluster domain>". If not specified, the pod will not have a domainname at all.
  final String? subdomain;
  /// Optional duration in seconds the pod needs to terminate gracefully. May be decreased in delete request. Value must be non-negative integer. The value zero indicates stop immediately via the kill signal (no opportunity to shut down). If this value is nil, the default grace period will be used instead. The grace period is the duration in seconds after the processes running in the pod are sent a termination signal and the time when the processes are forcibly halted with a kill signal. Set this value longer than the expected cleanup time for your process. Defaults to 30 seconds.
  final int? terminationGracePeriodSeconds;
  /// If specified, the pod's tolerations.
  final List<Toleration>? tolerations;
  /// TopologySpreadConstraints describes how a group of pods ought to spread across topology domains. Scheduler will schedule pods in a way which abides by the constraints. All topologySpreadConstraints are ANDed.
  final List<TopologySpreadConstraint>? topologySpreadConstraints;
  /// List of volumes that can be mounted by containers belonging to the pod. More info: https://kubernetes.io/docs/concepts/storage/volumes
  final List<Volume>? volumes;
  /// WorkloadRef provides a reference to the Workload object that this Pod belongs to. This field is used by the scheduler to identify the PodGroup and apply the correct group scheduling policies. The Workload object referenced by this field may not exist at the time the Pod is created. This field is immutable, but a Workload object with the same name may be recreated with different policies. Doing this during pod scheduling may result in the placement not conforming to the expected policies.
  final WorkloadReference? workloadRef;

  /// Creates a new [PodSpec].
  /// [activeDeadlineSeconds] Optional duration in seconds the pod may be active on the node relative to StartTime before the system will actively try to mark it failed and kill associated containers. Value must be a positive integer.
  /// [affinity] If specified, the pod's scheduling constraints
  /// [automountServiceAccountToken] AutomountServiceAccountToken indicates whether a service account token should be automatically mounted.
  /// [containers] List of containers belonging to the pod. Containers cannot currently be added or removed. There must be at least one container in a Pod. Cannot be updated.
  /// [dnsConfig] Specifies the DNS parameters of a pod. Parameters specified here will be merged to the generated DNS configuration based on DNSPolicy.
  /// [dnsPolicy] Set DNS policy for the pod. Defaults to "ClusterFirst". Valid values are 'ClusterFirstWithHostNet', 'ClusterFirst', 'Default' or 'None'. DNS parameters given in DNSConfig will be merged with the policy selected with DNSPolicy. To have DNS options set along with hostNetwork, you have to specify DNS policy explicitly to 'ClusterFirstWithHostNet'.
  /// [enableServiceLinks] EnableServiceLinks indicates whether information about services should be injected into pod's environment variables, matching the syntax of Docker links. Optional: Defaults to true.
  /// [ephemeralContainers] List of ephemeral containers run in this pod. Ephemeral containers may be run in an existing pod to perform user-initiated actions such as debugging. This list cannot be specified when creating a pod, and it cannot be modified by updating the pod spec. In order to add an ephemeral container to an existing pod, use the pod's ephemeralcontainers subresource.
  /// [hostAliases] HostAliases is an optional list of hosts and IPs that will be injected into the pod's hosts file if specified.
  /// [hostIPC] Use the host's ipc namespace. Optional: Default to false.
  /// [hostNetwork] Host networking requested for this pod. Use the host's network namespace. When using HostNetwork you should specify ports so the scheduler is aware. When `hostNetwork` is true, specified `hostPort` fields in port definitions must match `containerPort`, and unspecified `hostPort` fields in port definitions are defaulted to match `containerPort`. Default to false.
  /// [hostPID] Use the host's pid namespace. Optional: Default to false.
  /// [hostUsers] Use the host's user namespace. Optional: Default to true. If set to true or not present, the pod will be run in the host user namespace, useful for when the pod needs a feature only available to the host user namespace, such as loading a kernel module with CAP_SYS_MODULE. When set to false, a new userns is created for the pod. Setting false is useful for mitigating container breakout vulnerabilities even allowing users to run their containers as root without actually having root privileges on the host. This field is alpha-level and is only honored by servers that enable the UserNamespacesSupport feature.
  /// [hostname] Specifies the hostname of the Pod If not specified, the pod's hostname will be set to a system-defined value.
  /// [hostnameOverride] HostnameOverride specifies an explicit override for the pod's hostname as perceived by the pod. This field only specifies the pod's hostname and does not affect its DNS records. When this field is set to a non-empty string: - It takes precedence over the values set in `hostname` and `subdomain`. - The Pod's hostname will be set to this value. - `setHostnameAsFQDN` must be nil or set to false. - `hostNetwork` must be set to false.
  /// [imagePullSecrets] ImagePullSecrets is an optional list of references to secrets in the same namespace to use for pulling any of the images used by this PodSpec. If specified, these secrets will be passed to individual puller implementations for them to use. More info: https://kubernetes.io/docs/concepts/containers/images#specifying-imagepullsecrets-on-a-pod
  /// [initContainers] List of initialization containers belonging to the pod. Init containers are executed in order prior to containers being started. If any init container fails, the pod is considered to have failed and is handled according to its restartPolicy. The name for an init container or normal container must be unique among all containers. Init containers may not have Lifecycle actions, Readiness probes, Liveness probes, or Startup probes. The resourceRequirements of an init container are taken into account during scheduling by finding the highest request/limit for each resource type, and then using the max of that value or the sum of the normal containers. Limits are applied to init containers in a similar fashion. Init containers cannot currently be added or removed. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/init-containers/
  /// [nodeName] NodeName indicates in which node this pod is scheduled. If empty, this pod is a candidate for scheduling by the scheduler defined in schedulerName. Once this field is set, the kubelet for this node becomes responsible for the lifecycle of this pod. This field should not be used to express a desire for the pod to be scheduled on a specific node. https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#nodename
  /// [nodeSelector] NodeSelector is a selector which must be true for the pod to fit on a node. Selector which must match a node's labels for the pod to be scheduled on that node. More info: https://kubernetes.io/docs/concepts/configuration/assign-pod-node/
  /// [os] Specifies the OS of the containers in the pod. Some pod and container fields are restricted if this is set.
  /// [overhead] Overhead represents the resource overhead associated with running a pod for a given RuntimeClass. This field will be autopopulated at admission time by the RuntimeClass admission controller. If the RuntimeClass admission controller is enabled, overhead must not be set in Pod create requests. The RuntimeClass admission controller will reject Pod create requests which have the overhead already set. If RuntimeClass is configured and selected in the PodSpec, Overhead will be set to the value defined in the corresponding RuntimeClass, otherwise it will remain unset and treated as zero. More info: https://git.k8s.io/enhancements/keps/sig-node/688-pod-overhead/README.md
  /// [preemptionPolicy] PreemptionPolicy is the Policy for preempting pods with lower priority. One of Never, PreemptLowerPriority. Defaults to PreemptLowerPriority if unset.
  /// [priority] The priority value. Various system components use this field to find the priority of the pod. When Priority Admission Controller is enabled, it prevents users from setting this field. The admission controller populates this field from PriorityClassName. The higher the value, the higher the priority.
  /// [priorityClassName] If specified, indicates the pod's priority. "system-node-critical" and "system-cluster-critical" are two special keywords which indicate the highest priorities with the former being the highest priority. Any other name must be defined by creating a PriorityClass object with that name. If not specified, the pod priority will be default or zero if there is no default.
  /// [readinessGates] If specified, all readiness gates will be evaluated for pod readiness. A pod is ready when all its containers are ready AND all conditions specified in the readiness gates have status equal to "True" More info: https://git.k8s.io/enhancements/keps/sig-network/580-pod-readiness-gates
  /// [resourceClaims] ResourceClaims defines which ResourceClaims must be allocated and reserved before the Pod is allowed to start. The resources will be made available to those containers which consume them by name.
  /// [resources] Resources is the total amount of CPU and Memory resources required by all containers in the pod. It supports specifying Requests and Limits for "cpu", "memory" and "hugepages-" resource names only. ResourceClaims are not supported.
  /// [restartPolicy] Restart policy for all containers within the pod. One of Always, OnFailure, Never. In some contexts, only a subset of those values may be permitted. Default to Always. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#restart-policy
  /// [runtimeClassName] RuntimeClassName refers to a RuntimeClass object in the node.k8s.io group, which should be used to run this pod.  If no RuntimeClass resource matches the named class, the pod will not be run. If unset or empty, the "legacy" RuntimeClass will be used, which is an implicit class with an empty definition that uses the default runtime handler. More info: https://git.k8s.io/enhancements/keps/sig-node/585-runtime-class
  /// [schedulerName] If specified, the pod will be dispatched by specified scheduler. If not specified, the pod will be dispatched by default scheduler.
  /// [schedulingGates] SchedulingGates is an opaque list of values that if specified will block scheduling the pod. If schedulingGates is not empty, the pod will stay in the SchedulingGated state and the scheduler will not attempt to schedule the pod.
  /// [securityContext] SecurityContext holds pod-level security attributes and common container settings. Optional: Defaults to empty.  See type description for default values of each field.
  /// [serviceAccount] DeprecatedServiceAccount is a deprecated alias for ServiceAccountName. Deprecated: Use serviceAccountName instead.
  /// [serviceAccountName] ServiceAccountName is the name of the ServiceAccount to use to run this pod. More info: https://kubernetes.io/docs/tasks/configure-pod-container/configure-service-account/
  /// [setHostnameAsFQDN] If true the pod's hostname will be configured as the pod's FQDN, rather than the leaf name (the default). In Linux containers, this means setting the FQDN in the hostname field of the kernel (the nodename field of struct utsname). In Windows containers, this means setting the registry value of hostname for the registry key HKEY_LOCAL_MACHINE\\SYSTEM\\CurrentControlSet\\Services\\Tcpip\\Parameters to FQDN. If a pod does not have FQDN, this has no effect. Default to false.
  /// [shareProcessNamespace] Share a single process namespace between all of the containers in a pod. When this is set containers will be able to view and signal processes from other containers in the same pod, and the first process in each container will not be assigned PID 1. HostPID and ShareProcessNamespace cannot both be set. Optional: Default to false.
  /// [subdomain] If specified, the fully qualified Pod hostname will be "<hostname>.<subdomain>.<pod namespace>.svc.<cluster domain>". If not specified, the pod will not have a domainname at all.
  /// [terminationGracePeriodSeconds] Optional duration in seconds the pod needs to terminate gracefully. May be decreased in delete request. Value must be non-negative integer. The value zero indicates stop immediately via the kill signal (no opportunity to shut down). If this value is nil, the default grace period will be used instead. The grace period is the duration in seconds after the processes running in the pod are sent a termination signal and the time when the processes are forcibly halted with a kill signal. Set this value longer than the expected cleanup time for your process. Defaults to 30 seconds.
  /// [tolerations] If specified, the pod's tolerations.
  /// [topologySpreadConstraints] TopologySpreadConstraints describes how a group of pods ought to spread across topology domains. Scheduler will schedule pods in a way which abides by the constraints. All topologySpreadConstraints are ANDed.
  /// [volumes] List of volumes that can be mounted by containers belonging to the pod. More info: https://kubernetes.io/docs/concepts/storage/volumes
  /// [workloadRef] WorkloadRef provides a reference to the Workload object that this Pod belongs to. This field is used by the scheduler to identify the PodGroup and apply the correct group scheduling policies. The Workload object referenced by this field may not exist at the time the Pod is created. This field is immutable, but a Workload object with the same name may be recreated with different policies. Doing this during pod scheduling may result in the placement not conforming to the expected policies.
  PodSpec({
    this.activeDeadlineSeconds,
    this.affinity,
    this.automountServiceAccountToken,
    required this.containers,
    this.dnsConfig,
    this.dnsPolicy,
    this.enableServiceLinks,
    this.ephemeralContainers,
    this.hostAliases,
    this.hostIPC,
    this.hostNetwork,
    this.hostPID,
    this.hostUsers,
    this.hostname,
    this.hostnameOverride,
    this.imagePullSecrets,
    this.initContainers,
    this.nodeName,
    this.nodeSelector,
    this.os,
    this.overhead,
    this.preemptionPolicy,
    this.priority,
    this.priorityClassName,
    this.readinessGates,
    this.resourceClaims,
    this.resources,
    this.restartPolicy,
    this.runtimeClassName,
    this.schedulerName,
    this.schedulingGates,
    this.securityContext,
    this.serviceAccount,
    this.serviceAccountName,
    this.setHostnameAsFQDN,
    this.shareProcessNamespace,
    this.subdomain,
    this.terminationGracePeriodSeconds,
    this.tolerations,
    this.topologySpreadConstraints,
    this.volumes,
    this.workloadRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDeadlineSeconds': ?activeDeadlineSeconds,
      'affinity': ?affinity == null ? null : affinity!.toMap(),
      'automountServiceAccountToken': ?automountServiceAccountToken,
      'containers': pulumi.Input.encodeList<Container, Map<String, dynamic>>(containers, (value) => value.toMap()),
      'dnsConfig': ?dnsConfig == null ? null : dnsConfig!.toMap(),
      'dnsPolicy': ?dnsPolicy,
      'enableServiceLinks': ?enableServiceLinks,
      'ephemeralContainers': ?ephemeralContainers == null ? null : pulumi.Input.encodeList<EphemeralContainer, Map<String, dynamic>>(ephemeralContainers!, (value) => value.toMap()),
      'hostAliases': ?hostAliases == null ? null : pulumi.Input.encodeList<HostAlias, Map<String, dynamic>>(hostAliases!, (value) => value.toMap()),
      'hostIPC': ?hostIPC,
      'hostNetwork': ?hostNetwork,
      'hostPID': ?hostPID,
      'hostUsers': ?hostUsers,
      'hostname': ?hostname,
      'hostnameOverride': ?hostnameOverride,
      'imagePullSecrets': ?imagePullSecrets == null ? null : pulumi.Input.encodeList<LocalObjectReference, Map<String, dynamic>>(imagePullSecrets!, (value) => value.toMap()),
      'initContainers': ?initContainers == null ? null : pulumi.Input.encodeList<Container, Map<String, dynamic>>(initContainers!, (value) => value.toMap()),
      'nodeName': ?nodeName,
      'nodeSelector': ?nodeSelector,
      'os': ?os == null ? null : os!.toMap(),
      'overhead': ?overhead,
      'preemptionPolicy': ?preemptionPolicy,
      'priority': ?priority,
      'priorityClassName': ?priorityClassName,
      'readinessGates': ?readinessGates == null ? null : pulumi.Input.encodeList<PodReadinessGate, Map<String, dynamic>>(readinessGates!, (value) => value.toMap()),
      'resourceClaims': ?resourceClaims == null ? null : pulumi.Input.encodeList<PodResourceClaim, Map<String, dynamic>>(resourceClaims!, (value) => value.toMap()),
      'resources': ?resources == null ? null : resources!.toMap(),
      'restartPolicy': ?restartPolicy,
      'runtimeClassName': ?runtimeClassName,
      'schedulerName': ?schedulerName,
      'schedulingGates': ?schedulingGates == null ? null : pulumi.Input.encodeList<PodSchedulingGate, Map<String, dynamic>>(schedulingGates!, (value) => value.toMap()),
      'securityContext': ?securityContext == null ? null : securityContext!.toMap(),
      'serviceAccount': ?serviceAccount,
      'serviceAccountName': ?serviceAccountName,
      'setHostnameAsFQDN': ?setHostnameAsFQDN,
      'shareProcessNamespace': ?shareProcessNamespace,
      'subdomain': ?subdomain,
      'terminationGracePeriodSeconds': ?terminationGracePeriodSeconds,
      'tolerations': ?tolerations == null ? null : pulumi.Input.encodeList<Toleration, Map<String, dynamic>>(tolerations!, (value) => value.toMap()),
      'topologySpreadConstraints': ?topologySpreadConstraints == null ? null : pulumi.Input.encodeList<TopologySpreadConstraint, Map<String, dynamic>>(topologySpreadConstraints!, (value) => value.toMap()),
      'volumes': ?volumes == null ? null : pulumi.Input.encodeList<Volume, Map<String, dynamic>>(volumes!, (value) => value.toMap()),
      'workloadRef': ?workloadRef == null ? null : workloadRef!.toMap(),
    };
  }

  factory PodSpec.fromMap(Map<String, dynamic> map) {
    return PodSpec(
      activeDeadlineSeconds: map['activeDeadlineSeconds'] == null ? null : map['activeDeadlineSeconds'] as int,
      affinity: map['affinity'] == null ? null : Affinity.fromMap((map['affinity'] as Map).cast<String, dynamic>()),
      automountServiceAccountToken: map['automountServiceAccountToken'] == null ? null : map['automountServiceAccountToken'] as bool,
      containers: pulumi.Input.decodeList<Container>(map['containers'], (value) => Container.fromMap((value as Map).cast<String, dynamic>())),
      dnsConfig: map['dnsConfig'] == null ? null : PodDNSConfig.fromMap((map['dnsConfig'] as Map).cast<String, dynamic>()),
      dnsPolicy: map['dnsPolicy'] == null ? null : map['dnsPolicy'] as String,
      enableServiceLinks: map['enableServiceLinks'] == null ? null : map['enableServiceLinks'] as bool,
      ephemeralContainers: map['ephemeralContainers'] == null ? null : pulumi.Input.decodeList<EphemeralContainer>(map['ephemeralContainers'], (value) => EphemeralContainer.fromMap((value as Map).cast<String, dynamic>())),
      hostAliases: map['hostAliases'] == null ? null : pulumi.Input.decodeList<HostAlias>(map['hostAliases'], (value) => HostAlias.fromMap((value as Map).cast<String, dynamic>())),
      hostIPC: map['hostIPC'] == null ? null : map['hostIPC'] as bool,
      hostNetwork: map['hostNetwork'] == null ? null : map['hostNetwork'] as bool,
      hostPID: map['hostPID'] == null ? null : map['hostPID'] as bool,
      hostUsers: map['hostUsers'] == null ? null : map['hostUsers'] as bool,
      hostname: map['hostname'] == null ? null : map['hostname'] as String,
      hostnameOverride: map['hostnameOverride'] == null ? null : map['hostnameOverride'] as String,
      imagePullSecrets: map['imagePullSecrets'] == null ? null : pulumi.Input.decodeList<LocalObjectReference>(map['imagePullSecrets'], (value) => LocalObjectReference.fromMap((value as Map).cast<String, dynamic>())),
      initContainers: map['initContainers'] == null ? null : pulumi.Input.decodeList<Container>(map['initContainers'], (value) => Container.fromMap((value as Map).cast<String, dynamic>())),
      nodeName: map['nodeName'] == null ? null : map['nodeName'] as String,
      nodeSelector: map['nodeSelector'] == null ? null : (map['nodeSelector'] as Map).cast<String, String>(),
      os: map['os'] == null ? null : PodOS.fromMap((map['os'] as Map).cast<String, dynamic>()),
      overhead: map['overhead'] == null ? null : (map['overhead'] as Map).cast<String, String>(),
      preemptionPolicy: map['preemptionPolicy'] == null ? null : map['preemptionPolicy'] as String,
      priority: map['priority'] == null ? null : map['priority'] as int,
      priorityClassName: map['priorityClassName'] == null ? null : map['priorityClassName'] as String,
      readinessGates: map['readinessGates'] == null ? null : pulumi.Input.decodeList<PodReadinessGate>(map['readinessGates'], (value) => PodReadinessGate.fromMap((value as Map).cast<String, dynamic>())),
      resourceClaims: map['resourceClaims'] == null ? null : pulumi.Input.decodeList<PodResourceClaim>(map['resourceClaims'], (value) => PodResourceClaim.fromMap((value as Map).cast<String, dynamic>())),
      resources: map['resources'] == null ? null : ResourceRequirements.fromMap((map['resources'] as Map).cast<String, dynamic>()),
      restartPolicy: map['restartPolicy'] == null ? null : map['restartPolicy'] as String,
      runtimeClassName: map['runtimeClassName'] == null ? null : map['runtimeClassName'] as String,
      schedulerName: map['schedulerName'] == null ? null : map['schedulerName'] as String,
      schedulingGates: map['schedulingGates'] == null ? null : pulumi.Input.decodeList<PodSchedulingGate>(map['schedulingGates'], (value) => PodSchedulingGate.fromMap((value as Map).cast<String, dynamic>())),
      securityContext: map['securityContext'] == null ? null : PodSecurityContext.fromMap((map['securityContext'] as Map).cast<String, dynamic>()),
      serviceAccount: map['serviceAccount'] == null ? null : map['serviceAccount'] as String,
      serviceAccountName: map['serviceAccountName'] == null ? null : map['serviceAccountName'] as String,
      setHostnameAsFQDN: map['setHostnameAsFQDN'] == null ? null : map['setHostnameAsFQDN'] as bool,
      shareProcessNamespace: map['shareProcessNamespace'] == null ? null : map['shareProcessNamespace'] as bool,
      subdomain: map['subdomain'] == null ? null : map['subdomain'] as String,
      terminationGracePeriodSeconds: map['terminationGracePeriodSeconds'] == null ? null : map['terminationGracePeriodSeconds'] as int,
      tolerations: map['tolerations'] == null ? null : pulumi.Input.decodeList<Toleration>(map['tolerations'], (value) => Toleration.fromMap((value as Map).cast<String, dynamic>())),
      topologySpreadConstraints: map['topologySpreadConstraints'] == null ? null : pulumi.Input.decodeList<TopologySpreadConstraint>(map['topologySpreadConstraints'], (value) => TopologySpreadConstraint.fromMap((value as Map).cast<String, dynamic>())),
      volumes: map['volumes'] == null ? null : pulumi.Input.decodeList<Volume>(map['volumes'], (value) => Volume.fromMap((value as Map).cast<String, dynamic>())),
      workloadRef: map['workloadRef'] == null ? null : WorkloadReference.fromMap((map['workloadRef'] as Map).cast<String, dynamic>()),
    );
  }
}

