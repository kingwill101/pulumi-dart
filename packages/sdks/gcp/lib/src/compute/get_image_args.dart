// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_image_get_image_args_doc}
/// Arguments for getImage.
/// {@endtemplate}
/// {@macro pulumi_compute_get_image_get_image_args_doc}
class GetImageArgs {
  /// The family name of the image.
  final pulumi.Input<String>? family;
  final pulumi.Input<String>? filter;
  /// A boolean to indicate either to take to most recent image if your filter
  /// returns more than one image.
  final pulumi.Input<bool>? mostRecent;
  /// , `family` or `filter` - (Required) The name of a specific image or a family.
  /// Exactly one of `name`, `family` or `filter` must be specified. If `name` is specified, it will fetch
  /// the corresponding image. If `family` is specified, it will return the latest image
  /// that is part of an image family and is not deprecated. If you specify `filter`, your
  /// filter must return exactly one image unless you use `most_recent`.
  /// Filter syntax can be found [here](https://cloud.google.com/compute/docs/reference/rest/v1/images/list) in the filter section.
  ///
  /// - - -
  final pulumi.Input<String>? name;
  /// The project in which the resource belongs. If it is not
  /// provided, the provider project is used. If you are using a
  /// [public base image][pubimg], be sure to specify the correct Image Project.
  final pulumi.Input<String>? project;

  /// Creates a new [GetImageArgs].
  /// [family] The family name of the image.
  /// [filter] Optional.
  /// [mostRecent] A boolean to indicate either to take to most recent image if your filter
  /// [name] , `family` or `filter` - (Required) The name of a specific image or a family.
  /// [project] The project in which the resource belongs. If it is not
  GetImageArgs({
    this.family,
    this.filter,
    this.mostRecent,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'family': ?family,
      'filter': ?filter,
      'mostRecent': ?mostRecent,
      'name': ?name,
      'project': ?project,
    };
  }

  factory GetImageArgs.fromMap(Map<String, dynamic> map) {
    return GetImageArgs(
      family: map['family'] == null ? null : (map['family']! as String).input(),
      filter: map['filter'] == null ? null : (map['filter']! as String).input(),
      mostRecent: map['mostRecent'] == null ? null : (map['mostRecent']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

