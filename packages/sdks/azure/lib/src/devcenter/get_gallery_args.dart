// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devcenter_get_gallery_get_gallery_args_doc}
/// Arguments for getGallery.
/// {@endtemplate}
/// {@macro pulumi_devcenter_get_gallery_get_gallery_args_doc}
class GetGalleryArgs {
  /// The ID of the Dev Center which contains the Dev Center Gallery.
  final pulumi.Input<String> devCenterId;
  /// The name of this Dev Center Gallery.
  final pulumi.Input<String> name;

  /// Creates a new [GetGalleryArgs].
  /// [devCenterId] The ID of the Dev Center which contains the Dev Center Gallery.
  /// [name] The name of this Dev Center Gallery.
  const GetGalleryArgs({
    required this.devCenterId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devCenterId': devCenterId,
      'name': name,
    };
  }

  factory GetGalleryArgs.fromMap(Map<String, dynamic> map) {
    return GetGalleryArgs(
      devCenterId: pulumi.Input.fromValue(map['devCenterId'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

