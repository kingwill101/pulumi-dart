// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'affinity_patch.dart';
import 'container_patch.dart';
import 'ephemeral_container_patch.dart';
import 'eviction_responder_patch.dart';
import 'host_alias_patch.dart';
import 'local_object_reference_patch.dart';
import 'pod_dnsconfig_patch.dart';
import 'pod_ospatch.dart';
import 'pod_readiness_gate_patch.dart';
import 'pod_resource_claim_patch.dart';
import 'pod_scheduling_gate_patch.dart';
import 'pod_scheduling_group_patch.dart';
import 'pod_security_context_patch.dart';
import 'resource_requirements_patch.dart';
import 'toleration_patch.dart';
import 'topology_spread_constraint_patch.dart';
import 'volume_patch.dart';
import 'workload_reference_patch.dart';

/// PodSpec is a description of a pod.
class PodSpecPatch {
  /// Optional duration in seconds the pod may be active on the node relative to StartTime before the system will actively try to mark it failed and kill associated containers. Value must be a positive integer.
  final pulumi.Input<int?>? activeDeadlineSeconds;
  /// If specified, the pod's scheduling constraints
  final pulumi.Input<AffinityPatch?>? affinity;
  /// AutomountServiceAccountToken indicates whether a service account token should be automatically mounted.
  final pulumi.Input<bool?>? automountServiceAccountToken;
  /// List of containers belonging to the pod. Containers cannot currently be added or removed. There must be at least one container in a Pod. Cannot be updated.
  final pulumi.Input<List<ContainerPatch>?>? containers;
  /// Specifies the DNS parameters of a pod. Parameters specified here will be merged to the generated DNS configuration based on DNSPolicy.
  final pulumi.Input<PodDNSConfigPatch?>? dnsConfig;
  /// Set DNS policy for the pod. Defaults to "ClusterFirst". Valid values are 'ClusterFirstWithHostNet', 'ClusterFirst', 'Default' or 'None'. DNS parameters given in DNSConfig will be merged with the policy selected with DNSPolicy. To have DNS options set along with hostNetwork, you have to specify DNS policy explicitly to 'ClusterFirstWithHostNet'.
  final pulumi.Input<String?>? dnsPolicy;
  /// EnableServiceLinks indicates whether information about services should be injected into pod's environment variables, matching the syntax of Docker links. Optional: Defaults to true.
  final pulumi.Input<bool?>? enableServiceLinks;
  /// List of ephemeral containers run in this pod. Ephemeral containers may be run in an existing pod to perform user-initiated actions such as debugging. This list cannot be specified when creating a pod, and it cannot be modified by updating the pod spec. In order to add an ephemeral container to an existing pod, use the pod's ephemeralcontainers subresource.
  final pulumi.Input<List<EphemeralContainerPatch>?>? ephemeralContainers;
  /// evictionResponders reference responders that react to Evictions based on EvictionRequests. Responders should observe and communicate through the Eviction Resource API to help with the graceful termination of a pod. The responders are selected sequentially, according to their specified priority.
  ///
  /// Responders should periodically report on an eviction progress by updating the .status.responders[].heartbeatTime field of the Eviction object. If this field is not updated within the heartbeat deadline defined by the Eviction API (currently 20 minutes), the eviction is passed over to the next responder with a lower priority. If there is no other responder, the last default imperative-eviction.k8s.io/evictor responder with a priority of 100 will evict the pod using the imperative Eviction API (pods/&lt;name&gt;/eviction subresource).
  ///
  /// The maximum length of the responders list is 10. Responders are not supported when the pod is part of a PodGroup (.spec.schedulingGroup is set). This field can only be set on creation and is immutable afterwards.
  final pulumi.Input<List<EvictionResponderPatch>?>? evictionResponders;
  /// HostAliases is an optional list of hosts and IPs that will be injected into the pod's hosts file if specified.
  final pulumi.Input<List<HostAliasPatch>?>? hostAliases;
  /// Use the host's ipc namespace. Optional: Default to false.
  final pulumi.Input<bool?>? hostIPC;
  /// Host networking requested for this pod. Use the host's network namespace. When using HostNetwork you should specify ports so the scheduler is aware. When `hostNetwork` is true, specified `hostPort` fields in port definitions must match `containerPort`, and unspecified `hostPort` fields in port definitions are defaulted to match `containerPort`. Default to false.
  final pulumi.Input<bool?>? hostNetwork;
  /// Use the host's pid namespace. Optional: Default to false.
  final pulumi.Input<bool?>? hostPID;
  /// Use the host's user namespace. Optional: Default to true. If set to true or not present, the pod will be run in the host user namespace, useful for when the pod needs a feature only available to the host user namespace, such as loading a kernel module with CAP_SYS_MODULE. When set to false, a new userns is created for the pod. Setting false is useful for mitigating container breakout vulnerabilities even allowing users to run their containers as root without actually having root privileges on the host.
  final pulumi.Input<bool?>? hostUsers;
  /// Specifies the hostname of the Pod If not specified, the pod's hostname will be set to a system-defined value.
  final pulumi.Input<String?>? hostname;
  /// HostnameOverride specifies an explicit override for the pod's hostname as perceived by the pod. This field only specifies the pod's hostname and does not affect its DNS records. When this field is set to a non-empty string: - It takes precedence over the values set in `hostname` and `subdomain`. - The Pod's hostname will be set to this value. - `setHostnameAsFQDN` must be nil or set to false. - `hostNetwork` must be set to false.
  ///
  /// This field must be a valid DNS subdomain as defined in RFC 1123 and contain at most 64 characters.
  final pulumi.Input<String?>? hostnameOverride;
  /// ImagePullSecrets is an optional list of references to secrets in the same namespace to use for pulling any of the images used by this PodSpec. If specified, these secrets will be passed to individual puller implementations for them to use. More info: https://kubernetes.io/docs/concepts/containers/images#specifying-imagepullsecrets-on-a-pod
  final pulumi.Input<List<LocalObjectReferencePatch>?>? imagePullSecrets;
  /// List of initialization containers belonging to the pod. Init containers are executed in order prior to containers being started. If any init container fails, the pod is considered to have failed and is handled according to its restartPolicy. The name for an init container or normal container must be unique among all containers. Init containers may not have Lifecycle actions, Readiness probes, Liveness probes, or Startup probes. The resourceRequirements of an init container are taken into account during scheduling by finding the highest request/limit for each resource type, and then using the max of that value or the sum of the normal containers. Limits are applied to init containers in a similar fashion. Init containers cannot currently be added or removed. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/init-containers/
  final pulumi.Input<List<ContainerPatch>?>? initContainers;
  /// NodeName indicates in which node this pod is scheduled. If empty, this pod is a candidate for scheduling by the scheduler defined in schedulerName. Once this field is set, the kubelet for this node becomes responsible for the lifecycle of this pod. This field should not be used to express a desire for the pod to be scheduled on a specific node. https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#nodename
  final pulumi.Input<String?>? nodeName;
  /// NodeSelector is a selector which must be true for the pod to fit on a node. Selector which must match a node's labels for the pod to be scheduled on that node. More info: https://kubernetes.io/docs/concepts/configuration/assign-pod-node/
  final pulumi.Input<Map<String, String>?>? nodeSelector;
  /// Specifies the OS of the containers in the pod. Some pod and container fields are restricted if this is set.
  ///
  /// If the OS field is set to linux, the following fields must be unset: -securityContext.windowsOptions
  ///
  /// If the OS field is set to windows, following fields must be unset: - spec.hostPID - spec.hostIPC - spec.hostUsers - spec.resources - spec.securityContext.appArmorProfile - spec.securityContext.seLinuxOptions - spec.securityContext.seccompProfile - spec.securityContext.fsGroup - spec.securityContext.fsGroupChangePolicy - spec.securityContext.sysctls - spec.shareProcessNamespace - spec.securityContext.runAsUser - spec.securityContext.runAsGroup - spec.securityContext.supplementalGroups - spec.securityContext.supplementalGroupsPolicy - spec.containers[*].securityContext.appArmorProfile - spec.containers[*].securityContext.seLinuxOptions - spec.containers[*].securityContext.seccompProfile - spec.containers[*].securityContext.capabilities - spec.containers[*].securityContext.readOnlyRootFilesystem - spec.containers[*].securityContext.privileged - spec.containers[*].securityContext.allowPrivilegeEscalation - spec.containers[*].securityContext.procMount - spec.containers[*].securityContext.runAsUser - spec.containers[*].securityContext.runAsGroup
  final pulumi.Input<PodOSPatch?>? os;
  /// Overhead represents the resource overhead associated with running a pod for a given RuntimeClass. This field will be autopopulated at admission time by the RuntimeClass admission controller. If the RuntimeClass admission controller is enabled, overhead must not be set in Pod create requests. The RuntimeClass admission controller will reject Pod create requests which have the overhead already set. If RuntimeClass is configured and selected in the PodSpec, Overhead will be set to the value defined in the corresponding RuntimeClass, otherwise it will remain unset and treated as zero. More info: https://git.k8s.io/enhancements/keps/sig-node/688-pod-overhead/README.md
  final pulumi.Input<Map<String, String>?>? overhead;
  /// PreemptionPolicy is the Policy for preempting pods with lower priority. One of Never, PreemptLowerPriority. When Priority Admission Controller is enabled, it prevents users from setting this field. The admission controller populates this field from PriorityClassName. Defaults to PreemptLowerPriority if unset.
  final pulumi.Input<String?>? preemptionPolicy;
  /// The priority value. Various system components use this field to find the priority of the pod. When Priority Admission Controller is enabled, it prevents users from setting this field. The admission controller populates this field from PriorityClassName. The higher the value, the higher the priority.
  final pulumi.Input<int?>? priority;
  /// If specified, indicates the pod's priority. "system-node-critical" and "system-cluster-critical" are two special keywords which indicate the highest priorities with the former being the highest priority. Any other name must be defined by creating a PriorityClass object with that name. If not specified, the pod priority will be default or zero if there is no default.
  final pulumi.Input<String?>? priorityClassName;
  /// If specified, all readiness gates will be evaluated for pod readiness. A pod is ready when all its containers are ready AND all conditions specified in the readiness gates have status equal to "True" More info: https://git.k8s.io/enhancements/keps/sig-network/580-pod-readiness-gates
  final pulumi.Input<List<PodReadinessGatePatch>?>? readinessGates;
  /// ResourceClaims defines which ResourceClaims must be allocated and reserved before the Pod is allowed to start. The resources will be made available to those containers which consume them by name.
  ///
  /// This is a stable field but requires that the DynamicResourceAllocation feature gate is enabled.
  ///
  /// This field is immutable.
  final pulumi.Input<List<PodResourceClaimPatch>?>? resourceClaims;
  /// Resources is the total amount of CPU and Memory resources required by all containers in the pod. It supports specifying Requests and Limits for "cpu", "memory" and "hugepages-" resource names only. ResourceClaims are not supported.
  ///
  /// This field enables fine-grained control over resource allocation for the entire pod, allowing resource sharing among containers in a pod.
  ///
  /// This is an alpha field and requires enabling the PodLevelResources feature gate.
  final pulumi.Input<ResourceRequirementsPatch?>? resources;
  /// Restart policy for all containers within the pod. One of Always, OnFailure, Never. In some contexts, only a subset of those values may be permitted. Default to Always. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#restart-policy
  final pulumi.Input<String?>? restartPolicy;
  /// RuntimeClassName refers to a RuntimeClass object in the node.k8s.io group, which should be used to run this pod.  If no RuntimeClass resource matches the named class, the pod will not be run. If unset or empty, the "legacy" RuntimeClass will be used, which is an implicit class with an empty definition that uses the default runtime handler. More info: https://git.k8s.io/enhancements/keps/sig-node/585-runtime-class
  final pulumi.Input<String?>? runtimeClassName;
  /// If specified, the pod will be dispatched by specified scheduler. If not specified, the pod will be dispatched by default scheduler.
  final pulumi.Input<String?>? schedulerName;
  /// SchedulingGates is an opaque list of values that if specified will block scheduling the pod. If schedulingGates is not empty, the pod will stay in the SchedulingGated state and the scheduler will not attempt to schedule the pod.
  ///
  /// SchedulingGates can only be set at pod creation time, and be removed only afterwards.
  final pulumi.Input<List<PodSchedulingGatePatch>?>? schedulingGates;
  /// SchedulingGroup provides a reference to the immediate scheduling runtime grouping object that this Pod belongs to. This field is used by the scheduler to identify the group and apply the correct group scheduling policies. The association with a group also impacts other lifecycle aspects of a Pod that are relevant in a wider context of scheduling like preemption, resource attachment, etc. If not specified, the Pod is treated as a single unit in all of these aspects. The group object referenced by this field may not exist at the time the Pod is created. This field is immutable, but a group object with the same name may be recreated with different policies. Doing this during pod scheduling may result in the placement not conforming to the expected policies.
  final pulumi.Input<PodSchedulingGroupPatch?>? schedulingGroup;
  /// SecurityContext holds pod-level security attributes and common container settings. Optional: Defaults to empty.  See type description for default values of each field.
  final pulumi.Input<PodSecurityContextPatch?>? securityContext;
  /// DeprecatedServiceAccount is a deprecated alias for ServiceAccountName. Deprecated: Use serviceAccountName instead.
  final pulumi.Input<String?>? serviceAccount;
  /// ServiceAccountName is the name of the ServiceAccount to use to run this pod. More info: https://kubernetes.io/docs/tasks/configure-pod-container/configure-service-account/
  final pulumi.Input<String?>? serviceAccountName;
  /// If true the pod's hostname will be configured as the pod's FQDN, rather than the leaf name (the default). In Linux containers, this means setting the FQDN in the hostname field of the kernel (the nodename field of struct utsname). In Windows containers, this means setting the registry value of hostname for the registry key HKEY_LOCAL_MACHINE\\SYSTEM\\CurrentControlSet\\Services\\Tcpip\\Parameters to FQDN. If a pod does not have FQDN, this has no effect. Default to false.
  final pulumi.Input<bool?>? setHostnameAsFQDN;
  /// Share a single process namespace between all of the containers in a pod. When this is set containers will be able to view and signal processes from other containers in the same pod, and the first process in each container will not be assigned PID 1. HostPID and ShareProcessNamespace cannot both be set. Optional: Default to false.
  final pulumi.Input<bool?>? shareProcessNamespace;
  /// If specified, the fully qualified Pod hostname will be "&lt;hostname&gt;.&lt;subdomain&gt;.&lt;pod namespace&gt;.svc.&lt;cluster domain&gt;". If not specified, the pod will not have a domainname at all.
  final pulumi.Input<String?>? subdomain;
  /// Optional duration in seconds the pod needs to terminate gracefully. May be decreased in delete request. Value must be non-negative integer. The value zero indicates stop immediately via the kill signal (no opportunity to shut down). If this value is nil, the default grace period will be used instead. The grace period is the duration in seconds after the processes running in the pod are sent a termination signal and the time when the processes are forcibly halted with a kill signal. Set this value longer than the expected cleanup time for your process. Defaults to 30 seconds.
  final pulumi.Input<int?>? terminationGracePeriodSeconds;
  /// If specified, the pod's tolerations.
  final pulumi.Input<List<TolerationPatch>?>? tolerations;
  /// TopologySpreadConstraints describes how a group of pods ought to spread across topology domains. Scheduler will schedule pods in a way which abides by the constraints. All topologySpreadConstraints are ANDed.
  final pulumi.Input<List<TopologySpreadConstraintPatch>?>? topologySpreadConstraints;
  /// List of volumes that can be mounted by containers belonging to the pod. More info: https://kubernetes.io/docs/concepts/storage/volumes
  final pulumi.Input<List<VolumePatch>?>? volumes;
  /// WorkloadRef provides a reference to the Workload object that this Pod belongs to. This field is used by the scheduler to identify the PodGroup and apply the correct group scheduling policies. The Workload object referenced by this field may not exist at the time the Pod is created. This field is immutable, but a Workload object with the same name may be recreated with different policies. Doing this during pod scheduling may result in the placement not conforming to the expected policies.
  final pulumi.Input<WorkloadReferencePatch?>? workloadRef;

