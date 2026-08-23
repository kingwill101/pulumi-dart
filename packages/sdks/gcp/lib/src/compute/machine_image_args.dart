// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'machine_image_machine_image_encryption_key.dart';
import 'machine_image_params.dart';

/// {@template pulumi_compute_machine_image_machine_image_args_doc}
/// The set of arguments for MachineImage.
/// {@endtemplate}
/// {@macro pulumi_compute_machine_image_machine_image_args_doc}
class MachineImageArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
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
  /// Additional params passed with the request, but not persisted as part of resource payload.
  /// Structure is documented below.
  final pulumi.Input<MachineImageParams>? params;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The source instance used to create the machine image. You can provide this as a partial or full URL to the resource.
  final pulumi.Input<String> sourceInstance;

  /// Creates a new [MachineImageArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] A text description of the resource.
  /// [guestFlush] Specify this to create an application consistent machine image by informing the OS to prepare for the snapshot process.
  /// [machineImageEncryptionKey] Encrypts the machine image using a customer-supplied encryption key.
  /// [name] Name of the resource.
  /// [params] Additional params passed with the request, but not persisted as part of resource payload.
  /// [project] The ID of the project in which the resource belongs.
  /// [sourceInstance] The source instance used to create the machine image. You can provide this as a partial or full URL to the resource.
  const MachineImageArgs({
    this.deletionPolicy,
    this.description,
    this.guestFlush,
    this.machineImageEncryptionKey,
    this.name,
    this.params,
    this.project,
    required this.sourceInstance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'guestFlush': ?guestFlush,
      'machineImageEncryptionKey': ?pulumi.Input.mapOptionalInputValue<MachineImageMachineImageEncryptionKey, Map<String, dynamic>>(machineImageEncryptionKey, (value) => value.toMap()),
      'name': ?name,
      'params': ?pulumi.Input.mapOptionalInputValue<MachineImageParams, Map<String, dynamic>>(params, (value) => value.toMap()),
      'project': ?project,
      'sourceInstance': sourceInstance,
    };
  }

  factory MachineImageArgs.fromMap(Map<String, dynamic> map) {
    return MachineImageArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      guestFlush: (() { final guardedValue = map['guestFlush']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      machineImageEncryptionKey: (() { final guardedValue = map['machineImageEncryptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MachineImageMachineImageEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      params: (() { final guardedValue = map['params']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MachineImageParams.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceInstance: pulumi.Input.fromValue(map['sourceInstance'] as String),
    );
  }
}
