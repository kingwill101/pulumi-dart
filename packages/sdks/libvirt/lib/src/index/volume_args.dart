// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_backing_store.dart';
import 'volume_create.dart';
import 'volume_target.dart';

/// {@template pulumi_index_volume_volume_args_doc}
/// The set of arguments for Volume.
/// {@endtemplate}
/// {@macro pulumi_index_volume_volume_args_doc}
class VolumeArgs {
  /// Specifies the units for the allocated space in the storage volume.
  final pulumi.Input<String>? allocationUnit;
  /// Backing store configuration for copy-on-write volumes
  final pulumi.Input<VolumeBackingStore>? backingStore;
  /// Volume capacity in bytes (required unless using create.content)
  final pulumi.Input<double>? capacity;
  /// Specifies the units for the total capacity in the storage volume.
  final pulumi.Input<String>? capacityUnit;
  /// Volume creation options for initializing volume content from external sources
  final pulumi.Input<VolumeCreate>? create;
  /// Sets the name for the storage volume, which must be unique within the pool.
  final pulumi.Input<String>? name;
  /// Specifies the units for the physical size in the storage volume.
  final pulumi.Input<String>? physicalUnit;
  /// Name of the storage pool where the volume will be created
  final pulumi.Input<String> pool;
  final pulumi.Input<VolumeTarget>? target;
  /// Specifies the type of the storage volume, allowing for distinction of different volume types.
  final pulumi.Input<String>? type;

  /// Creates a new [VolumeArgs].
  /// [allocationUnit] Specifies the units for the allocated space in the storage volume.
  /// [backingStore] Backing store configuration for copy-on-write volumes
  /// [capacity] Volume capacity in bytes (required unless using create.content)
  /// [capacityUnit] Specifies the units for the total capacity in the storage volume.
  /// [create] Volume creation options for initializing volume content from external sources
  /// [name] Sets the name for the storage volume, which must be unique within the pool.
  /// [physicalUnit] Specifies the units for the physical size in the storage volume.
  /// [pool] Name of the storage pool where the volume will be created
  /// [target] Optional.
  /// [type] Specifies the type of the storage volume, allowing for distinction of different volume types.
  VolumeArgs({
    this.allocationUnit,
    this.backingStore,
    this.capacity,
    this.capacityUnit,
    this.create,
    this.name,
    this.physicalUnit,
    required this.pool,
    this.target,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationUnit': ?allocationUnit,
      'backingStore': ?pulumi.Input.mapOptionalInputValue<VolumeBackingStore, Map<String, dynamic>>(backingStore, (value) => value.toMap()),
      'capacity': ?capacity,
      'capacityUnit': ?capacityUnit,
      'create': ?pulumi.Input.mapOptionalInputValue<VolumeCreate, Map<String, dynamic>>(create, (value) => value.toMap()),
      'name': ?name,
      'physicalUnit': ?physicalUnit,
      'pool': pool,
      'target': ?pulumi.Input.mapOptionalInputValue<VolumeTarget, Map<String, dynamic>>(target, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory VolumeArgs.fromMap(Map<String, dynamic> map) {
    return VolumeArgs(
      allocationUnit: map['allocationUnit'] == null ? null : (map['allocationUnit'] as String).input(),
      backingStore: map['backingStore'] == null ? null : (VolumeBackingStore.fromMap((map['backingStore'] as Map).cast<String, dynamic>())).input(),
      capacity: map['capacity'] == null ? null : (map['capacity'] as double).input(),
      capacityUnit: map['capacityUnit'] == null ? null : (map['capacityUnit'] as String).input(),
      create: map['create'] == null ? null : (VolumeCreate.fromMap((map['create'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      physicalUnit: map['physicalUnit'] == null ? null : (map['physicalUnit'] as String).input(),
      pool: (map['pool'] as String).input(),
      target: map['target'] == null ? null : (VolumeTarget.fromMap((map['target'] as Map).cast<String, dynamic>())).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

