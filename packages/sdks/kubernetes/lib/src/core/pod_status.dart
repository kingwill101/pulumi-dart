// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_status.dart';
import 'host_ip.dart';
import 'pod_condition.dart';
import 'pod_extended_resource_claim_status.dart';
import 'pod_ip.dart';
import 'pod_resource_claim_status.dart';
import 'resource_requirements.dart';

/// PodStatus represents information about the status of a pod. Status may trail the actual state of a system, especially if the node that hosts the pod cannot contact the control plane.
class PodStatus {
  /// AllocatedResources is the total requests allocated for this pod by the node. If pod-level requests are not set, this will be the total requests aggregated across containers in the pod.
  final Map<String, String>? allocatedResources;
  /// Current service state of pod. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions
  final List<PodCondition>? conditions;
  /// Statuses of containers in this pod. Each container in the pod should have at most one status in this list, and all statuses should be for containers in the pod. However this is not enforced. If a status for a non-existent container is present in the list, or the list has duplicate names, the behavior of various Kubernetes components is not defined and those statuses might be ignored. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-and-container-status
  final List<ContainerStatus>? containerStatuses;
  /// Statuses for any ephemeral containers that have run in this pod. Each ephemeral container in the pod should have at most one status in this list, and all statuses should be for containers in the pod. However this is not enforced. If a status for a non-existent container is present in the list, or the list has duplicate names, the behavior of various Kubernetes components is not defined and those statuses might be ignored. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-and-container-status
  final List<ContainerStatus>? ephemeralContainerStatuses;
  /// Status of extended resource claim backed by DRA.
  final PodExtendedResourceClaimStatus? extendedResourceClaimStatus;
  /// hostIP holds the IP address of the host to which the pod is assigned. Empty if the pod has not started yet. A pod can be assigned to a node that has a problem in kubelet which in turns mean that HostIP will not be updated even if there is a node is assigned to pod
  final String? hostIP;
  /// hostIPs holds the IP addresses allocated to the host. If this field is specified, the first entry must match the hostIP field. This list is empty if the pod has not started yet. A pod can be assigned to a node that has a problem in kubelet which in turns means that HostIPs will not be updated even if there is a node is assigned to this pod.
  final List<HostIP>? hostIPs;
  /// Statuses of init containers in this pod. The most recent successful non-restartable init container will have ready = true, the most recently started container will have startTime set. Each init container in the pod should have at most one status in this list, and all statuses should be for containers in the pod. However this is not enforced. If a status for a non-existent container is present in the list, or the list has duplicate names, the behavior of various Kubernetes components is not defined and those statuses might be ignored. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#pod-and-container-status
  final List<ContainerStatus>? initContainerStatuses;
  /// A human readable message indicating details about why the pod is in this condition.
  final String? message;
  /// nominatedNodeName is set only when this pod preempts other pods on the node, but it cannot be scheduled right away as preemption victims receive their graceful termination periods. This field does not guarantee that the pod will be scheduled on this node. Scheduler may decide to place the pod elsewhere if other nodes become available sooner. Scheduler may also decide to give the resources on this node to a higher priority pod that is created after preemption. As a result, this field may be different than PodSpec.nodeName when the pod is scheduled.
  final String? nominatedNodeName;
  /// If set, this represents the .metadata.generation that the pod status was set based upon. The PodObservedGenerationTracking feature gate must be enabled to use this field.
  final int? observedGeneration;
  /// The phase of a Pod is a simple, high-level summary of where the Pod is in its lifecycle. The conditions array, the reason and message fields, and the individual container status arrays contain more detail about the pod's status. There are five possible phase values:
  ///
  /// Pending: The pod has been accepted by the Kubernetes system, but one or more of the container images has not been created. This includes time before being scheduled as well as time spent downloading images over the network, which could take a while. Running: The pod has been bound to a node, and all of the containers have been created. At least one container is still running, or is in the process of starting or restarting. Succeeded: All containers in the pod have terminated in success, and will not be restarted. Failed: All containers in the pod have terminated, and at least one container has terminated in failure. The container either exited with non-zero status or was terminated by the system. Unknown: For some reason the state of the pod could not be obtained, typically due to an error in communicating with the host of the pod.
  ///
  /// More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-phase
  final String? phase;
  /// podIP address allocated to the pod. Routable at least within the cluster. Empty if not yet allocated.
  final String? podIP;
  /// podIPs holds the IP addresses allocated to the pod. If this field is specified, the 0th entry must match the podIP field. Pods may be allocated at most 1 value for each of IPv4 and IPv6. This list is empty if no IPs have been allocated yet.
  final List<PodIP>? podIPs;
  /// The Quality of Service (QOS) classification assigned to the pod based on resource requirements See PodQOSClass type for available QOS classes More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-qos/#quality-of-service-classes
  final String? qosClass;
  /// A brief CamelCase message indicating details about why the pod is in this state. e.g. 'Evicted'
  final String? reason;
  /// Status of resources resize desired for pod's containers. It is empty if no resources resize is pending. Any changes to container resources will automatically set this to "Proposed" Deprecated: Resize status is moved to two pod conditions PodResizePending and PodResizeInProgress. PodResizePending will track states where the spec has been resized, but the Kubelet has not yet allocated the resources. PodResizeInProgress will track in-progress resizes, and should be present whenever allocated resources != acknowledged resources.
  final String? resize;
  /// Status of resource claims.
  final List<PodResourceClaimStatus>? resourceClaimStatuses;
  /// Resources represents the compute resource requests and limits that have been applied at the pod level if pod-level requests or limits are set in PodSpec.Resources
  final ResourceRequirements? resources;
  /// RFC 3339 date and time at which the object was acknowledged by the Kubelet. This is before the Kubelet pulled the container image(s) for the pod.
  final String? startTime;

