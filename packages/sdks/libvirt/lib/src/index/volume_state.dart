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
    pulumi.Output<double>? allocation,
    pulumi.Output<String>? allocationUnit,
    pulumi.Output<VolumeBackingStore>? backingStore,
    pulumi.Output<double>? capacity,
    pulumi.Output<String>? capacityUnit,
    pulumi.Output<VolumeCreate>? create,
    pulumi.Output<String>? key,
    pulumi.Output<String>? name,
    pulumi.Output<String>? path,
    pulumi.Output<double>? physical,
    pulumi.Output<String>? physicalUnit,
    pulumi.Output<String>? pool,
    pulumi.Output<VolumeTarget>? target,
    pulumi.Output<String>? type,
  }) :
      allocation = pulumi.Input.asOptionalInput<double>(allocation),
      allocationUnit = pulumi.Input.asOptionalInput<String>(allocationUnit),
      backingStore = pulumi.Input.asOptionalInput<VolumeBackingStore>(backingStore),
      capacity = pulumi.Input.asOptionalInput<double>(capacity),
      capacityUnit = pulumi.Input.asOptionalInput<String>(capacityUnit),
      create = pulumi.Input.asOptionalInput<VolumeCreate>(create),
      key = pulumi.Input.asOptionalInput<String>(key),
      name = pulumi.Input.asOptionalInput<String>(name),
      path = pulumi.Input.asOptionalInput<String>(path),
      physical = pulumi.Input.asOptionalInput<double>(physical),
      physicalUnit = pulumi.Input.asOptionalInput<String>(physicalUnit),
      pool = pulumi.Input.asOptionalInput<String>(pool),
      target = pulumi.Input.asOptionalInput<VolumeTarget>(target),
      type = pulumi.Input.asOptionalInput<String>(type);

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
      allocation: map['allocation'] == null ? null : pulumi.Output.create<double>(map['allocation'] as double),
      allocationUnit: map['allocationUnit'] == null ? null : pulumi.Output.create<String>(map['allocationUnit'] as String),
      backingStore: map['backingStore'] == null ? null : pulumi.Output.create<VolumeBackingStore>(VolumeBackingStore.fromMap((map['backingStore'] as Map).cast<String, dynamic>())),
      capacity: map['capacity'] == null ? null : pulumi.Output.create<double>(map['capacity'] as double),
      capacityUnit: map['capacityUnit'] == null ? null : pulumi.Output.create<String>(map['capacityUnit'] as String),
      create: map['create'] == null ? null : pulumi.Output.create<VolumeCreate>(VolumeCreate.fromMap((map['create'] as Map).cast<String, dynamic>())),
      key: map['key'] == null ? null : pulumi.Output.create<String>(map['key'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      path: map['path'] == null ? null : pulumi.Output.create<String>(map['path'] as String),
      physical: map['physical'] == null ? null : pulumi.Output.create<double>(map['physical'] as double),
      physicalUnit: map['physicalUnit'] == null ? null : pulumi.Output.create<String>(map['physicalUnit'] as String),
      pool: map['pool'] == null ? null : pulumi.Output.create<String>(map['pool'] as String),
      target: map['target'] == null ? null : pulumi.Output.create<VolumeTarget>(VolumeTarget.fromMap((map['target'] as Map).cast<String, dynamic>())),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

