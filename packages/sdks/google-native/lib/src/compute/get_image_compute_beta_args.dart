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
    required this.image,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image': image,
      'project': ?project,
    };
  }

  factory GetImageComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetImageComputeBetaArgs(
      image: (map['image'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

