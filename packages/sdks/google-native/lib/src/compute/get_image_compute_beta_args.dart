// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_image_compute_beta_args_doc}
/// Arguments for getImage.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_image_compute_beta_args_doc}
class GetImageComputeBetaArgs {
  final pulumi.Input<String> image;
  final pulumi.Input<String>? project;

  /// Creates a new [GetImageComputeBetaArgs].
  /// [image] Required.
  /// [project] Optional.
  GetImageComputeBetaArgs({
    required pulumi.Output<String> image,
    pulumi.Output<String>? project,
  }) :
      image = pulumi.Input.asInput<String>(image),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image': image,
      'project': ?project,
    };
  }

  factory GetImageComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetImageComputeBetaArgs(
      image: pulumi.Output.create<String>(map['image'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

