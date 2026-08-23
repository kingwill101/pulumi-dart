// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_images_get_images_args_doc}
/// Arguments for getImages.
/// {@endtemplate}
/// {@macro pulumi_compute_get_images_get_images_args_doc}
class GetImagesArgs {
  /// The name of the Resource Group in which the Image exists.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags to filter the list of images against.
  final pulumi.Input<Map<String, String>>? tagsFilter;

  /// Creates a new [GetImagesArgs].
  /// [resourceGroupName] The name of the Resource Group in which the Image exists.
  /// [tagsFilter] A mapping of tags to filter the list of images against.
  const GetImagesArgs({
    required this.resourceGroupName,
    this.tagsFilter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'tagsFilter': ?tagsFilter,
    };
  }

  factory GetImagesArgs.fromMap(Map<String, dynamic> map) {
    return GetImagesArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tagsFilter: (() { final guardedValue = map['tagsFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
