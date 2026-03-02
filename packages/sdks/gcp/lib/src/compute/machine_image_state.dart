// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'machine_image_machine_image_encryption_key.dart';

/// Input properties used for looking up and filtering MachineImage resources.
class MachineImageState {
  /// A text description of the resource.
  final pulumi.Input<String>? description;
  /// Specify this to create an application consistent machine image by informing the OS to prepare for the snapshot process.
  /// Currently only supported on Windows instances using the Volume Shadow Copy Service (VSS).
  final pulumi.Input<bool>? guestFlush;
  /// Encrypts the machine image using a customer-supplied encryption key.
  /// After you encrypt a machine image with a customer-supplied key, you must
  /// provide the same key if you use the machine image later (e.g. to create a
  /// instance from the image)
  /// Structure is documented below.
  final pulumi.Input<MachineImageMachineImageEncryptionKey>? machineImageEncryptionKey;
  /// Name of the resource.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The URI of the created resource.
  final pulumi.Input<String>? selfLink;
  /// The source instance used to create the machine image. You can provide this as a partial or full URL to the resource.
  final pulumi.Input<String>? sourceInstance;
  /// The regional or multi-regional Cloud Storage bucket location where the machine image is stored.
  final pulumi.Input<List<String>>? storageLocations;

  /// Creates a new [MachineImageState].
  /// [description] A text description of the resource.
  /// [guestFlush] Specify this to create an application consistent machine image by informing the OS to prepare for the snapshot process.
  /// [machineImageEncryptionKey] Encrypts the machine image using a customer-supplied encryption key.
  /// [name] Name of the resource.
  /// [project] The ID of the project in which the resource belongs.
  /// [selfLink] The URI of the created resource.
  /// [sourceInstance] The source instance used to create the machine image. You can provide this as a partial or full URL to the resource.
  /// [storageLocations] The regional or multi-regional Cloud Storage bucket location where the machine image is stored.
  MachineImageState({
    this.description,
    this.guestFlush,
    this.machineImageEncryptionKey,
    this.name,
    this.project,
    this.selfLink,
    this.sourceInstance,
    this.storageLocations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'guestFlush': ?guestFlush,
      'machineImageEncryptionKey': ?pulumi.Input.mapOptionalInputValue<MachineImageMachineImageEncryptionKey, Map<String, dynamic>>(machineImageEncryptionKey, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'selfLink': ?selfLink,
      'sourceInstance': ?sourceInstance,
      'storageLocations': ?storageLocations,
    };
  }

  factory MachineImageState.fromMap(Map<String, dynamic> map) {
    return MachineImageState(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      guestFlush: map['guestFlush'] == null ? null : (map['guestFlush'] as bool).input(),
      machineImageEncryptionKey: map['machineImageEncryptionKey'] == null ? null : (MachineImageMachineImageEncryptionKey.fromMap((map['machineImageEncryptionKey'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      selfLink: map['selfLink'] == null ? null : (map['selfLink'] as String).input(),
      sourceInstance: map['sourceInstance'] == null ? null : (map['sourceInstance'] as String).input(),
      storageLocations: map['storageLocations'] == null ? null : ((map['storageLocations'] as List).cast<String>()).input(),
    );
  }
}

