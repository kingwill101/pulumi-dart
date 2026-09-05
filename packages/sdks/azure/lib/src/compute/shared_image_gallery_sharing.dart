// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'shared_image_gallery_sharing_community_gallery.dart';

class SharedImageGallerySharing {
  /// A `communityGallery` block as defined below. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** `communityGallery` must be set when `permission` is set to `Community`.
  final pulumi.Input<SharedImageGallerySharingCommunityGallery?>? communityGallery;
  /// The permission of the Shared Image Gallery when sharing. Possible values are `Community`, `Groups` and `Private`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** This requires that the Preview Feature `Microsoft.Compute/CommunityGalleries` is enabled, see [the documentation](https://learn.microsoft.com/azure/virtual-machines/share-gallery-community?tabs=cli) for more information.
  final pulumi.Input<String> permission;

  /// Creates a new [SharedImageGallerySharing].
  /// [communityGallery] A `communityGallery` block as defined below. Changing this forces a new resource to be created.
  /// [permission] The permission of the Shared Image Gallery when sharing. Possible values are `Community`, `Groups` and `Private`. Changing this forces a new resource to be created.
  const SharedImageGallerySharing({
    this.communityGallery,
    required this.permission,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'communityGallery': ?pulumi.Input.mapOptionalInputValue<SharedImageGallerySharingCommunityGallery, Map<String, dynamic>>(communityGallery, (value) => value.toMap()),
      'permission': permission,
    };
  }

  factory SharedImageGallerySharing.fromMap(Map<String, dynamic> map) {
    return SharedImageGallerySharing(
      communityGallery: (() { final guardedValue = map['communityGallery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SharedImageGallerySharingCommunityGallery.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      permission: pulumi.Input.fromValue(map['permission'] as String),
    );
  }
}
