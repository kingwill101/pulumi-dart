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
    pulumi.Output<double>? allocation,
    pulumi.Output<String>? allocationUnit,
    pulumi.Output<double>? available,
    pulumi.Output<String>? availableUnit,
    pulumi.Output<double>? capacity,
    pulumi.Output<String>? capacityUnit,
    pulumi.Output<PoolFeatures>? features,
    pulumi.Output<String>? name,
    pulumi.Output<PoolRefresh>? refresh,
    pulumi.Output<PoolSource>? source,
    pulumi.Output<PoolTarget>? target,
    pulumi.Output<String>? type,
    pulumi.Output<String>? uuid,
  }) :
      allocation = pulumi.Input.asOptionalInput<double>(allocation),
      allocationUnit = pulumi.Input.asOptionalInput<String>(allocationUnit),
      available = pulumi.Input.asOptionalInput<double>(available),
      availableUnit = pulumi.Input.asOptionalInput<String>(availableUnit),
      capacity = pulumi.Input.asOptionalInput<double>(capacity),
      capacityUnit = pulumi.Input.asOptionalInput<String>(capacityUnit),
      features = pulumi.Input.asOptionalInput<PoolFeatures>(features),
      name = pulumi.Input.asOptionalInput<String>(name),
      refresh = pulumi.Input.asOptionalInput<PoolRefresh>(refresh),
      source = pulumi.Input.asOptionalInput<PoolSource>(source),
      target = pulumi.Input.asOptionalInput<PoolTarget>(target),
      type = pulumi.Input.asOptionalInput<String>(type),
      uuid = pulumi.Input.asOptionalInput<String>(uuid);

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
      allocation: map['allocation'] == null ? null : pulumi.Output.create<double>(map['allocation'] as double),
      allocationUnit: map['allocationUnit'] == null ? null : pulumi.Output.create<String>(map['allocationUnit'] as String),
      available: map['available'] == null ? null : pulumi.Output.create<double>(map['available'] as double),
      availableUnit: map['availableUnit'] == null ? null : pulumi.Output.create<String>(map['availableUnit'] as String),
      capacity: map['capacity'] == null ? null : pulumi.Output.create<double>(map['capacity'] as double),
      capacityUnit: map['capacityUnit'] == null ? null : pulumi.Output.create<String>(map['capacityUnit'] as String),
      features: map['features'] == null ? null : pulumi.Output.create<PoolFeatures>(PoolFeatures.fromMap((map['features'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      refresh: map['refresh'] == null ? null : pulumi.Output.create<PoolRefresh>(PoolRefresh.fromMap((map['refresh'] as Map).cast<String, dynamic>())),
      source: map['source'] == null ? null : pulumi.Output.create<PoolSource>(PoolSource.fromMap((map['source'] as Map).cast<String, dynamic>())),
      target: map['target'] == null ? null : pulumi.Output.create<PoolTarget>(PoolTarget.fromMap((map['target'] as Map).cast<String, dynamic>())),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      uuid: map['uuid'] == null ? null : pulumi.Output.create<String>(map['uuid'] as String),
    );
  }
}