  /// Creates a new [PodStatus].
  /// [allocatedResources] AllocatedResources is the total requests allocated for this pod by the node. If pod-level requests are not set, this will be the total requests aggregated across containers in the pod.
  /// [conditions] Current service state of pod. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions
  /// [containerStatuses] Statuses of containers in this pod. Each container in the pod should have at most one status in this list, and all statuses should be for containers in the pod. However this is not enforced. If a status for a non-existent container is present in the list, or the list has duplicate names, the behavior of various Kubernetes components is not defined and those statuses might be ignored. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-and-container-status
  /// [ephemeralContainerStatuses] Statuses for any ephemeral containers that have run in this pod. Each ephemeral container in the pod should have at most one status in this list, and all statuses should be for containers in the pod. However this is not enforced. If a status for a non-existent container is present in the list, or the list has duplicate names, the behavior of various Kubernetes components is not defined and those statuses might be ignored. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-and-container-status
  /// [extendedResourceClaimStatus] Status of extended resource claim backed by DRA.
  /// [hostIP] hostIP holds the IP address of the host to which the pod is assigned. Empty if the pod has not started yet. A pod can be assigned to a node that has a problem in kubelet which in turns mean that HostIP will not be updated even if there is a node is assigned to pod
  /// [hostIPs] hostIPs holds the IP addresses allocated to the host. If this field is specified, the first entry must match the hostIP field. This list is empty if the pod has not started yet. A pod can be assigned to a node that has a problem in kubelet which in turns means that HostIPs will not be updated even if there is a node is assigned to this pod.
  /// [initContainerStatuses] Statuses of init containers in this pod. The most recent successful non-restartable init container will have ready = true, the most recently started container will have startTime set. Each init container in the pod should have at most one status in this list, and all statuses should be for containers in the pod. However this is not enforced. If a status for a non-existent container is present in the list, or the list has duplicate names, the behavior of various Kubernetes components is not defined and those statuses might be ignored. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#pod-and-container-status
  /// [message] A human readable message indicating details about why the pod is in this condition.
  /// [nominatedNodeName] nominatedNodeName is set only when this pod preempts other pods on the node, but it cannot be scheduled right away as preemption victims receive their graceful termination periods. This field does not guarantee that the pod will be scheduled on this node. Scheduler may decide to place the pod elsewhere if other nodes become available sooner. Scheduler may also decide to give the resources on this node to a higher priority pod that is created after preemption. As a result, this field may be different than PodSpec.nodeName when the pod is scheduled.
  /// [observedGeneration] If set, this represents the .metadata.generation that the pod status was set based upon. The PodObservedGenerationTracking feature gate must be enabled to use this field.
  /// [phase] The phase of a Pod is a simple, high-level summary of where the Pod is in its lifecycle. The conditions array, the reason and message fields, and the individual container status arrays contain more detail about the pod's status. There are five possible phase values:
  /// [podIP] podIP address allocated to the pod. Routable at least within the cluster. Empty if not yet allocated.
  /// [podIPs] podIPs holds the IP addresses allocated to the pod. If this field is specified, the 0th entry must match the podIP field. Pods may be allocated at most 1 value for each of IPv4 and IPv6. This list is empty if no IPs have been allocated yet.
  /// [qosClass] The Quality of Service (QOS) classification assigned to the pod based on resource requirements See PodQOSClass type for available QOS classes More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-qos/#quality-of-service-classes
  /// [reason] A brief CamelCase message indicating details about why the pod is in this state. e.g. 'Evicted'
  /// [resize] Status of resources resize desired for pod's containers. It is empty if no resources resize is pending. Any changes to container resources will automatically set this to "Proposed" Deprecated: Resize status is moved to two pod conditions PodResizePending and PodResizeInProgress. PodResizePending will track states where the spec has been resized, but the Kubelet has not yet allocated the resources. PodResizeInProgress will track in-progress resizes, and should be present whenever allocated resources != acknowledged resources.
  /// [resourceClaimStatuses] Status of resource claims.
  /// [resources] Resources represents the compute resource requests and limits that have been applied at the pod level if pod-level requests or limits are set in PodSpec.Resources
  /// [startTime] RFC 3339 date and time at which the object was acknowledged by the Kubelet. This is before the Kubelet pulled the container image(s) for the pod.
  PodStatus({
    this.allocatedResources,
    this.conditions,
    this.containerStatuses,
    this.ephemeralContainerStatuses,
    this.extendedResourceClaimStatus,
    this.hostIP,
    this.hostIPs,
    this.initContainerStatuses,
    this.message,
    this.nominatedNodeName,
    this.observedGeneration,
    this.phase,
    this.podIP,
    this.podIPs,
    this.qosClass,
    this.reason,
    this.resize,
    this.resourceClaimStatuses,
    this.resources,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedResources': ?allocatedResources,
      'conditions': ?conditions == null ? null : pulumi.Input.encodeList<PodCondition, Map<String, dynamic>>(conditions!, (value) => value.toMap()),
      'containerStatuses': ?containerStatuses == null ? null : pulumi.Input.encodeList<ContainerStatus, Map<String, dynamic>>(containerStatuses!, (value) => value.toMap()),
      'ephemeralContainerStatuses': ?ephemeralContainerStatuses == null ? null : pulumi.Input.encodeList<ContainerStatus, Map<String, dynamic>>(ephemeralContainerStatuses!, (value) => value.toMap()),
      'extendedResourceClaimStatus': ?extendedResourceClaimStatus == null ? null : extendedResourceClaimStatus!.toMap(),
      'hostIP': ?hostIP,
      'hostIPs': ?hostIPs == null ? null : pulumi.Input.encodeList<HostIP, Map<String, dynamic>>(hostIPs!, (value) => value.toMap()),
      'initContainerStatuses': ?initContainerStatuses == null ? null : pulumi.Input.encodeList<ContainerStatus, Map<String, dynamic>>(initContainerStatuses!, (value) => value.toMap()),
      'message': ?message,
      'nominatedNodeName': ?nominatedNodeName,
      'observedGeneration': ?observedGeneration,
      'phase': ?phase,
      'podIP': ?podIP,
      'podIPs': ?podIPs == null ? null : pulumi.Input.encodeList<PodIP, Map<String, dynamic>>(podIPs!, (value) => value.toMap()),
      'qosClass': ?qosClass,
      'reason': ?reason,
      'resize': ?resize,
      'resourceClaimStatuses': ?resourceClaimStatuses == null ? null : pulumi.Input.encodeList<PodResourceClaimStatus, Map<String, dynamic>>(resourceClaimStatuses!, (value) => value.toMap()),
      'resources': ?resources == null ? null : resources!.toMap(),
      'startTime': ?startTime,
    };
  }

