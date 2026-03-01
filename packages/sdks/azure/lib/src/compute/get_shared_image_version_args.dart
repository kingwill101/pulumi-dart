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
  /// > **Note:** You may specify `latest` to obtain the latest version or `recent` to obtain the most recently updated version.
  ///
  /// > **Note:** In 3.0, `latest` may return an image version with `exclude_from_latest` set to `true`. Starting from 4.0 onwards `latest` will not return image versions with `exlude_from_latest` set to `true`.
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
  GetSharedImageVersionArgs({
    required pulumi.Output<String> galleryName,
    required pulumi.Output<String> imageName,
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<bool>? sortVersionsBySemver,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      galleryName = pulumi.Input.asInput<String>(galleryName),
      imageName = pulumi.Input.asInput<String>(imageName),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sortVersionsBySemver = pulumi.Input.asOptionalInput<bool>(sortVersionsBySemver),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      galleryName: pulumi.Output.create<String>(map['galleryName'] as String),
      imageName: pulumi.Output.create<String>(map['imageName'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sortVersionsBySemver: map['sortVersionsBySemver'] == null ? null : pulumi.Output.create<bool>(map['sortVersionsBySemver'] as bool),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

