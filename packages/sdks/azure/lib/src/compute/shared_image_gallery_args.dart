// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'shared_image_gallery_sharing.dart';

/// {@template pulumi_compute_shared_image_gallery_shared_image_gallery_args_doc}
/// The set of arguments for SharedImageGallery.
/// {@endtemplate}
/// {@macro pulumi_compute_shared_image_gallery_shared_image_gallery_args_doc}
class SharedImageGalleryArgs {
  /// A description for this Shared Image Gallery.
  final pulumi.Input<String>? description;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the Shared Image Gallery. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which to create the Shared Image Gallery. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A `sharing` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<SharedImageGallerySharing>? sharing;
  /// A mapping of tags to assign to the Shared Image Gallery.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SharedImageGalleryArgs].
  /// [description] A description for this Shared Image Gallery.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Shared Image Gallery. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the Shared Image Gallery. Changing this forces a new resource to be created.
  /// [sharing] A `sharing` block as defined below. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the Shared Image Gallery.
  SharedImageGalleryArgs({
    pulumi.Output<String>? description,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<SharedImageGallerySharing>? sharing,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sharing = pulumi.Input.asOptionalInput<SharedImageGallerySharing>(sharing),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'sharing': ?pulumi.Input.mapOptionalInputValue<SharedImageGallerySharing, Map<String, dynamic>>(sharing, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory SharedImageGalleryArgs.fromMap(Map<String, dynamic> map) {
    return SharedImageGalleryArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sharing: map['sharing'] == null ? null : pulumi.Output.create<SharedImageGallerySharing>(SharedImageGallerySharing.fromMap((map['sharing'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