  /// Creates a new [PodSpecPatch].
  /// [activeDeadlineSeconds] Optional duration in seconds the pod may be active on the node relative to StartTime before the system will actively try to mark it failed and kill associated containers. Value must be a positive integer.
  /// [affinity] If specified, the pod's scheduling constraints
  /// [automountServiceAccountToken] AutomountServiceAccountToken indicates whether a service account token should be automatically mounted.
  /// [containers] List of containers belonging to the pod. Containers cannot currently be added or removed. There must be at least one container in a Pod. Cannot be updated.
  /// [dnsConfig] Specifies the DNS parameters of a pod. Parameters specified here will be merged to the generated DNS configuration based on DNSPolicy.
  /// [dnsPolicy] Set DNS policy for the pod. Defaults to "ClusterFirst". Valid values are 'ClusterFirstWithHostNet', 'ClusterFirst', 'Default' or 'None'. DNS parameters given in DNSConfig will be merged with the policy selected with DNSPolicy. To have DNS options set along with hostNetwork, you have to specify DNS policy explicitly to 'ClusterFirstWithHostNet'.
  /// [enableServiceLinks] EnableServiceLinks indicates whether information about services should be injected into pod's environment variables, matching the syntax of Docker links. Optional: Defaults to true.
  /// [ephemeralContainers] List of ephemeral containers run in this pod. Ephemeral containers may be run in an existing pod to perform user-initiated actions such as debugging. This list cannot be specified when creating a pod, and it cannot be modified by updating the pod spec. In order to add an ephemeral container to an existing pod, use the pod's ephemeralcontainers subresource.
  /// [evictionResponders] evictionResponders reference responders that react to Evictions based on EvictionRequests. Responders should observe and communicate through the Eviction Resource API to help with the graceful termination of a pod. The responders are selected sequentially, according to their specified priority.
  /// [hostAliases] HostAliases is an optional list of hosts and IPs that will be injected into the pod's hosts file if specified.
  /// [hostIPC] Use the host's ipc namespace. Optional: Default to false.
  /// [hostNetwork] Host networking requested for this pod. Use the host's network namespace. When using HostNetwork you should specify ports so the scheduler is aware. When `hostNetwork` is true, specified `hostPort` fields in port definitions must match `containerPort`, and unspecified `hostPort` fields in port definitions are defaulted to match `containerPort`. Default to false.
  /// [hostPID] Use the host's pid namespace. Optional: Default to false.
  /// [hostUsers] Use the host's user namespace. Optional: Default to true. If set to true or not present, the pod will be run in the host user namespace, useful for when the pod needs a feature only available to the host user namespace, such as loading a kernel module with CAP_SYS_MODULE. When set to false, a new userns is created for the pod. Setting false is useful for mitigating container breakout vulnerabilities even allowing users to run their containers as root without actually having root privileges on the host.
  /// [hostname] Specifies the hostname of the Pod If not specified, the pod's hostname will be set to a system-defined value.
  /// [hostnameOverride] HostnameOverride specifies an explicit override for the pod's hostname as perceived by the pod. This field only specifies the pod's hostname and does not affect its DNS records. When this field is set to a non-empty string: - It takes precedence over the values set in `hostname` and `subdomain`. - The Pod's hostname will be set to this value. - `setHostnameAsFQDN` must be nil or set to false. - `hostNetwork` must be set to false.
  /// [imagePullSecrets] ImagePullSecrets is an optional list of references to secrets in the same namespace to use for pulling any of the images used by this PodSpec. If specified, these secrets will be passed to individual puller implementations for them to use. More info: https://kubernetes.io/docs/concepts/containers/images#specifying-imagepullsecrets-on-a-pod
  /// [initContainers] List of initialization containers belonging to the pod. Init containers are executed in order prior to containers being started. If any init container fails, the pod is considered to have failed and is handled according to its restartPolicy. The name for an init container or normal container must be unique among all containers. Init containers may not have Lifecycle actions, Readiness probes, Liveness probes, or Startup probes. The resourceRequirements of an init container are taken into account during scheduling by finding the highest request/limit for each resource type, and then using the max of that value or the sum of the normal containers. Limits are applied to init containers in a similar fashion. Init containers cannot currently be added or removed. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/init-containers/
  /// [nodeName] NodeName indicates in which node this pod is scheduled. If empty, this pod is a candidate for scheduling by the scheduler defined in schedulerName. Once this field is set, the kubelet for this node becomes responsible for the lifecycle of this pod. This field should not be used to express a desire for the pod to be scheduled on a specific node. https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#nodename
  /// [nodeSelector] NodeSelector is a selector which must be true for the pod to fit on a node. Selector which must match a node's labels for the pod to be scheduled on that node. More info: https://kubernetes.io/docs/concepts/configuration/assign-pod-node/
  /// [os] Specifies the OS of the containers in the pod. Some pod and container fields are restricted if this is set.
  /// [overhead] Overhead represents the resource overhead associated with running a pod for a given RuntimeClass. This field will be autopopulated at admission time by the RuntimeClass admission controller. If the RuntimeClass admission controller is enabled, overhead must not be set in Pod create requests. The RuntimeClass admission controller will reject Pod create requests which have the overhead already set. If RuntimeClass is configured and selected in the PodSpec, Overhead will be set to the value defined in the corresponding RuntimeClass, otherwise it will remain unset and treated as zero. More info: https://git.k8s.io/enhancements/keps/sig-node/688-pod-overhead/README.md
  /// [preemptionPolicy] PreemptionPolicy is the Policy for preempting pods with lower priority. One of Never, PreemptLowerPriority. When Priority Admission Controller is enabled, it prevents users from setting this field. The admission controller populates this field from PriorityClassName. Defaults to PreemptLowerPriority if unset.
  /// [priority] The priority value. Various system components use this field to find the priority of the pod. When Priority Admission Controller is enabled, it prevents users from setting this field. The admission controller populates this field from PriorityClassName. The higher the value, the higher the priority.
  /// [priorityClassName] If specified, indicates the pod's priority. "system-node-critical" and "system-cluster-critical" are two special keywords which indicate the highest priorities with the former being the highest priority. Any other name must be defined by creating a PriorityClass object with that name. If not specified, the pod priority will be default or zero if there is no default.
  /// [readinessGates] If specified, all readiness gates will be evaluated for pod readiness. A pod is ready when all its containers are ready AND all conditions specified in the readiness gates have status equal to "True" More info: https://git.k8s.io/enhancements/keps/sig-network/580-pod-readiness-gates
  /// [resourceClaims] ResourceClaims defines which ResourceClaims must be allocated and reserved before the Pod is allowed to start. The resources will be made available to those containers which consume them by name.
  /// [resources] Resources is the total amount of CPU and Memory resources required by all containers in the pod. It supports specifying Requests and Limits for "cpu", "memory" and "hugepages-" resource names only. ResourceClaims are not supported.
  /// [restartPolicy] Restart policy for all containers within the pod. One of Always, OnFailure, Never. In some contexts, only a subset of those values may be permitted. Default to Always. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#restart-policy
  /// [runtimeClassName] RuntimeClassName refers to a RuntimeClass object in the node.k8s.io group, which should be used to run this pod.  If no RuntimeClass resource matches the named class, the pod will not be run. If unset or empty, the "legacy" RuntimeClass will be used, which is an implicit class with an empty definition that uses the default runtime handler. More info: https://git.k8s.io/enhancements/keps/sig-node/585-runtime-class
  /// [schedulerName] If specified, the pod will be dispatched by specified scheduler. If not specified, the pod will be dispatched by default scheduler.
  /// [schedulingGates] SchedulingGates is an opaque list of values that if specified will block scheduling the pod. If schedulingGates is not empty, the pod will stay in the SchedulingGated state and the scheduler will not attempt to schedule the pod.
  /// [schedulingGroup] SchedulingGroup provides a reference to the immediate scheduling runtime grouping object that this Pod belongs to. This field is used by the scheduler to identify the group and apply the correct group scheduling policies. The association with a group also impacts other lifecycle aspects of a Pod that are relevant in a wider context of scheduling like preemption, resource attachment, etc. If not specified, the Pod is treated as a single unit in all of these aspects. The group object referenced by this field may not exist at the time the Pod is created. This field is immutable, but a group object with the same name may be recreated with different policies. Doing this during pod scheduling may result in the placement not conforming to the expected policies.
  /// [securityContext] SecurityContext holds pod-level security attributes and common container settings. Optional: Defaults to empty.  See type description for default values of each field.
  /// [serviceAccount] DeprecatedServiceAccount is a deprecated alias for ServiceAccountName. Deprecated: Use serviceAccountName instead.
  /// [serviceAccountName] ServiceAccountName is the name of the ServiceAccount to use to run this pod. More info: https://kubernetes.io/docs/tasks/configure-pod-container/configure-service-account/
  /// [setHostnameAsFQDN] If true the pod's hostname will be configured as the pod's FQDN, rather than the leaf name (the default). In Linux containers, this means setting the FQDN in the hostname field of the kernel (the nodename field of struct utsname). In Windows containers, this means setting the registry value of hostname for the registry key HKEY_LOCAL_MACHINE\\SYSTEM\\CurrentControlSet\\Services\\Tcpip\\Parameters to FQDN. If a pod does not have FQDN, this has no effect. Default to false.
  /// [shareProcessNamespace] Share a single process namespace between all of the containers in a pod. When this is set containers will be able to view and signal processes from other containers in the same pod, and the first process in each container will not be assigned PID 1. HostPID and ShareProcessNamespace cannot both be set. Optional: Default to false.
  /// [subdomain] If specified, the fully qualified Pod hostname will be "&lt;hostname&gt;.&lt;subdomain&gt;.&lt;pod namespace&gt;.svc.&lt;cluster domain&gt;". If not specified, the pod will not have a domainname at all.
  /// [terminationGracePeriodSeconds] Optional duration in seconds the pod needs to terminate gracefully. May be decreased in delete request. Value must be non-negative integer. The value zero indicates stop immediately via the kill signal (no opportunity to shut down). If this value is nil, the default grace period will be used instead. The grace period is the duration in seconds after the processes running in the pod are sent a termination signal and the time when the processes are forcibly halted with a kill signal. Set this value longer than the expected cleanup time for your process. Defaults to 30 seconds.
  /// [tolerations] If specified, the pod's tolerations.
  /// [topologySpreadConstraints] TopologySpreadConstraints describes how a group of pods ought to spread across topology domains. Scheduler will schedule pods in a way which abides by the constraints. All topologySpreadConstraints are ANDed.
  /// [volumes] List of volumes that can be mounted by containers belonging to the pod. More info: https://kubernetes.io/docs/concepts/storage/volumes
  /// [workloadRef] WorkloadRef provides a reference to the Workload object that this Pod belongs to. This field is used by the scheduler to identify the PodGroup and apply the correct group scheduling policies. The Workload object referenced by this field may not exist at the time the Pod is created. This field is immutable, but a Workload object with the same name may be recreated with different policies. Doing this during pod scheduling may result in the placement not conforming to the expected policies.
  const PodSpecPatch({
    this.activeDeadlineSeconds,
    this.affinity,
    this.automountServiceAccountToken,
    this.containers,
    this.dnsConfig,
    this.dnsPolicy,
    this.enableServiceLinks,
    this.ephemeralContainers,
    this.evictionResponders,
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
    this.schedulingGroup,
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
      'affinity': ?pulumi.Input.mapOptionalInputValue<AffinityPatch, Map<String, dynamic>>(affinity, (value) => value.toMap()),
      'automountServiceAccountToken': ?automountServiceAccountToken,
      'containers': ?pulumi.Input.mapOptionalInputValue<List<ContainerPatch>, List<Map<String, dynamic>>>(containers, (value) => pulumi.Input.encodeList<ContainerPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dnsConfig': ?pulumi.Input.mapOptionalInputValue<PodDNSConfigPatch, Map<String, dynamic>>(dnsConfig, (value) => value.toMap()),
      'dnsPolicy': ?dnsPolicy,
      'enableServiceLinks': ?enableServiceLinks,
      'ephemeralContainers': ?pulumi.Input.mapOptionalInputValue<List<EphemeralContainerPatch>, List<Map<String, dynamic>>>(ephemeralContainers, (value) => pulumi.Input.encodeList<EphemeralContainerPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'evictionResponders': ?pulumi.Input.mapOptionalInputValue<List<EvictionResponderPatch>, List<Map<String, dynamic>>>(evictionResponders, (value) => pulumi.Input.encodeList<EvictionResponderPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hostAliases': ?pulumi.Input.mapOptionalInputValue<List<HostAliasPatch>, List<Map<String, dynamic>>>(hostAliases, (value) => pulumi.Input.encodeList<HostAliasPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hostIPC': ?hostIPC,
      'hostNetwork': ?hostNetwork,
      'hostPID': ?hostPID,
      'hostUsers': ?hostUsers,
      'hostname': ?hostname,
      'hostnameOverride': ?hostnameOverride,
      'imagePullSecrets': ?pulumi.Input.mapOptionalInputValue<List<LocalObjectReferencePatch>, List<Map<String, dynamic>>>(imagePullSecrets, (value) => pulumi.Input.encodeList<LocalObjectReferencePatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'initContainers': ?pulumi.Input.mapOptionalInputValue<List<ContainerPatch>, List<Map<String, dynamic>>>(initContainers, (value) => pulumi.Input.encodeList<ContainerPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nodeName': ?nodeName,
      'nodeSelector': ?nodeSelector,
      'os': ?pulumi.Input.mapOptionalInputValue<PodOSPatch, Map<String, dynamic>>(os, (value) => value.toMap()),
      'overhead': ?overhead,
      'preemptionPolicy': ?preemptionPolicy,
      'priority': ?priority,
      'priorityClassName': ?priorityClassName,
      'readinessGates': ?pulumi.Input.mapOptionalInputValue<List<PodReadinessGatePatch>, List<Map<String, dynamic>>>(readinessGates, (value) => pulumi.Input.encodeList<PodReadinessGatePatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceClaims': ?pulumi.Input.mapOptionalInputValue<List<PodResourceClaimPatch>, List<Map<String, dynamic>>>(resourceClaims, (value) => pulumi.Input.encodeList<PodResourceClaimPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resources': ?pulumi.Input.mapOptionalInputValue<ResourceRequirementsPatch, Map<String, dynamic>>(resources, (value) => value.toMap()),
      'restartPolicy': ?restartPolicy,
      'runtimeClassName': ?runtimeClassName,
      'schedulerName': ?schedulerName,
      'schedulingGates': ?pulumi.Input.mapOptionalInputValue<List<PodSchedulingGatePatch>, List<Map<String, dynamic>>>(schedulingGates, (value) => pulumi.Input.encodeList<PodSchedulingGatePatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'schedulingGroup': ?pulumi.Input.mapOptionalInputValue<PodSchedulingGroupPatch, Map<String, dynamic>>(schedulingGroup, (value) => value.toMap()),
      'securityContext': ?pulumi.Input.mapOptionalInputValue<PodSecurityContextPatch, Map<String, dynamic>>(securityContext, (value) => value.toMap()),
      'serviceAccount': ?serviceAccount,
      'serviceAccountName': ?serviceAccountName,
      'setHostnameAsFQDN': ?setHostnameAsFQDN,
      'shareProcessNamespace': ?shareProcessNamespace,
      'subdomain': ?subdomain,
      'terminationGracePeriodSeconds': ?terminationGracePeriodSeconds,
      'tolerations': ?pulumi.Input.mapOptionalInputValue<List<TolerationPatch>, List<Map<String, dynamic>>>(tolerations, (value) => pulumi.Input.encodeList<TolerationPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'topologySpreadConstraints': ?pulumi.Input.mapOptionalInputValue<List<TopologySpreadConstraintPatch>, List<Map<String, dynamic>>>(topologySpreadConstraints, (value) => pulumi.Input.encodeList<TopologySpreadConstraintPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'volumes': ?pulumi.Input.mapOptionalInputValue<List<VolumePatch>, List<Map<String, dynamic>>>(volumes, (value) => pulumi.Input.encodeList<VolumePatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'workloadRef': ?pulumi.Input.mapOptionalInputValue<WorkloadReferencePatch, Map<String, dynamic>>(workloadRef, (value) => value.toMap()),
    };
  }

  factory PodSpecPatch.fromMap(Map<String, dynamic> map) {
    return PodSpecPatch(
      activeDeadlineSeconds: (() { final guardedValue = map['activeDeadlineSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      affinity: (() { final guardedValue = map['affinity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AffinityPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      automountServiceAccountToken: (() { final guardedValue = map['automountServiceAccountToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      containers: (() { final guardedValue = map['containers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ContainerPatch>(guardedValue, (value) => ContainerPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      dnsConfig: (() { final guardedValue = map['dnsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PodDNSConfigPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dnsPolicy: (() { final guardedValue = map['dnsPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableServiceLinks: (() { final guardedValue = map['enableServiceLinks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ephemeralContainers: (() { final guardedValue = map['ephemeralContainers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EphemeralContainerPatch>(guardedValue, (value) => EphemeralContainerPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      evictionResponders: (() { final guardedValue = map['evictionResponders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EvictionResponderPatch>(guardedValue, (value) => EvictionResponderPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      hostAliases: (() { final guardedValue = map['hostAliases']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HostAliasPatch>(guardedValue, (value) => HostAliasPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      hostIPC: (() { final guardedValue = map['hostIPC']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      hostNetwork: (() { final guardedValue = map['hostNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      hostPID: (() { final guardedValue = map['hostPID']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      hostUsers: (() { final guardedValue = map['hostUsers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostnameOverride: (() { final guardedValue = map['hostnameOverride']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imagePullSecrets: (() { final guardedValue = map['imagePullSecrets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LocalObjectReferencePatch>(guardedValue, (value) => LocalObjectReferencePatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      initContainers: (() { final guardedValue = map['initContainers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ContainerPatch>(guardedValue, (value) => ContainerPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      nodeName: (() { final guardedValue = map['nodeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeSelector: (() { final guardedValue = map['nodeSelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      os: (() { final guardedValue = map['os']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PodOSPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      overhead: (() { final guardedValue = map['overhead']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      preemptionPolicy: (() { final guardedValue = map['preemptionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      priorityClassName: (() { final guardedValue = map['priorityClassName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      readinessGates: (() { final guardedValue = map['readinessGates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PodReadinessGatePatch>(guardedValue, (value) => PodReadinessGatePatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceClaims: (() { final guardedValue = map['resourceClaims']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PodResourceClaimPatch>(guardedValue, (value) => PodResourceClaimPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceRequirementsPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      restartPolicy: (() { final guardedValue = map['restartPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runtimeClassName: (() { final guardedValue = map['runtimeClassName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schedulerName: (() { final guardedValue = map['schedulerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schedulingGates: (() { final guardedValue = map['schedulingGates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PodSchedulingGatePatch>(guardedValue, (value) => PodSchedulingGatePatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      schedulingGroup: (() { final guardedValue = map['schedulingGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PodSchedulingGroupPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      securityContext: (() { final guardedValue = map['securityContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PodSecurityContextPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccountName: (() { final guardedValue = map['serviceAccountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      setHostnameAsFQDN: (() { final guardedValue = map['setHostnameAsFQDN']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      shareProcessNamespace: (() { final guardedValue = map['shareProcessNamespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      subdomain: (() { final guardedValue = map['subdomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      terminationGracePeriodSeconds: (() { final guardedValue = map['terminationGracePeriodSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      tolerations: (() { final guardedValue = map['tolerations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TolerationPatch>(guardedValue, (value) => TolerationPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      topologySpreadConstraints: (() { final guardedValue = map['topologySpreadConstraints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TopologySpreadConstraintPatch>(guardedValue, (value) => TopologySpreadConstraintPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      volumes: (() { final guardedValue = map['volumes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VolumePatch>(guardedValue, (value) => VolumePatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      workloadRef: (() { final guardedValue = map['workloadRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkloadReferencePatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
