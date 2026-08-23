// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_machine_image_compute_v1_args_doc}
/// Arguments for getMachineImage.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_machine_image_compute_v1_args_doc}
class GetMachineImageComputeV1Args {
  final pulumi.Input<String> machineImage;
  final pulumi.Input<String>? project;

  /// Creates a new [GetMachineImageComputeV1Args].
  /// [machineImage] Required.
  /// [project] Optional.
  const GetMachineImageComputeV1Args({
    required this.machineImage,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'machineImage': machineImage,
      'project': ?project,
    };
  }

  factory GetMachineImageComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetMachineImageComputeV1Args(
      machineImage: pulumi.Input.fromValue(map['machineImage'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
