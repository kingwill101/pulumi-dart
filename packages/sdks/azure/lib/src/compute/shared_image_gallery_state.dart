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
  const SharedImageGalleryState({
    this.description,
    this.location,
    this.name,
    this.resourceGroupName,
    this.sharing,
    this.tags,
    this.uniqueName,
  });

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
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sharing: (() { final guardedValue = map['sharing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SharedImageGallerySharing.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      uniqueName: (() { final guardedValue = map['uniqueName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

