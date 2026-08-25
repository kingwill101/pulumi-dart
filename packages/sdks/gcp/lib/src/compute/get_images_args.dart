// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_images_get_images_args_doc}
/// Arguments for getImages.
/// {@endtemplate}
/// {@macro pulumi_compute_get_images_get_images_args_doc}
class GetImagesArgs {
  /// Filter for the images to be returned by the data source. Syntax can be found [here](https://cloud.google.com/compute/docs/reference/rest/v1/images/list) in the filter section.
  ///
  /// - - -
  final pulumi.Input<String?>? filter;
  /// The project in which the resource belongs. If it is not
  /// provided, the provider project is used. If you are using a
  /// [public base image][pubimg], be sure to specify the correct Image Project.
  final pulumi.Input<String?>? project;

  /// Creates a new [GetImagesArgs].
  /// [filter] Filter for the images to be returned by the data source. Syntax can be found [here](https://cloud.google.com/compute/docs/reference/rest/v1/images/list) in the filter section.
  /// [project] The project in which the resource belongs. If it is not
  const GetImagesArgs({
    this.filter,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
      'project': ?project,
    };
  }

  factory GetImagesArgs.fromMap(Map<String, dynamic> map) {
    return GetImagesArgs(
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
