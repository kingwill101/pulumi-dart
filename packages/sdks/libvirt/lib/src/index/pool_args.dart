// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pool_features.dart';
import 'pool_refresh.dart';
import 'pool_source.dart';
import 'pool_target.dart';

/// {@template pulumi_index_pool_pool_args_doc}
/// The set of arguments for Pool.
/// {@endtemplate}
/// {@macro pulumi_index_pool_pool_args_doc}
class PoolArgs {
  /// Specifies the unit type for the pool's allocated storage, defining measurement standards.
  final pulumi.Input<String>? allocationUnit;
  /// Sets the unit type for measuring available storage within the pool.
  final pulumi.Input<String>? availableUnit;
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
  final pulumi.Input<String> type;

  /// Creates a new [PoolArgs].
  /// [allocationUnit] Specifies the unit type for the pool's allocated storage, defining measurement standards.
  /// [availableUnit] Sets the unit type for measuring available storage within the pool.
  /// [capacityUnit] Specifies the unit type for measuring the total capacity of the storage pool.
  /// [features] Defines optional features supported by the storage pool, enhancing functional capabilities.
  /// [name] Sets the unique name for the storage pool, required for identification on the host.
  /// [refresh] Controls the refresh behavior of the storage pool and associated volumes.
  /// [source] Source location for the storage pool
  /// [target] Target path and permissions for the storage pool
  /// [type] Specifies the type of the storage pool being defined.
  PoolArgs({
    this.allocationUnit,
    this.availableUnit,
    this.capacityUnit,
    this.features,
    this.name,
    this.refresh,
    this.source,
    this.target,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationUnit': ?allocationUnit,
      'availableUnit': ?availableUnit,
      'capacityUnit': ?capacityUnit,
      'features': ?pulumi.Input.mapOptionalInputValue<PoolFeatures, Map<String, dynamic>>(features, (value) => value.toMap()),
      'name': ?name,
      'refresh': ?pulumi.Input.mapOptionalInputValue<PoolRefresh, Map<String, dynamic>>(refresh, (value) => value.toMap()),
      'source': ?pulumi.Input.mapOptionalInputValue<PoolSource, Map<String, dynamic>>(source, (value) => value.toMap()),
      'target': ?pulumi.Input.mapOptionalInputValue<PoolTarget, Map<String, dynamic>>(target, (value) => value.toMap()),
      'type': type,
    };
  }

  factory PoolArgs.fromMap(Map<String, dynamic> map) {
    return PoolArgs(
      allocationUnit: (() { final guardedValue = map['allocationUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      availableUnit: (() { final guardedValue = map['availableUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      capacityUnit: (() { final guardedValue = map['capacityUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      features: (() { final guardedValue = map['features']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PoolFeatures.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      refresh: (() { final guardedValue = map['refresh']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PoolRefresh.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PoolSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PoolTarget.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

