// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'machine_image_machine_image_encryption_key.dart';

/// {@template pulumi_compute_machine_image_machine_image_args_doc}
/// The set of arguments for MachineImage.
/// {@endtemplate}
/// {@macro pulumi_compute_machine_image_machine_image_args_doc}
class MachineImageArgs {
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
  /// The source instance used to create the machine image. You can provide this as a partial or full URL to the resource.
  final pulumi.Input<String> sourceInstance;

  /// Creates a new [MachineImageArgs].
  /// [description] A text description of the resource.
  /// [guestFlush] Specify this to create an application consistent machine image by informing the OS to prepare for the snapshot process.
  /// [machineImageEncryptionKey] Encrypts the machine image using a customer-supplied encryption key.
  /// [name] Name of the resource.
  /// [project] The ID of the project in which the resource belongs.
  /// [sourceInstance] The source instance used to create the machine image. You can provide this as a partial or full URL to the resource.
  MachineImageArgs({
    pulumi.Output<String>? description,
    pulumi.Output<bool>? guestFlush,
    pulumi.Output<MachineImageMachineImageEncryptionKey>? machineImageEncryptionKey,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    required pulumi.Output<String> sourceInstance,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      guestFlush = pulumi.Input.asOptionalInput<bool>(guestFlush),
      machineImageEncryptionKey = pulumi.Input.asOptionalInput<MachineImageMachineImageEncryptionKey>(machineImageEncryptionKey),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      sourceInstance = pulumi.Input.asInput<String>(sourceInstance);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'guestFlush': ?guestFlush,
      'machineImageEncryptionKey': ?pulumi.Input.mapOptionalInputValue<MachineImageMachineImageEncryptionKey, Map<String, dynamic>>(machineImageEncryptionKey, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'sourceInstance': sourceInstance,
    };
  }

  factory MachineImageArgs.fromMap(Map<String, dynamic> map) {
    return MachineImageArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      guestFlush: map['guestFlush'] == null ? null : pulumi.Output.create<bool>(map['guestFlush'] as bool),
      machineImageEncryptionKey: map['machineImageEncryptionKey'] == null ? null : pulumi.Output.create<MachineImageMachineImageEncryptionKey>(MachineImageMachineImageEncryptionKey.fromMap((map['machineImageEncryptionKey'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      sourceInstance: pulumi.Output.create<String>(map['sourceInstance'] as String),
    );
  }
}

