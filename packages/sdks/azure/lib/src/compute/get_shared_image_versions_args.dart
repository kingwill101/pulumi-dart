// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_shared_image_versions_get_shared_image_versions_args_doc}
/// Arguments for getSharedImageVersions.
/// {@endtemplate}
/// {@macro pulumi_compute_get_shared_image_versions_get_shared_image_versions_args_doc}
class GetSharedImageVersionsArgs {
  /// The name of the Shared Image in which the Shared Image exists.
  final pulumi.Input<String> galleryName;
  /// The name of the Shared Image in which this Version exists.
  final pulumi.Input<String> imageName;
  /// The name of the Resource Group in which the Shared Image Gallery exists.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags to filter the list of images against.
  final pulumi.Input<Map<String, String>>? tagsFilter;

  /// Creates a new [GetSharedImageVersionsArgs].
  /// [galleryName] The name of the Shared Image in which the Shared Image exists.
  /// [imageName] The name of the Shared Image in which this Version exists.
  /// [resourceGroupName] The name of the Resource Group in which the Shared Image Gallery exists.
  /// [tagsFilter] A mapping of tags to filter the list of images against.
  GetSharedImageVersionsArgs({
    required this.galleryName,
    required this.imageName,
    required this.resourceGroupName,
    this.tagsFilter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'galleryName': galleryName,
      'imageName': imageName,
      'resourceGroupName': resourceGroupName,
      'tagsFilter': ?tagsFilter,
    };
  }

  factory GetSharedImageVersionsArgs.fromMap(Map<String, dynamic> map) {
    return GetSharedImageVersionsArgs(
      galleryName: (map['galleryName'] as String).input(),
      imageName: (map['imageName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tagsFilter: map['tagsFilter'] == null ? null : ((map['tagsFilter']! as Map).cast<String, String>()).input(),
    );
  }
}

