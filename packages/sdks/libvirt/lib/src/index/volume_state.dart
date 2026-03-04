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
      'backingStore':
          ?pulumi.Input.mapOptionalInputValue<
            VolumeBackingStore,
            Map<String, dynamic>
          >(backingStore, (value) => value.toMap()),
      'capacity': ?capacity,
      'capacityUnit': ?capacityUnit,
      'create':
          ?pulumi.Input.mapOptionalInputValue<
            VolumeCreate,
            Map<String, dynamic>
          >(create, (value) => value.toMap()),
      'key': ?key,
      'name': ?name,
      'path': ?path,
      'physical': ?physical,
      'physicalUnit': ?physicalUnit,
      'pool': ?pool,
      'target':
          ?pulumi.Input.mapOptionalInputValue<
            VolumeTarget,
            Map<String, dynamic>
          >(target, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory VolumeState.fromMap(Map<String, dynamic> map) {
    return VolumeState(
      allocation: (() {
        final guardedValue = map['allocation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      allocationUnit: (() {
        final guardedValue = map['allocationUnit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      backingStore: (() {
        final guardedValue = map['backingStore'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VolumeBackingStore.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      capacity: (() {
        final guardedValue = map['capacity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      capacityUnit: (() {
        final guardedValue = map['capacityUnit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      create: (() {
        final guardedValue = map['create'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VolumeCreate.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      key: (() {
        final guardedValue = map['key'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      path: (() {
        final guardedValue = map['path'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      physical: (() {
        final guardedValue = map['physical'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      physicalUnit: (() {
        final guardedValue = map['physicalUnit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pool: (() {
        final guardedValue = map['pool'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      target: (() {
        final guardedValue = map['target'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VolumeTarget.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
