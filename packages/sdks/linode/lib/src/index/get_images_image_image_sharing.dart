// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_images_image_image_sharing_shared_by.dart';
import 'get_images_image_image_sharing_shared_with.dart';

class GetImagesImageImageSharing {
  /// Details about who the image is shared by.
  final pulumi.Input<GetImagesImageImageSharingSharedBy> sharedBy;
  /// Details about who the image is shared with.
  final pulumi.Input<GetImagesImageImageSharingSharedWith> sharedWith;

  /// Creates a new [GetImagesImageImageSharing].
  /// [sharedBy] Details about who the image is shared by.
  /// [sharedWith] Details about who the image is shared with.
  GetImagesImageImageSharing({
    required this.sharedBy,
    required this.sharedWith,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sharedBy': pulumi.Input.mapInputValue<GetImagesImageImageSharingSharedBy, Map<String, dynamic>>(sharedBy, (value) => value.toMap()),
      'sharedWith': pulumi.Input.mapInputValue<GetImagesImageImageSharingSharedWith, Map<String, dynamic>>(sharedWith, (value) => value.toMap()),
    };
  }

  factory GetImagesImageImageSharing.fromMap(Map<String, dynamic> map) {
    return GetImagesImageImageSharing(
      sharedBy: pulumi.Input.fromValue(GetImagesImageImageSharingSharedBy.fromMap((map['sharedBy']! as Map).cast<String, dynamic>())),
      sharedWith: pulumi.Input.fromValue(GetImagesImageImageSharingSharedWith.fromMap((map['sharedWith']! as Map).cast<String, dynamic>())),
    );
  }
}

