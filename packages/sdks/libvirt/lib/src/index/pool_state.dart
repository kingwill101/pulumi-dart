// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pool_features.dart';
import 'pool_refresh.dart';
import 'pool_source.dart';
import 'pool_target.dart';

/// Input properties used for looking up and filtering Pool resources.
class PoolState {
  /// Configures the amount of storage allocated to the pool, determining capacity usage.
  final pulumi.Input<double>? allocation;
  /// Specifies the unit type for the pool's allocated storage, defining measurement standards.
  final pulumi.Input<String>? allocationUnit;
  /// Indicates the amount of available storage within the pool for new allocations.
  final pulumi.Input<double>? available;
  /// Sets the unit type for measuring available storage within the pool.
  final pulumi.Input<String>? availableUnit;
  /// Configures the total capacity of the storage pool, defining its maximum size.
  final pulumi.Input<double>? capacity;
  /// Specifies the unit type for measuring the total capacity of the storage pool.
  final pulumi.Input<String>? capacityUnit;
  /// Defines optional features supported by the storage pool, enhancing functional capabilities.
  final pulumi.Input<PoolFeatures>? features;
  /// Sets the unique name for the storage pool, required for identification on the host.
  final pulumi.Input<String>? name;
  /// Controls the refresh behavior of the storage pool and associated volumes.
  final pulumi.Input<PoolRefresh>? refresh;
  /// Source location for the storage pool
  final pulumi.Input<PoolSource>? source;
  /// Target path and permissions for the storage pool
  final pulumi.Input<PoolTarget>? target;
  /// Specifies the type of the storage pool being defined.
  final pulumi.Input<String>? type;
  /// Sets the universally unique identifier for the storage pool.
  final pulumi.Input<String>? uuid;

  /// Creates a new [PoolState].
  /// [allocation] Configures the amount of storage allocated to the pool, determining capacity usage.
  /// [allocationUnit] Specifies the unit type for the pool's allocated storage, defining measurement standards.
  /// [available] Indicates the amount of available storage within the pool for new allocations.
  /// [availableUnit] Sets the unit type for measuring available storage within the pool.
  /// [capacity] Configures the total capacity of the storage pool, defining its maximum size.
  /// [capacityUnit] Specifies the unit type for measuring the total capacity of the storage pool.
  /// [features] Defines optional features supported by the storage pool, enhancing functional capabilities.
  /// [name] Sets the unique name for the storage pool, required for identification on the host.
  /// [refresh] Controls the refresh behavior of the storage pool and associated volumes.
  /// [source] Source location for the storage pool
  /// [target] Target path and permissions for the storage pool
  /// [type] Specifies the type of the storage pool being defined.
  /// [uuid] Sets the universally unique identifier for the storage pool.
  PoolState({
    this.allocation,
    this.allocationUnit,
    this.available,
    this.availableUnit,
    this.capacity,
    this.capacityUnit,
    this.features,
    this.name,
    this.refresh,
    this.source,
    this.target,
    this.type,
    this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocation': ?allocation,
      'allocationUnit': ?allocationUnit,
      'available': ?available,
      'availableUnit': ?availableUnit,
      'capacity': ?capacity,
      'capacityUnit': ?capacityUnit,
      'features': ?pulumi.Input.mapOptionalInputValue<PoolFeatures, Map<String, dynamic>>(features, (value) => value.toMap()),
      'name': ?name,
      'refresh': ?pulumi.Input.mapOptionalInputValue<PoolRefresh, Map<String, dynamic>>(refresh, (value) => value.toMap()),
      'source': ?pulumi.Input.mapOptionalInputValue<PoolSource, Map<String, dynamic>>(source, (value) => value.toMap()),
      'target': ?pulumi.Input.mapOptionalInputValue<PoolTarget, Map<String, dynamic>>(target, (value) => value.toMap()),
      'type': ?type,
      'uuid': ?uuid,
    };
  }

  factory PoolState.fromMap(Map<String, dynamic> map) {
    return PoolState(
      allocation: map['allocation'] == null ? null : (map['allocation']! as double).input(),
      allocationUnit: map['allocationUnit'] == null ? null : (map['allocationUnit']! as String).input(),
      available: map['available'] == null ? null : (map['available']! as double).input(),
      availableUnit: map['availableUnit'] == null ? null : (map['availableUnit']! as String).input(),
      capacity: map['capacity'] == null ? null : (map['capacity']! as double).input(),
      capacityUnit: map['capacityUnit'] == null ? null : (map['capacityUnit']! as String).input(),
      features: map['features'] == null ? null : (PoolFeatures.fromMap((map['features']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      refresh: map['refresh'] == null ? null : (PoolRefresh.fromMap((map['refresh']! as Map).cast<String, dynamic>())).input(),
      source: map['source'] == null ? null : (PoolSource.fromMap((map['source']! as Map).cast<String, dynamic>())).input(),
      target: map['target'] == null ? null : (PoolTarget.fromMap((map['target']! as Map).cast<String, dynamic>())).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      uuid: map['uuid'] == null ? null : (map['uuid']! as String).input(),
    );
  }
}

