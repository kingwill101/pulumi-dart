// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_state.dart';
import 'container_user.dart';
import 'resource_requirements.dart';
import 'resource_status.dart';
import 'volume_mount_status.dart';

/// ContainerStatus contains details for the current status of this container.
class ContainerStatus {
  /// AllocatedResources represents the compute resources allocated for this container by the node. Kubelet sets this value to Container.Resources.Requests upon successful pod admission and after successfully admitting desired pod resize.
  final pulumi.Input<Map<String, String>?>? allocatedResources;
  /// AllocatedResourcesStatus represents the status of various resources allocated for this Pod.
  final pulumi.Input<List<ResourceStatus>?>? allocatedResourcesStatus;
  /// ContainerID is the ID of the container in the format '&lt;type&gt;://&lt;container_id&gt;'. Where type is a container runtime identifier, returned from Version call of CRI API (for example "containerd").
  final pulumi.Input<String?>? containerID;
  /// Image is the name of container image that the container is running. The container image may not match the image used in the PodSpec, as it may have been resolved by the runtime. More info: https://kubernetes.io/docs/concepts/containers/images.
  final pulumi.Input<String> image;
  /// ImageID is the image ID of the container's image. The image ID may not match the image ID of the image used in the PodSpec, as it may have been resolved by the runtime.
  final pulumi.Input<String> imageID;
  /// LastTerminationState holds the last termination state of the container to help debug container crashes and restarts. This field is not populated if the container is still running and RestartCount is 0.
  final pulumi.Input<ContainerState?>? lastState;
  /// Name is a DNS_LABEL representing the unique name of the container. Each container in a pod must have a unique name across all container types. Cannot be updated.
  final pulumi.Input<String> name;
  /// Ready specifies whether the container is currently passing its readiness check. The value will change as readiness probes keep executing. If no readiness probes are specified, this field defaults to true once the container is fully started (see Started field).
  ///
  /// The value is typically used to determine whether a container is ready to accept traffic.
  final pulumi.Input<bool> ready;
  /// Resources represents the compute resource requests and limits that have been successfully enacted on the running container after it has been started or has been successfully resized.
  final pulumi.Input<ResourceRequirements?>? resources;
  /// RestartCount holds the number of times the container has been restarted. Kubelet makes an effort to always increment the value, but there are cases when the state may be lost due to node restarts and then the value may be reset to 0. The value is never negative.
  final pulumi.Input<int> restartCount;
  /// Started indicates whether the container has finished its postStart lifecycle hook and passed its startup probe. Initialized as false, becomes true after startupProbe is considered successful. Resets to false when the container is restarted, or if kubelet loses state temporarily. In both cases, startup probes will run again. Is always true when no startupProbe is defined and container is running and has passed the postStart lifecycle hook. The null value must be treated the same as false.
  final pulumi.Input<bool?>? started;
  /// State holds details about the container's current condition.
  final pulumi.Input<ContainerState?>? state;
  /// StopSignal reports the effective stop signal for this container
  final pulumi.Input<String?>? stopSignal;
  /// User represents user identity information initially attached to the first process of the container
  final pulumi.Input<ContainerUser?>? user;
  /// Status of volume mounts.
  final pulumi.Input<List<VolumeMountStatus>?>? volumeMounts;

