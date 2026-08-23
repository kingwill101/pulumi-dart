// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_compute_resource_config_new_flex_start_instances.dart';
import 'cluster_compute_resource_config_new_on_demand_instances.dart';
import 'cluster_compute_resource_config_new_reserved_instances.dart';
import 'cluster_compute_resource_config_new_spot_instances.dart';

class ClusterComputeResourceConfig {
  /// When set in a ComputeResourceConfig, indicates that VM instances should
  /// be created using [Flex
  /// Start](https://cloud.google.com/compute/docs/instances/provisioning-models).
  /// Structure is documented below.
  final pulumi.Input<ClusterComputeResourceConfigNewFlexStartInstances>? newFlexStartInstances;
  /// When set in a ComputeResourceConfig, indicates that on-demand (i.e.,
  /// using the standard provisioning model) VM instances should be created.
  /// Structure is documented below.
  final pulumi.Input<ClusterComputeResourceConfigNewOnDemandInstances>? newOnDemandInstances;
  /// When set in a ComputeResourceConfig, indicates that VM instances should
  /// be created from a
  /// [reservation](https://cloud.google.com/compute/docs/instances/reservations-overview).
  /// Structure is documented below.
  final pulumi.Input<ClusterComputeResourceConfigNewReservedInstances>? newReservedInstances;
  /// When set in a ComputeResourceConfig, indicates that [spot
  /// VM](https://cloud.google.com/compute/docs/instances/spot) instances should be
  /// created.
  /// Structure is documented below.
  final pulumi.Input<ClusterComputeResourceConfigNewSpotInstances>? newSpotInstances;

  /// Creates a new [ClusterComputeResourceConfig].
  /// [newFlexStartInstances] When set in a ComputeResourceConfig, indicates that VM instances should
  /// [newOnDemandInstances] When set in a ComputeResourceConfig, indicates that on-demand (i.e.,
  /// [newReservedInstances] When set in a ComputeResourceConfig, indicates that VM instances should
  /// [newSpotInstances] When set in a ComputeResourceConfig, indicates that [spot
  const ClusterComputeResourceConfig({
    this.newFlexStartInstances,
    this.newOnDemandInstances,
    this.newReservedInstances,
    this.newSpotInstances,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'newFlexStartInstances': ?pulumi.Input.mapOptionalInputValue<ClusterComputeResourceConfigNewFlexStartInstances, Map<String, dynamic>>(newFlexStartInstances, (value) => value.toMap()),
      'newOnDemandInstances': ?pulumi.Input.mapOptionalInputValue<ClusterComputeResourceConfigNewOnDemandInstances, Map<String, dynamic>>(newOnDemandInstances, (value) => value.toMap()),
      'newReservedInstances': ?pulumi.Input.mapOptionalInputValue<ClusterComputeResourceConfigNewReservedInstances, Map<String, dynamic>>(newReservedInstances, (value) => value.toMap()),
      'newSpotInstances': ?pulumi.Input.mapOptionalInputValue<ClusterComputeResourceConfigNewSpotInstances, Map<String, dynamic>>(newSpotInstances, (value) => value.toMap()),
    };
  }

  factory ClusterComputeResourceConfig.fromMap(Map<String, dynamic> map) {
    return ClusterComputeResourceConfig(
      newFlexStartInstances: (() { final guardedValue = map['newFlexStartInstances']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterComputeResourceConfigNewFlexStartInstances.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      newOnDemandInstances: (() { final guardedValue = map['newOnDemandInstances']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterComputeResourceConfigNewOnDemandInstances.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      newReservedInstances: (() { final guardedValue = map['newReservedInstances']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterComputeResourceConfigNewReservedInstances.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      newSpotInstances: (() { final guardedValue = map['newSpotInstances']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterComputeResourceConfigNewSpotInstances.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
