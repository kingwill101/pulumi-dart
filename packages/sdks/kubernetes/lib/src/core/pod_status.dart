// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_status.dart';
import 'host_ip.dart';
import 'node_allocatable_resource_claim_status.dart';
import 'pod_condition.dart';
import 'pod_extended_resource_claim_status.dart';
import 'pod_ip.dart';
import 'pod_resource_claim_status.dart';
import 'pod_volume_health.dart';
import 'resource_requirements.dart';

/// PodStatus represents information about the status of a pod. Status may trail the actual state of a system, especially if the node that hosts the pod cannot contact the control plane.
class PodStatus {
  /// AllocatedResources is the total requests allocated for this pod by the node. If pod-level requests are not set, this will be the total requests aggregated across containers in the pod.
  final pulumi.Input<Map<String, String>?>? allocatedResources;
  /// Current service state of pod. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions
  final pulumi.Input<List<PodCondition>?>? conditions;
  /// Statuses of containers in this pod. Each container in the pod should have at most one status in this list, and all statuses should be for containers in the pod. However this is not enforced. If a status for a non-existent container is present in the list, or the list has duplicate names, the behavior of various Kubernetes components is not defined and those statuses might be ignored. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-and-container-status
  final pulumi.Input<List<ContainerStatus>?>? containerStatuses;
  /// Statuses for any ephemeral containers that have run in this pod. Each ephemeral container in the pod should have at most one status in this list, and all statuses should be for containers in the pod. However this is not enforced. If a status for a non-existent container is present in the list, or the list has duplicate names, the behavior of various Kubernetes components is not defined and those statuses might be ignored. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-and-container-status
  final pulumi.Input<List<ContainerStatus>?>? ephemeralContainerStatuses;
  /// Status of extended resource claim backed by DRA.
  final pulumi.Input<PodExtendedResourceClaimStatus?>? extendedResourceClaimStatus;
  /// hostIP holds the IP address of the host to which the pod is assigned. Empty if the pod has not started yet. A pod can be assigned to a node that has a problem in kubelet which in turns mean that HostIP will not be updated even if there is a node is assigned to pod
  final pulumi.Input<String?>? hostIP;
  /// hostIPs holds the IP addresses allocated to the host. If this field is specified, the first entry must match the hostIP field. This list is empty if the pod has not started yet. A pod can be assigned to a node that has a problem in kubelet which in turns means that HostIPs will not be updated even if there is a node is assigned to this pod.
  final pulumi.Input<List<HostIP>?>? hostIPs;
  /// Statuses of init containers in this pod. The most recent successful non-restartable init container will have ready = true, the most recently started container will have startTime set. Each init container in the pod should have at most one status in this list, and all statuses should be for containers in the pod. However this is not enforced. If a status for a non-existent container is present in the list, or the list has duplicate names, the behavior of various Kubernetes components is not defined and those statuses might be ignored. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#pod-and-container-status
  final pulumi.Input<List<ContainerStatus>?>? initContainerStatuses;
  /// A human readable message indicating details about why the pod is in this condition.
  final pulumi.Input<String?>? message;
  /// NodeAllocatableResourceClaimStatuses contains the status of node-allocatable resources that were allocated for this pod through DRA claims. This includes resources currently reported in v1.Node `status.allocatable` that are not extended resources (see https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#extended-resources). Examples include "cpu", "memory", "ephemeral-storage", and hugepages.
  final pulumi.Input<List<NodeAllocatableResourceClaimStatus>?>? nodeAllocatableResourceClaimStatuses;
  /// nominatedNodeName is set only when this pod preempts other pods on the node, but it cannot be scheduled right away as preemption victims receive their graceful termination periods. This field does not guarantee that the pod will be scheduled on this node. Scheduler may decide to place the pod elsewhere if other nodes become available sooner. Scheduler may also decide to give the resources on this node to a higher priority pod that is created after preemption. As a result, this field may be different than PodSpec.nodeName when the pod is scheduled.
  final pulumi.Input<String?>? nominatedNodeName;
  /// If set, this represents the .metadata.generation that the pod status was set based upon. The PodObservedGenerationTracking feature gate must be enabled to use this field.
  final pulumi.Input<int?>? observedGeneration;
  /// The phase of a Pod is a simple, high-level summary of where the Pod is in its lifecycle. The conditions array, the reason and message fields, and the individual container status arrays contain more detail about the pod's status. There are five possible phase values:
  ///
  /// Pending: The pod has been accepted by the Kubernetes system, but one or more of the container images has not been created. This includes time before being scheduled as well as time spent downloading images over the network, which could take a while. Running: The pod has been bound to a node, and all of the containers have been created. At least one container is still running, or is in the process of starting or restarting. Succeeded: All containers in the pod have terminated in success, and will not be restarted. Failed: All containers in the pod have terminated, and at least one container has terminated in failure. The container either exited with non-zero status or was terminated by the system. Unknown: For some reason the state of the pod could not be obtained, typically due to an error in communicating with the host of the pod.
  ///
  /// More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-phase
  final pulumi.Input<String?>? phase;
  /// podIP address allocated to the pod. Routable at least within the cluster. Empty if not yet allocated.
  final pulumi.Input<String?>? podIP;
  /// podIPs holds the IP addresses allocated to the pod. If this field is specified, the 0th entry must match the podIP field. Pods may be allocated at most 1 value for each of IPv4 and IPv6. This list is empty if no IPs have been allocated yet.
  final pulumi.Input<List<PodIP>?>? podIPs;
  /// The Quality of Service (QOS) classification assigned to the pod based on resource requirements See PodQOSClass type for available QOS classes More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-qos/#quality-of-service-classes
  final pulumi.Input<String?>? qosClass;
  /// A brief CamelCase message indicating details about why the pod is in this state. e.g. 'Evicted'
  final pulumi.Input<String?>? reason;
  /// Status of resources resize desired for pod's containers. It is empty if no resources resize is pending. Any changes to container resources will automatically set this to "Proposed" Deprecated: Resize status is moved to two pod conditions PodResizePending and PodResizeInProgress. PodResizePending will track states where the spec has been resized, but the Kubelet has not yet allocated the resources. PodResizeInProgress will track in-progress resizes, and should be present whenever allocated resources != acknowledged resources.
  final pulumi.Input<String?>? resize;
  /// Status of resource claims.
  final pulumi.Input<List<PodResourceClaimStatus>?>? resourceClaimStatuses;
  /// Resources represents the compute resource requests and limits that have been applied at the pod level if pod-level requests or limits are set in PodSpec.Resources
  final pulumi.Input<ResourceRequirements?>? resources;
  /// RFC 3339 date and time at which the object was acknowledged by the Kubelet. This is before the Kubelet pulled the container image(s) for the pod.
  final pulumi.Input<String?>? startTime;
  /// volumeHealth contains node-reported health for each volume the pod is using. Populated by the kubelet on the pod's node.
  final pulumi.Input<List<PodVolumeHealth>?>? volumeHealth;

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
  /// [nodeAllocatableResourceClaimStatuses] NodeAllocatableResourceClaimStatuses contains the status of node-allocatable resources that were allocated for this pod through DRA claims. This includes resources currently reported in v1.Node `status.allocatable` that are not extended resources (see https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#extended-resources). Examples include "cpu", "memory", "ephemeral-storage", and hugepages.
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
  /// [volumeHealth] volumeHealth contains node-reported health for each volume the pod is using. Populated by the kubelet on the pod's node.
  const PodStatus({
    this.allocatedResources,
    this.conditions,
    this.containerStatuses,
    this.ephemeralContainerStatuses,
    this.extendedResourceClaimStatus,
    this.hostIP,
    this.hostIPs,
    this.initContainerStatuses,
    this.message,
    this.nodeAllocatableResourceClaimStatuses,
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
    this.volumeHealth,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedResources': ?allocatedResources,
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<PodCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<PodCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'containerStatuses': ?pulumi.Input.mapOptionalInputValue<List<ContainerStatus>, List<Map<String, dynamic>>>(containerStatuses, (value) => pulumi.Input.encodeList<ContainerStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ephemeralContainerStatuses': ?pulumi.Input.mapOptionalInputValue<List<ContainerStatus>, List<Map<String, dynamic>>>(ephemeralContainerStatuses, (value) => pulumi.Input.encodeList<ContainerStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'extendedResourceClaimStatus': ?pulumi.Input.mapOptionalInputValue<PodExtendedResourceClaimStatus, Map<String, dynamic>>(extendedResourceClaimStatus, (value) => value.toMap()),
      'hostIP': ?hostIP,
      'hostIPs': ?pulumi.Input.mapOptionalInputValue<List<HostIP>, List<Map<String, dynamic>>>(hostIPs, (value) => pulumi.Input.encodeList<HostIP, Map<String, dynamic>>(value, (value) => value.toMap())),
      'initContainerStatuses': ?pulumi.Input.mapOptionalInputValue<List<ContainerStatus>, List<Map<String, dynamic>>>(initContainerStatuses, (value) => pulumi.Input.encodeList<ContainerStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'message': ?message,
      'nodeAllocatableResourceClaimStatuses': ?pulumi.Input.mapOptionalInputValue<List<NodeAllocatableResourceClaimStatus>, List<Map<String, dynamic>>>(nodeAllocatableResourceClaimStatuses, (value) => pulumi.Input.encodeList<NodeAllocatableResourceClaimStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nominatedNodeName': ?nominatedNodeName,
      'observedGeneration': ?observedGeneration,
      'phase': ?phase,
      'podIP': ?podIP,
      'podIPs': ?pulumi.Input.mapOptionalInputValue<List<PodIP>, List<Map<String, dynamic>>>(podIPs, (value) => pulumi.Input.encodeList<PodIP, Map<String, dynamic>>(value, (value) => value.toMap())),
      'qosClass': ?qosClass,
      'reason': ?reason,
      'resize': ?resize,
      'resourceClaimStatuses': ?pulumi.Input.mapOptionalInputValue<List<PodResourceClaimStatus>, List<Map<String, dynamic>>>(resourceClaimStatuses, (value) => pulumi.Input.encodeList<PodResourceClaimStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resources': ?pulumi.Input.mapOptionalInputValue<ResourceRequirements, Map<String, dynamic>>(resources, (value) => value.toMap()),
      'startTime': ?startTime,
      'volumeHealth': ?pulumi.Input.mapOptionalInputValue<List<PodVolumeHealth>, List<Map<String, dynamic>>>(volumeHealth, (value) => pulumi.Input.encodeList<PodVolumeHealth, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PodStatus.fromMap(Map<String, dynamic> map) {
    return PodStatus(
      allocatedResources: (() { final guardedValue = map['allocatedResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PodCondition>(guardedValue, (value) => PodCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      containerStatuses: (() { final guardedValue = map['containerStatuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ContainerStatus>(guardedValue, (value) => ContainerStatus.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ephemeralContainerStatuses: (() { final guardedValue = map['ephemeralContainerStatuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ContainerStatus>(guardedValue, (value) => ContainerStatus.fromMap((value as Map).cast<String, dynamic>()))); })(),
      extendedResourceClaimStatus: (() { final guardedValue = map['extendedResourceClaimStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PodExtendedResourceClaimStatus.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hostIP: (() { final guardedValue = map['hostIP']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostIPs: (() { final guardedValue = map['hostIPs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HostIP>(guardedValue, (value) => HostIP.fromMap((value as Map).cast<String, dynamic>()))); })(),
      initContainerStatuses: (() { final guardedValue = map['initContainerStatuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ContainerStatus>(guardedValue, (value) => ContainerStatus.fromMap((value as Map).cast<String, dynamic>()))); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeAllocatableResourceClaimStatuses: (() { final guardedValue = map['nodeAllocatableResourceClaimStatuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NodeAllocatableResourceClaimStatus>(guardedValue, (value) => NodeAllocatableResourceClaimStatus.fromMap((value as Map).cast<String, dynamic>()))); })(),
      nominatedNodeName: (() { final guardedValue = map['nominatedNodeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      observedGeneration: (() { final guardedValue = map['observedGeneration']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      phase: (() { final guardedValue = map['phase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      podIP: (() { final guardedValue = map['podIP']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      podIPs: (() { final guardedValue = map['podIPs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PodIP>(guardedValue, (value) => PodIP.fromMap((value as Map).cast<String, dynamic>()))); })(),
      qosClass: (() { final guardedValue = map['qosClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reason: (() { final guardedValue = map['reason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resize: (() { final guardedValue = map['resize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceClaimStatuses: (() { final guardedValue = map['resourceClaimStatuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PodResourceClaimStatus>(guardedValue, (value) => PodResourceClaimStatus.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceRequirements.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumeHealth: (() { final guardedValue = map['volumeHealth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PodVolumeHealth>(guardedValue, (value) => PodVolumeHealth.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