  /// Creates a new [ContainerStatus].
  /// [allocatedResources] AllocatedResources represents the compute resources allocated for this container by the node. Kubelet sets this value to Container.Resources.Requests upon successful pod admission and after successfully admitting desired pod resize.
  /// [allocatedResourcesStatus] AllocatedResourcesStatus represents the status of various resources allocated for this Pod.
  /// [containerID] ContainerID is the ID of the container in the format '&lt;type&gt;://&lt;container_id&gt;'. Where type is a container runtime identifier, returned from Version call of CRI API (for example "containerd").
  /// [image] Image is the name of container image that the container is running. The container image may not match the image used in the PodSpec, as it may have been resolved by the runtime. More info: https://kubernetes.io/docs/concepts/containers/images.
  /// [imageID] ImageID is the image ID of the container's image. The image ID may not match the image ID of the image used in the PodSpec, as it may have been resolved by the runtime.
  /// [lastState] LastTerminationState holds the last termination state of the container to help debug container crashes and restarts. This field is not populated if the container is still running and RestartCount is 0.
  /// [name] Name is a DNS_LABEL representing the unique name of the container. Each container in a pod must have a unique name across all container types. Cannot be updated.
  /// [ready] Ready specifies whether the container is currently passing its readiness check. The value will change as readiness probes keep executing. If no readiness probes are specified, this field defaults to true once the container is fully started (see Started field).
  /// [resources] Resources represents the compute resource requests and limits that have been successfully enacted on the running container after it has been started or has been successfully resized.
  /// [restartCount] RestartCount holds the number of times the container has been restarted. Kubelet makes an effort to always increment the value, but there are cases when the state may be lost due to node restarts and then the value may be reset to 0. The value is never negative.
  /// [started] Started indicates whether the container has finished its postStart lifecycle hook and passed its startup probe. Initialized as false, becomes true after startupProbe is considered successful. Resets to false when the container is restarted, or if kubelet loses state temporarily. In both cases, startup probes will run again. Is always true when no startupProbe is defined and container is running and has passed the postStart lifecycle hook. The null value must be treated the same as false.
  /// [state] State holds details about the container's current condition.
  /// [stopSignal] StopSignal reports the effective stop signal for this container
  /// [user] User represents user identity information initially attached to the first process of the container
  /// [volumeMounts] Status of volume mounts.
  const ContainerStatus({
    this.allocatedResources,
    this.allocatedResourcesStatus,
    this.containerID,
    required this.image,
    required this.imageID,
    this.lastState,
    required this.name,
    required this.ready,
    this.resources,
    required this.restartCount,
    this.started,
    this.state,
    this.stopSignal,
    this.user,
    this.volumeMounts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedResources': ?allocatedResources,
      'allocatedResourcesStatus': ?pulumi.Input.mapOptionalInputValue<List<ResourceStatus>, List<Map<String, dynamic>>>(allocatedResourcesStatus, (value) => pulumi.Input.encodeList<ResourceStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'containerID': ?containerID,
      'image': image,
      'imageID': imageID,
      'lastState': ?pulumi.Input.mapOptionalInputValue<ContainerState, Map<String, dynamic>>(lastState, (value) => value.toMap()),
      'name': name,
      'ready': ready,
      'resources': ?pulumi.Input.mapOptionalInputValue<ResourceRequirements, Map<String, dynamic>>(resources, (value) => value.toMap()),
      'restartCount': restartCount,
      'started': ?started,
      'state': ?pulumi.Input.mapOptionalInputValue<ContainerState, Map<String, dynamic>>(state, (value) => value.toMap()),
      'stopSignal': ?stopSignal,
      'user': ?pulumi.Input.mapOptionalInputValue<ContainerUser, Map<String, dynamic>>(user, (value) => value.toMap()),
      'volumeMounts': ?pulumi.Input.mapOptionalInputValue<List<VolumeMountStatus>, List<Map<String, dynamic>>>(volumeMounts, (value) => pulumi.Input.encodeList<VolumeMountStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ContainerStatus.fromMap(Map<String, dynamic> map) {
    return ContainerStatus(
      allocatedResources: (() { final guardedValue = map['allocatedResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      allocatedResourcesStatus: (() { final guardedValue = map['allocatedResourcesStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceStatus>(guardedValue, (value) => ResourceStatus.fromMap((value as Map).cast<String, dynamic>()))); })(),
      containerID: (() { final guardedValue = map['containerID']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      image: pulumi.Input.fromValue(map['image'] as String),
      imageID: pulumi.Input.fromValue(map['imageID'] as String),
      lastState: (() { final guardedValue = map['lastState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContainerState.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      ready: pulumi.Input.fromValue(map['ready'] as bool),
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceRequirements.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      restartCount: pulumi.Input.fromValue((map['restartCount'] as num).toInt()),
      started: (() { final guardedValue = map['started']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContainerState.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      stopSignal: (() { final guardedValue = map['stopSignal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      user: (() { final guardedValue = map['user']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContainerUser.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      volumeMounts: (() { final guardedValue = map['volumeMounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VolumeMountStatus>(guardedValue, (value) => VolumeMountStatus.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
