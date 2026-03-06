// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_composer_get_image_versions_get_image_versions_args_doc}
/// Arguments for getImageVersions.
/// {@endtemplate}
/// {@macro pulumi_composer_get_image_versions_get_image_versions_args_doc}
class GetImageVersionsArgs {
  /// The ID of the project to list versions in.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The location to list versions in.
  /// If it is not provider, the provider region is used.
  final pulumi.Input<String>? region;

  /// Creates a new [GetImageVersionsArgs].
  /// [project] The ID of the project to list versions in.
  /// [region] The location to list versions in.
  const GetImageVersionsArgs({
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'region': ?region,
    };
  }

  factory GetImageVersionsArgs.fromMap(Map<String, dynamic> map) {
    return GetImageVersionsArgs(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

