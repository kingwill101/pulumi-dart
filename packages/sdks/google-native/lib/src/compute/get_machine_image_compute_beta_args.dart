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
  GetMachineImageComputeBetaArgs({required this.machineImage, this.project});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'machineImage': machineImage, 'project': ?project};
  }

  factory GetMachineImageComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetMachineImageComputeBetaArgs(
      machineImage: pulumi.Input.fromValue(map['machineImage'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
