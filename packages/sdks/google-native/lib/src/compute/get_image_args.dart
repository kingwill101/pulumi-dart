// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_image_args_doc}
/// Arguments for getImage.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_image_args_doc}
class GetImageArgs {
  final pulumi.Input<String> image;
  final pulumi.Input<String>? project;

  /// Creates a new [GetImageArgs].
  /// [image] Required.
  /// [project] Optional.
  GetImageArgs({required this.image, this.project});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'image': image, 'project': ?project};
  }

  factory GetImageArgs.fromMap(Map<String, dynamic> map) {
    return GetImageArgs(
      image: pulumi.Input.fromValue(map['image'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
