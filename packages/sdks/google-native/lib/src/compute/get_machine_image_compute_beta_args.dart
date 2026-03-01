// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_machine_image_compute_beta_args_doc}
/// Arguments for getMachineImage.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_machine_image_compute_beta_args_doc}
class GetMachineImageComputeBetaArgs {
  final pulumi.Input<String> machineImage;
  final pulumi.Input<String>? project;

  /// Creates a new [GetMachineImageComputeBetaArgs].
  /// [machineImage] Required.
  /// [project] Optional.
  GetMachineImageComputeBetaArgs({
    required pulumi.Output<String> machineImage,
    pulumi.Output<String>? project,
  }) :
      machineImage = pulumi.Input.asInput<String>(machineImage),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'machineImage': machineImage,
      'project': ?project,
    };
  }

  factory GetMachineImageComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetMachineImageComputeBetaArgs(
      machineImage: pulumi.Output.create<String>(map['machineImage'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