  factory PodStatus.fromMap(Map<String, dynamic> map) {
    return PodStatus(
      allocatedResources: map['allocatedResources'] == null ? null : (map['allocatedResources'] as Map).cast<String, String>(),
      conditions: map['conditions'] == null ? null : pulumi.Input.decodeList<PodCondition>(map['conditions'], (value) => PodCondition.fromMap((value as Map).cast<String, dynamic>())),
      containerStatuses: map['containerStatuses'] == null ? null : pulumi.Input.decodeList<ContainerStatus>(map['containerStatuses'], (value) => ContainerStatus.fromMap((value as Map).cast<String, dynamic>())),
      ephemeralContainerStatuses: map['ephemeralContainerStatuses'] == null ? null : pulumi.Input.decodeList<ContainerStatus>(map['ephemeralContainerStatuses'], (value) => ContainerStatus.fromMap((value as Map).cast<String, dynamic>())),
      extendedResourceClaimStatus: map['extendedResourceClaimStatus'] == null ? null : PodExtendedResourceClaimStatus.fromMap((map['extendedResourceClaimStatus'] as Map).cast<String, dynamic>()),
      hostIP: map['hostIP'] == null ? null : map['hostIP'] as String,
      hostIPs: map['hostIPs'] == null ? null : pulumi.Input.decodeList<HostIP>(map['hostIPs'], (value) => HostIP.fromMap((value as Map).cast<String, dynamic>())),
      initContainerStatuses: map['initContainerStatuses'] == null ? null : pulumi.Input.decodeList<ContainerStatus>(map['initContainerStatuses'], (value) => ContainerStatus.fromMap((value as Map).cast<String, dynamic>())),
      message: map['message'] == null ? null : map['message'] as String,
      nominatedNodeName: map['nominatedNodeName'] == null ? null : map['nominatedNodeName'] as String,
      observedGeneration: map['observedGeneration'] == null ? null : map['observedGeneration'] as int,
      phase: map['phase'] == null ? null : map['phase'] as String,
      podIP: map['podIP'] == null ? null : map['podIP'] as String,
      podIPs: map['podIPs'] == null ? null : pulumi.Input.decodeList<PodIP>(map['podIPs'], (value) => PodIP.fromMap((value as Map).cast<String, dynamic>())),
      qosClass: map['qosClass'] == null ? null : map['qosClass'] as String,
      reason: map['reason'] == null ? null : map['reason'] as String,
      resize: map['resize'] == null ? null : map['resize'] as String,
      resourceClaimStatuses: map['resourceClaimStatuses'] == null ? null : pulumi.Input.decodeList<PodResourceClaimStatus>(map['resourceClaimStatuses'], (value) => PodResourceClaimStatus.fromMap((value as Map).cast<String, dynamic>())),
      resources: map['resources'] == null ? null : ResourceRequirements.fromMap((map['resources'] as Map).cast<String, dynamic>()),
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
    );
  }
}

