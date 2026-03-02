// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_image_sharing_shared_by.dart';
import 'image_image_sharing_shared_with.dart';

class ImageImageSharing {
  /// Details about who the image is shared by.
  final pulumi.Input<ImageImageSharingSharedBy>? sharedBy;
  /// Details about who the image is shared with.
  final pulumi.Input<ImageImageSharingSharedWith>? sharedWith;

  /// Creates a new [ImageImageSharing].
  /// [sharedBy] Details about who the image is shared by.
  /// [sharedWith] Details about who the image is shared with.
  ImageImageSharing({
    this.sharedBy,
    this.sharedWith,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sharedBy': ?pulumi.Input.mapOptionalInputValue<ImageImageSharingSharedBy, Map<String, dynamic>>(sharedBy, (value) => value.toMap()),
      'sharedWith': ?pulumi.Input.mapOptionalInputValue<ImageImageSharingSharedWith, Map<String, dynamic>>(sharedWith, (value) => value.toMap()),
    };
  }

  factory ImageImageSharing.fromMap(Map<String, dynamic> map) {
    return ImageImageSharing(
      sharedBy: map['sharedBy'] == null ? null : (ImageImageSharingSharedBy.fromMap((map['sharedBy']! as Map).cast<String, dynamic>())).input(),
      sharedWith: map['sharedWith'] == null ? null : (ImageImageSharingSharedWith.fromMap((map['sharedWith']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

