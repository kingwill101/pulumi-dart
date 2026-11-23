// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'memory_layer_memory_config.dart';

/// Input properties used for looking up and filtering MemoryLayer resources.
class MemoryLayerState {
  /// The ID of the cluster to enable the memory layer on.
  final pulumi.Input<String?>? cluster;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// System-generated token used by the server to ensure that the client has an up-to-date value before proceeding.
  final pulumi.Input<String?>? etag;
  /// The name of the instance to enable the memory layer within.
  final pulumi.Input<String?>? instance;
  /// The memory configuration for the cluster.
  /// Structure is documented below.
  final pulumi.Input<List<MemoryLayerMemoryConfig>?>? memoryConfigs;
  /// The unique name of the memory layer. Values are of the form `projects/&lt;project&gt;/instances/&lt;instance&gt;/clusters/&lt;cluster&gt;/memoryLayer`.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The current state of the memory layer.
  final pulumi.Input<String?>? state;

  /// Creates a new [MemoryLayerState].
  /// [cluster] The ID of the cluster to enable the memory layer on.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [etag] System-generated token used by the server to ensure that the client has an up-to-date value before proceeding.
  /// [instance] The name of the instance to enable the memory layer within.
  /// [memoryConfigs] The memory configuration for the cluster.
  /// [name] The unique name of the memory layer. Values are of the form `projects/&lt;project&gt;/instances/&lt;instance&gt;/clusters/&lt;cluster&gt;/memoryLayer`.
  /// [project] The ID of the project in which the resource belongs.
  /// [state] The current state of the memory layer.
  const MemoryLayerState({
    this.cluster,
    this.deletionPolicy,
    this.etag,
    this.instance,
    this.memoryConfigs,
    this.name,
    this.project,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cluster': ?cluster,
      'deletionPolicy': ?deletionPolicy,
      'etag': ?etag,
      'instance': ?instance,
      'memoryConfigs': ?pulumi.Input.mapOptionalInputValue<List<MemoryLayerMemoryConfig>, List<Map<String, dynamic>>>(memoryConfigs, (value) => pulumi.Input.encodeList<MemoryLayerMemoryConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'project': ?project,
      'state': ?state,
    };
  }

  factory MemoryLayerState.fromMap(Map<String, dynamic> map) {
    return MemoryLayerState(
      cluster: (() { final guardedValue = map['cluster']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instance: (() { final guardedValue = map['instance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      memoryConfigs: (() { final guardedValue = map['memoryConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MemoryLayerMemoryConfig>(guardedValue, (value) => MemoryLayerMemoryConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
