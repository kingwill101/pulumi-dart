// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_shared_image_get_shared_image_args_doc}
/// Arguments for getSharedImage.
/// {@endtemplate}
/// {@macro pulumi_compute_get_shared_image_get_shared_image_args_doc}
class GetSharedImageArgs {
  /// The name of the Shared Image Gallery in which the Shared Image exists.
  final pulumi.Input<String> galleryName;
  /// The name of the Shared Image.
  final pulumi.Input<String> name;
  /// The name of the Resource Group in which the Shared Image Gallery exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetSharedImageArgs].
  /// [galleryName] The name of the Shared Image Gallery in which the Shared Image exists.
  /// [name] The name of the Shared Image.
  /// [resourceGroupName] The name of the Resource Group in which the Shared Image Gallery exists.
  GetSharedImageArgs({
    required this.galleryName,
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'galleryName': galleryName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetSharedImageArgs.fromMap(Map<String, dynamic> map) {
    return GetSharedImageArgs(
      galleryName: (map['galleryName'] as String).input(),
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

