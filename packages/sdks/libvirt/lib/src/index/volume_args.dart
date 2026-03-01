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
    pulumi.Output<String>? allocationUnit,
    pulumi.Output<VolumeBackingStore>? backingStore,
    pulumi.Output<double>? capacity,
    pulumi.Output<String>? capacityUnit,
    pulumi.Output<VolumeCreate>? create,
    pulumi.Output<String>? name,
    pulumi.Output<String>? physicalUnit,
    required pulumi.Output<String> pool,
    pulumi.Output<VolumeTarget>? target,
    pulumi.Output<String>? type,
  }) :
      allocationUnit = pulumi.Input.asOptionalInput<String>(allocationUnit),
      backingStore = pulumi.Input.asOptionalInput<VolumeBackingStore>(backingStore),
      capacity = pulumi.Input.asOptionalInput<double>(capacity),
      capacityUnit = pulumi.Input.asOptionalInput<String>(capacityUnit),
      create = pulumi.Input.asOptionalInput<VolumeCreate>(create),
      name = pulumi.Input.asOptionalInput<String>(name),
      physicalUnit = pulumi.Input.asOptionalInput<String>(physicalUnit),
      pool = pulumi.Input.asInput<String>(pool),
      target = pulumi.Input.asOptionalInput<VolumeTarget>(target),
      type = pulumi.Input.asOptionalInput<String>(type);

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
      allocationUnit: map['allocationUnit'] == null ? null : pulumi.Output.create<String>(map['allocationUnit'] as String),
      backingStore: map['backingStore'] == null ? null : pulumi.Output.create<VolumeBackingStore>(VolumeBackingStore.fromMap((map['backingStore'] as Map).cast<String, dynamic>())),
      capacity: map['capacity'] == null ? null : pulumi.Output.create<double>(map['capacity'] as double),
      capacityUnit: map['capacityUnit'] == null ? null : pulumi.Output.create<String>(map['capacityUnit'] as String),
      create: map['create'] == null ? null : pulumi.Output.create<VolumeCreate>(VolumeCreate.fromMap((map['create'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      physicalUnit: map['physicalUnit'] == null ? null : pulumi.Output.create<String>(map['physicalUnit'] as String),
      pool: pulumi.Output.create<String>(map['pool'] as String),
      target: map['target'] == null ? null : pulumi.Output.create<VolumeTarget>(VolumeTarget.fromMap((map['target'] as Map).cast<String, dynamic>())),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

