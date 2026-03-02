// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devcenter_gallery_gallery_args_doc}
/// The set of arguments for Gallery.
/// {@endtemplate}
/// {@macro pulumi_devcenter_gallery_gallery_args_doc}
class GalleryArgs {
  /// Specifies the ID of the Dev Center within which this Dev Center Gallery should exist. Changing this forces a new Dev Center Gallery to be created.
  final pulumi.Input<String> devCenterId;
  /// Specifies the name of this Dev Center Gallery. Changing this forces a new Dev Center Gallery to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Shared Gallery which should be connected to the Dev Center Gallery. Changing this forces a new Dev Center Gallery to be created.
  final pulumi.Input<String> sharedGalleryId;

  /// Creates a new [GalleryArgs].
  /// [devCenterId] Specifies the ID of the Dev Center within which this Dev Center Gallery should exist. Changing this forces a new Dev Center Gallery to be created.
  /// [name] Specifies the name of this Dev Center Gallery. Changing this forces a new Dev Center Gallery to be created.
  /// [sharedGalleryId] The ID of the Shared Gallery which should be connected to the Dev Center Gallery. Changing this forces a new Dev Center Gallery to be created.
  GalleryArgs({
    required this.devCenterId,
    this.name,
    required this.sharedGalleryId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devCenterId': devCenterId,
      'name': ?name,
      'sharedGalleryId': sharedGalleryId,
    };
  }

  factory GalleryArgs.fromMap(Map<String, dynamic> map) {
    return GalleryArgs(
      devCenterId: (map['devCenterId'] as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      sharedGalleryId: (map['sharedGalleryId'] as String).input(),
    );
  }
}

