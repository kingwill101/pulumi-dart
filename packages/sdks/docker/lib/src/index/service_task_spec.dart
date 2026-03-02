// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_task_spec_container_spec.dart';
import 'service_task_spec_log_driver.dart';
import 'service_task_spec_networks_advanced.dart';
import 'service_task_spec_placement.dart';
import 'service_task_spec_resources.dart';
import 'service_task_spec_restart_policy.dart';

class ServiceTaskSpec {
  /// The spec for each container
  final pulumi.Input<ServiceTaskSpecContainerSpec> containerSpec;
  /// A counter that triggers an update even if no relevant parameters have been changed. See the [spec](https://github.com/docker/swarmkit/blob/master/api/specs.proto#L126).
  final pulumi.Input<int>? forceUpdate;
  /// Specifies the log driver to use for tasks created from this spec. If not present, the default one for the swarm will be used, finally falling back to the engine default if not specified
  final pulumi.Input<ServiceTaskSpecLogDriver>? logDriver;
  /// The networks the container is attached to
  final pulumi.Input<List<ServiceTaskSpecNetworksAdvanced>>? networksAdvanceds;
  /// The placement preferences
  final pulumi.Input<ServiceTaskSpecPlacement>? placement;
  /// Resource requirements which apply to each individual container created as part of the service
  final pulumi.Input<ServiceTaskSpecResources>? resources;
  /// Specification for the restart policy which applies to containers created as part of this service.
  final pulumi.Input<ServiceTaskSpecRestartPolicy>? restartPolicy;
  /// Runtime is the type of runtime specified for the task executor. See the [types](https://github.com/moby/moby/blob/master/api/types/swarm/runtime.go).
  final pulumi.Input<String>? runtime;

  /// Creates a new [ServiceTaskSpec].
  /// [containerSpec] The spec for each container
  /// [forceUpdate] A counter that triggers an update even if no relevant parameters have been changed. See the [spec](https://github.com/docker/swarmkit/blob/master/api/specs.proto#L126).
  /// [logDriver] Specifies the log driver to use for tasks created from this spec. If not present, the default one for the swarm will be used, finally falling back to the engine default if not specified
  /// [networksAdvanceds] The networks the container is attached to
  /// [placement] The placement preferences
  /// [resources] Resource requirements which apply to each individual container created as part of the service
  /// [restartPolicy] Specification for the restart policy which applies to containers created as part of this service.
  /// [runtime] Runtime is the type of runtime specified for the task executor. See the [types](https://github.com/moby/moby/blob/master/api/types/swarm/runtime.go).
  ServiceTaskSpec({
    required this.containerSpec,
    this.forceUpdate,
    this.logDriver,
    this.networksAdvanceds,
    this.placement,
    this.resources,
    this.restartPolicy,
    this.runtime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerSpec': pulumi.Input.mapInputValue<ServiceTaskSpecContainerSpec, Map<String, dynamic>>(containerSpec, (value) => value.toMap()),
      'forceUpdate': ?forceUpdate,
      'logDriver': ?pulumi.Input.mapOptionalInputValue<ServiceTaskSpecLogDriver, Map<String, dynamic>>(logDriver, (value) => value.toMap()),
      'networksAdvanceds': ?pulumi.Input.mapOptionalInputValue<List<ServiceTaskSpecNetworksAdvanced>, List<Map<String, dynamic>>>(networksAdvanceds, (value) => pulumi.Input.encodeList<ServiceTaskSpecNetworksAdvanced, Map<String, dynamic>>(value, (value) => value.toMap())),
      'placement': ?pulumi.Input.mapOptionalInputValue<ServiceTaskSpecPlacement, Map<String, dynamic>>(placement, (value) => value.toMap()),
      'resources': ?pulumi.Input.mapOptionalInputValue<ServiceTaskSpecResources, Map<String, dynamic>>(resources, (value) => value.toMap()),
      'restartPolicy': ?pulumi.Input.mapOptionalInputValue<ServiceTaskSpecRestartPolicy, Map<String, dynamic>>(restartPolicy, (value) => value.toMap()),
      'runtime': ?runtime,
    };
  }

  factory ServiceTaskSpec.fromMap(Map<String, dynamic> map) {
    return ServiceTaskSpec(
      containerSpec: (ServiceTaskSpecContainerSpec.fromMap((map['containerSpec'] as Map).cast<String, dynamic>())).input(),
      forceUpdate: map['forceUpdate'] == null ? null : (map['forceUpdate']! as int).input(),
      logDriver: map['logDriver'] == null ? null : (ServiceTaskSpecLogDriver.fromMap((map['logDriver']! as Map).cast<String, dynamic>())).input(),
      networksAdvanceds: map['networksAdvanceds'] == null ? null : (pulumi.Input.decodeList<ServiceTaskSpecNetworksAdvanced>(map['networksAdvanceds']!, (value) => ServiceTaskSpecNetworksAdvanced.fromMap((value as Map).cast<String, dynamic>()))).input(),
      placement: map['placement'] == null ? null : (ServiceTaskSpecPlacement.fromMap((map['placement']! as Map).cast<String, dynamic>())).input(),
      resources: map['resources'] == null ? null : (ServiceTaskSpecResources.fromMap((map['resources']! as Map).cast<String, dynamic>())).input(),
      restartPolicy: map['restartPolicy'] == null ? null : (ServiceTaskSpecRestartPolicy.fromMap((map['restartPolicy']! as Map).cast<String, dynamic>())).input(),
      runtime: map['runtime'] == null ? null : (map['runtime']! as String).input(),
    );
  }
}

