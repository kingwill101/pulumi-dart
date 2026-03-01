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
  final ServiceTaskSpecContainerSpec containerSpec;
  /// A counter that triggers an update even if no relevant parameters have been changed. See the [spec](https://github.com/docker/swarmkit/blob/master/api/specs.proto#L126).
  final int? forceUpdate;
  /// Specifies the log driver to use for tasks created from this spec. If not present, the default one for the swarm will be used, finally falling back to the engine default if not specified
  final ServiceTaskSpecLogDriver? logDriver;
  /// The networks the container is attached to
  final List<ServiceTaskSpecNetworksAdvanced>? networksAdvanceds;
  /// The placement preferences
  final ServiceTaskSpecPlacement? placement;
  /// Resource requirements which apply to each individual container created as part of the service
  final ServiceTaskSpecResources? resources;
  /// Specification for the restart policy which applies to containers created as part of this service.
  final ServiceTaskSpecRestartPolicy? restartPolicy;
  /// Runtime is the type of runtime specified for the task executor. See the [types](https://github.com/moby/moby/blob/master/api/types/swarm/runtime.go).
  final String? runtime;

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
      'containerSpec': containerSpec.toMap(),
      'forceUpdate': ?forceUpdate,
      'logDriver': ?logDriver == null ? null : logDriver!.toMap(),
      'networksAdvanceds': ?networksAdvanceds == null ? null : pulumi.Input.encodeList<ServiceTaskSpecNetworksAdvanced, Map<String, dynamic>>(networksAdvanceds!, (value) => value.toMap()),
      'placement': ?placement == null ? null : placement!.toMap(),
      'resources': ?resources == null ? null : resources!.toMap(),
      'restartPolicy': ?restartPolicy == null ? null : restartPolicy!.toMap(),
      'runtime': ?runtime,
    };
  }

  factory ServiceTaskSpec.fromMap(Map<String, dynamic> map) {
    return ServiceTaskSpec(
      containerSpec: ServiceTaskSpecContainerSpec.fromMap((map['containerSpec'] as Map).cast<String, dynamic>()),
      forceUpdate: map['forceUpdate'] == null ? null : map['forceUpdate'] as int,
      logDriver: map['logDriver'] == null ? null : ServiceTaskSpecLogDriver.fromMap((map['logDriver'] as Map).cast<String, dynamic>()),
      networksAdvanceds: map['networksAdvanceds'] == null ? null : pulumi.Input.decodeList<ServiceTaskSpecNetworksAdvanced>(map['networksAdvanceds'], (value) => ServiceTaskSpecNetworksAdvanced.fromMap((value as Map).cast<String, dynamic>())),
      placement: map['placement'] == null ? null : ServiceTaskSpecPlacement.fromMap((map['placement'] as Map).cast<String, dynamic>()),
      resources: map['resources'] == null ? null : ServiceTaskSpecResources.fromMap((map['resources'] as Map).cast<String, dynamic>()),
      restartPolicy: map['restartPolicy'] == null ? null : ServiceTaskSpecRestartPolicy.fromMap((map['restartPolicy'] as Map).cast<String, dynamic>()),
      runtime: map['runtime'] == null ? null : map['runtime'] as String,
    );
  }
}

