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
  final Map<String, String>? allocatedResources;
  /// AllocatedResourcesStatus represents the status of various resources allocated for this Pod.
  final List<ResourceStatus>? allocatedResourcesStatus;
  /// ContainerID is the ID of the container in the format '<type>://<container_id>'. Where type is a container runtime identifier, returned from Version call of CRI API (for example "containerd").
  final String? containerID;
  /// Image is the name of container image that the container is running. The container image may not match the image used in the PodSpec, as it may have been resolved by the runtime. More info: https://kubernetes.io/docs/concepts/containers/images.
  final String image;
  /// ImageID is the image ID of the container's image. The image ID may not match the image ID of the image used in the PodSpec, as it may have been resolved by the runtime.
  final String imageID;
  /// LastTerminationState holds the last termination state of the container to help debug container crashes and restarts. This field is not populated if the container is still running and RestartCount is 0.
  final ContainerState? lastState;
  /// Name is a DNS_LABEL representing the unique name of the container. Each container in a pod must have a unique name across all container types. Cannot be updated.
  final String name;
  /// Ready specifies whether the container is currently passing its readiness check. The value will change as readiness probes keep executing. If no readiness probes are specified, this field defaults to true once the container is fully started (see Started field).
  ///
  /// The value is typically used to determine whether a container is ready to accept traffic.
  final bool ready;
  /// Resources represents the compute resource requests and limits that have been successfully enacted on the running container after it has been started or has been successfully resized.
  final ResourceRequirements? resources;
  /// RestartCount holds the number of times the container has been restarted. Kubelet makes an effort to always increment the value, but there are cases when the state may be lost due to node restarts and then the value may be reset to 0. The value is never negative.
  final int restartCount;
  /// Started indicates whether the container has finished its postStart lifecycle hook and passed its startup probe. Initialized as false, becomes true after startupProbe is considered successful. Resets to false when the container is restarted, or if kubelet loses state temporarily. In both cases, startup probes will run again. Is always true when no startupProbe is defined and container is running and has passed the postStart lifecycle hook. The null value must be treated the same as false.
  final bool? started;
  /// State holds details about the container's current condition.
  final ContainerState? state;
  /// StopSignal reports the effective stop signal for this container
  final String? stopSignal;
  /// User represents user identity information initially attached to the first process of the container
  final ContainerUser? user;
  /// Status of volume mounts.
  final List<VolumeMountStatus>? volumeMounts;

  /// Creates a new [ContainerStatus].
  /// [allocatedResources] AllocatedResources represents the compute resources allocated for this container by the node. Kubelet sets this value to Container.Resources.Requests upon successful pod admission and after successfully admitting desired pod resize.
  /// [allocatedResourcesStatus] AllocatedResourcesStatus represents the status of various resources allocated for this Pod.
  /// [containerID] ContainerID is the ID of the container in the format '<type>://<container_id>'. Where type is a container runtime identifier, returned from Version call of CRI API (for example "containerd").
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
  ContainerStatus({
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
      'allocatedResourcesStatus': ?allocatedResourcesStatus == null ? null : pulumi.Input.encodeList<ResourceStatus, Map<String, dynamic>>(allocatedResourcesStatus!, (value) => value.toMap()),
      'containerID': ?containerID,
      'image': image,
      'imageID': imageID,
      'lastState': ?lastState == null ? null : lastState!.toMap(),
      'name': name,
      'ready': ready,
      'resources': ?resources == null ? null : resources!.toMap(),
      'restartCount': restartCount,
      'started': ?started,
      'state': ?state == null ? null : state!.toMap(),
      'stopSignal': ?stopSignal,
      'user': ?user == null ? null : user!.toMap(),
      'volumeMounts': ?volumeMounts == null ? null : pulumi.Input.encodeList<VolumeMountStatus, Map<String, dynamic>>(volumeMounts!, (value) => value.toMap()),
    };
  }

  factory ContainerStatus.fromMap(Map<String, dynamic> map) {
    return ContainerStatus(
      allocatedResources: map['allocatedResources'] == null ? null : (map['allocatedResources'] as Map).cast<String, String>(),
      allocatedResourcesStatus: map['allocatedResourcesStatus'] == null ? null : pulumi.Input.decodeList<ResourceStatus>(map['allocatedResourcesStatus'], (value) => ResourceStatus.fromMap((value as Map).cast<String, dynamic>())),
      containerID: map['containerID'] == null ? null : map['containerID'] as String,
      image: map['image'] as String,
      imageID: map['imageID'] as String,
      lastState: map['lastState'] == null ? null : ContainerState.fromMap((map['lastState'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      ready: map['ready'] as bool,
      resources: map['resources'] == null ? null : ResourceRequirements.fromMap((map['resources'] as Map).cast<String, dynamic>()),
      restartCount: map['restartCount'] as int,
      started: map['started'] == null ? null : map['started'] as bool,
      state: map['state'] == null ? null : ContainerState.fromMap((map['state'] as Map).cast<String, dynamic>()),
      stopSignal: map['stopSignal'] == null ? null : map['stopSignal'] as String,
      user: map['user'] == null ? null : ContainerUser.fromMap((map['user'] as Map).cast<String, dynamic>()),
      volumeMounts: map['volumeMounts'] == null ? null : pulumi.Input.decodeList<VolumeMountStatus>(map['volumeMounts'], (value) => VolumeMountStatus.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

