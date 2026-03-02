// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_backing_store.dart';
import 'volume_create.dart';
import 'volume_target.dart';

/// Input properties used for looking up and filtering Volume resources.
class VolumeState {
  /// Configures the total amount of space allocated for the storage volume.
  final pulumi.Input<double>? allocation;
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
  /// Defines a unique key identifier for the storage volume.
  final pulumi.Input<String>? key;
  /// Sets the name for the storage volume, which must be unique within the pool.
  final pulumi.Input<String>? name;
  /// Volume path on the host filesystem (same as target.path)
  final pulumi.Input<String>? path;
  /// Configures the physical size of the storage volume.
  final pulumi.Input<double>? physical;
  /// Specifies the units for the physical size in the storage volume.
  final pulumi.Input<String>? physicalUnit;
  /// Name of the storage pool where the volume will be created
  final pulumi.Input<String>? pool;
  final pulumi.Input<VolumeTarget>? target;
  /// Specifies the type of the storage volume, allowing for distinction of different volume types.
  final pulumi.Input<String>? type;

  /// Creates a new [VolumeState].
  /// [allocation] Configures the total amount of space allocated for the storage volume.
  /// [allocationUnit] Specifies the units for the allocated space in the storage volume.
  /// [backingStore] Backing store configuration for copy-on-write volumes
  /// [capacity] Volume capacity in bytes (required unless using create.content)
  /// [capacityUnit] Specifies the units for the total capacity in the storage volume.
  /// [create] Volume creation options for initializing volume content from external sources
  /// [key] Defines a unique key identifier for the storage volume.
  /// [name] Sets the name for the storage volume, which must be unique within the pool.
  /// [path] Volume path on the host filesystem (same as target.path)
  /// [physical] Configures the physical size of the storage volume.
  /// [physicalUnit] Specifies the units for the physical size in the storage volume.
  /// [pool] Name of the storage pool where the volume will be created
  /// [target] Optional.
  /// [type] Specifies the type of the storage volume, allowing for distinction of different volume types.
  VolumeState({
    this.allocation,
    this.allocationUnit,
    this.backingStore,
    this.capacity,
    this.capacityUnit,
    this.create,
    this.key,
    this.name,
    this.path,
    this.physical,
    this.physicalUnit,
    this.pool,
    this.target,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocation': ?allocation,
      'allocationUnit': ?allocationUnit,
      'backingStore': ?pulumi.Input.mapOptionalInputValue<VolumeBackingStore, Map<String, dynamic>>(backingStore, (value) => value.toMap()),
      'capacity': ?capacity,
      'capacityUnit': ?capacityUnit,
      'create': ?pulumi.Input.mapOptionalInputValue<VolumeCreate, Map<String, dynamic>>(create, (value) => value.toMap()),
      'key': ?key,
      'name': ?name,
      'path': ?path,
      'physical': ?physical,
      'physicalUnit': ?physicalUnit,
      'pool': ?pool,
      'target': ?pulumi.Input.mapOptionalInputValue<VolumeTarget, Map<String, dynamic>>(target, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory VolumeState.fromMap(Map<String, dynamic> map) {
    return VolumeState(
      allocation: map['allocation'] == null ? null : (map['allocation'] as double).input(),
      allocationUnit: map['allocationUnit'] == null ? null : (map['allocationUnit'] as String).input(),
      backingStore: map['backingStore'] == null ? null : (VolumeBackingStore.fromMap((map['backingStore'] as Map).cast<String, dynamic>())).input(),
      capacity: map['capacity'] == null ? null : (map['capacity'] as double).input(),
      capacityUnit: map['capacityUnit'] == null ? null : (map['capacityUnit'] as String).input(),
      create: map['create'] == null ? null : (VolumeCreate.fromMap((map['create'] as Map).cast<String, dynamic>())).input(),
      key: map['key'] == null ? null : (map['key'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      path: map['path'] == null ? null : (map['path'] as String).input(),
      physical: map['physical'] == null ? null : (map['physical'] as double).input(),
      physicalUnit: map['physicalUnit'] == null ? null : (map['physicalUnit'] as String).input(),
      pool: map['pool'] == null ? null : (map['pool'] as String).input(),
      target: map['target'] == null ? null : (VolumeTarget.fromMap((map['target'] as Map).cast<String, dynamic>())).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

