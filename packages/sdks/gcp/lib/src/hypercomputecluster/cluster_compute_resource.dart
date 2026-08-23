// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_compute_resource_config.dart';

class ClusterComputeResource {
  /// Describes how a compute resource should be created at runtime.
  /// Structure is documented below.
  final pulumi.Input<ClusterComputeResourceConfig> config;
  /// The identifier for this object. Format specified above.
  final pulumi.Input<String> id;

  /// Creates a new [ClusterComputeResource].
  /// [config] Describes how a compute resource should be created at runtime.
  /// [id] The identifier for this object. Format specified above.
  const ClusterComputeResource({
    required this.config,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': pulumi.Input.mapInputValue<ClusterComputeResourceConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'id': id,
    };
  }

  factory ClusterComputeResource.fromMap(Map<String, dynamic> map) {
    return ClusterComputeResource(
      config: pulumi.Input.fromValue(ClusterComputeResourceConfig.fromMap((map['config']! as Map).cast<String, dynamic>())),
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
