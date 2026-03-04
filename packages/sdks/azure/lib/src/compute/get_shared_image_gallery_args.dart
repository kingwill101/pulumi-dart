// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_shared_image_gallery_get_shared_image_gallery_args_doc}
/// Arguments for getSharedImageGallery.
/// {@endtemplate}
/// {@macro pulumi_compute_get_shared_image_gallery_get_shared_image_gallery_args_doc}
class GetSharedImageGalleryArgs {
  /// The name of the Shared Image Gallery.
  final pulumi.Input<String> name;

  /// The name of the Resource Group in which the Shared Image Gallery exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetSharedImageGalleryArgs].
  /// [name] The name of the Shared Image Gallery.
  /// [resourceGroupName] The name of the Resource Group in which the Shared Image Gallery exists.
  GetSharedImageGalleryArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetSharedImageGalleryArgs.fromMap(Map<String, dynamic> map) {
    return GetSharedImageGalleryArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
