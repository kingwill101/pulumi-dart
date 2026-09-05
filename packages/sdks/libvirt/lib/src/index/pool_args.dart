// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pool_create.dart';
import 'pool_destroy.dart';
import 'pool_features.dart';
import 'pool_fs_commandline.dart';
import 'pool_rbd_commandline.dart';
import 'pool_refresh.dart';
import 'pool_source.dart';
import 'pool_target.dart';

/// {@template pulumi_index_pool_pool_args_doc}
/// The set of arguments for Pool.
/// {@endtemplate}
/// {@macro pulumi_index_pool_pool_args_doc}
class PoolArgs {
  /// Specifies the unit type for the pool's allocated storage, defining measurement standards.
  final pulumi.Input<String?>? allocationUnit;
  /// Sets the unit type for measuring available storage within the pool.
  final pulumi.Input<String?>? availableUnit;
  /// Specifies the unit type for measuring the total capacity of the storage pool.
  final pulumi.Input<String?>? capacityUnit;
  /// Experimental: provider-specific lifecycle controls for create-time operations after pool definition. Subject to change in future releases.
  final pulumi.Input<PoolCreate?>? create;
  /// Experimental: provider-specific lifecycle controls for delete-time operations beyond undefine. Subject to change in future releases.
  final pulumi.Input<PoolDestroy?>? destroy;
  /// Defines optional features supported by the storage pool, enhancing functional capabilities.
  final pulumi.Input<PoolFeatures?>? features;
  final pulumi.Input<PoolFsCommandline?>? fsCommandline;
  /// Sets the unique name for the storage pool, required for identification on the host.
  final pulumi.Input<String?>? name;
  final pulumi.Input<PoolRbdCommandline?>? rbdCommandline;
  /// Controls the refresh behavior of the storage pool and associated volumes.
  final pulumi.Input<PoolRefresh?>? refresh;
  /// Source location for the storage pool
  final pulumi.Input<PoolSource?>? source;
  /// Target path and permissions for the storage pool
  final pulumi.Input<PoolTarget?>? target;
  /// Specifies the type of the storage pool being defined.
  final pulumi.Input<String> type;

  /// Creates a new [PoolArgs].
  /// [allocationUnit] Specifies the unit type for the pool's allocated storage, defining measurement standards.
  /// [availableUnit] Sets the unit type for measuring available storage within the pool.
  /// [capacityUnit] Specifies the unit type for measuring the total capacity of the storage pool.
  /// [create] Experimental: provider-specific lifecycle controls for create-time operations after pool definition. Subject to change in future releases.
  /// [destroy] Experimental: provider-specific lifecycle controls for delete-time operations beyond undefine. Subject to change in future releases.
  /// [features] Defines optional features supported by the storage pool, enhancing functional capabilities.
  /// [fsCommandline] Optional.
  /// [name] Sets the unique name for the storage pool, required for identification on the host.
  /// [rbdCommandline] Optional.
  /// [refresh] Controls the refresh behavior of the storage pool and associated volumes.
  /// [source] Source location for the storage pool
  /// [target] Target path and permissions for the storage pool
  /// [type] Specifies the type of the storage pool being defined.
  const PoolArgs({
    this.allocationUnit,
    this.availableUnit,
    this.capacityUnit,
    this.create,
    this.destroy,
    this.features,
    this.fsCommandline,
    this.name,
    this.rbdCommandline,
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
      'create': ?pulumi.Input.mapOptionalInputValue<PoolCreate, Map<String, dynamic>>(create, (value) => value.toMap()),
      'destroy': ?pulumi.Input.mapOptionalInputValue<PoolDestroy, Map<String, dynamic>>(destroy, (value) => value.toMap()),
      'features': ?pulumi.Input.mapOptionalInputValue<PoolFeatures, Map<String, dynamic>>(features, (value) => value.toMap()),
      'fsCommandline': ?pulumi.Input.mapOptionalInputValue<PoolFsCommandline, Map<String, dynamic>>(fsCommandline, (value) => value.toMap()),
      'name': ?name,
      'rbdCommandline': ?pulumi.Input.mapOptionalInputValue<PoolRbdCommandline, Map<String, dynamic>>(rbdCommandline, (value) => value.toMap()),
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
      create: (() { final guardedValue = map['create']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PoolCreate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      destroy: (() { final guardedValue = map['destroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PoolDestroy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      features: (() { final guardedValue = map['features']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PoolFeatures.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fsCommandline: (() { final guardedValue = map['fsCommandline']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PoolFsCommandline.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rbdCommandline: (() { final guardedValue = map['rbdCommandline']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PoolRbdCommandline.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      refresh: (() { final guardedValue = map['refresh']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PoolRefresh.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PoolSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PoolTarget.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
