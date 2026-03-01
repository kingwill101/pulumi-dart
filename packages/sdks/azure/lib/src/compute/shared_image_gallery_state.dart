// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'shared_image_gallery_sharing.dart';

/// Input properties used for looking up and filtering SharedImageGallery resources.
class SharedImageGalleryState {
  /// A description for this Shared Image Gallery.
  final pulumi.Input<String>? description;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the Shared Image Gallery. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which to create the Shared Image Gallery. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A `sharing` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<SharedImageGallerySharing>? sharing;
  /// A mapping of tags to assign to the Shared Image Gallery.
  final pulumi.Input<Map<String, String>>? tags;
  /// The Unique Name for this Shared Image Gallery.
  final pulumi.Input<String>? uniqueName;

  /// Creates a new [SharedImageGalleryState].
  /// [description] A description for this Shared Image Gallery.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Shared Image Gallery. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the Shared Image Gallery. Changing this forces a new resource to be created.
  /// [sharing] A `sharing` block as defined below. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the Shared Image Gallery.
  /// [uniqueName] The Unique Name for this Shared Image Gallery.
  SharedImageGalleryState({
    pulumi.Output<String>? description,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<SharedImageGallerySharing>? sharing,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? uniqueName,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      sharing = pulumi.Input.asOptionalInput<SharedImageGallerySharing>(sharing),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      uniqueName = pulumi.Input.asOptionalInput<String>(uniqueName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'sharing': ?pulumi.Input.mapOptionalInputValue<SharedImageGallerySharing, Map<String, dynamic>>(sharing, (value) => value.toMap()),
      'tags': ?tags,
      'uniqueName': ?uniqueName,
    };
  }

  factory SharedImageGalleryState.fromMap(Map<String, dynamic> map) {
    return SharedImageGalleryState(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sharing: map['sharing'] == null ? null : pulumi.Output.create<SharedImageGallerySharing>(SharedImageGallerySharing.fromMap((map['sharing'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      uniqueName: map['uniqueName'] == null ? null : pulumi.Output.create<String>(map['uniqueName'] as String),
    );
  }
}

