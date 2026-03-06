// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_shared_image_version_get_shared_image_version_args_doc}
/// Arguments for getSharedImageVersion.
/// {@endtemplate}
/// {@macro pulumi_compute_get_shared_image_version_get_shared_image_version_args_doc}
class GetSharedImageVersionArgs {
  /// The name of the Shared Image Gallery in which the Shared Image exists.
  final pulumi.Input<String> galleryName;
  /// The name of the Shared Image in which this Version exists.
  final pulumi.Input<String> imageName;
  /// The name of the Image Version.
  ///
  /// &gt; **Note:** You may specify `latest` to obtain the latest version or `recent` to obtain the most recently updated version.
  ///
  /// &gt; **Note:** In 3.0, `latest` may return an image version with `exclude_from_latest` set to `true`. Starting from 4.0 onwards `latest` will not return image versions with `exlude_from_latest` set to `true`.
  final pulumi.Input<String> name;
  /// The name of the Resource Group in which the Shared Image Gallery exists.
  final pulumi.Input<String> resourceGroupName;
  /// Sort available versions taking SemVer versioning scheme into account. Defaults to `false`.
  final pulumi.Input<bool>? sortVersionsBySemver;
  /// A mapping of tags assigned to the Shared Image.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetSharedImageVersionArgs].
  /// [galleryName] The name of the Shared Image Gallery in which the Shared Image exists.
  /// [imageName] The name of the Shared Image in which this Version exists.
  /// [name] The name of the Image Version.
  /// [resourceGroupName] The name of the Resource Group in which the Shared Image Gallery exists.
  /// [sortVersionsBySemver] Sort available versions taking SemVer versioning scheme into account. Defaults to `false`.
  /// [tags] A mapping of tags assigned to the Shared Image.
  const GetSharedImageVersionArgs({
    required this.galleryName,
    required this.imageName,
    required this.name,
    required this.resourceGroupName,
    this.sortVersionsBySemver,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'galleryName': galleryName,
      'imageName': imageName,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'sortVersionsBySemver': ?sortVersionsBySemver,
      'tags': ?tags,
    };
  }

  factory GetSharedImageVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetSharedImageVersionArgs(
      galleryName: pulumi.Input.fromValue(map['galleryName'] as String),
      imageName: pulumi.Input.fromValue(map['imageName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sortVersionsBySemver: (() { final guardedValue = map['sortVersionsBySemver']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

