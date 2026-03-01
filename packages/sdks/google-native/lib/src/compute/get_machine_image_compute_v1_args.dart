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
  GetMachineImageComputeV1Args({
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

  factory GetMachineImageComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetMachineImageComputeV1Args(
      machineImage: pulumi.Output.create<String>(map['machineImage'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

