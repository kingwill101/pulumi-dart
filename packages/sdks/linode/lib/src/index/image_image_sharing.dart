// ignore_for_file: unused_element, unnecessary_cast

import 'image_image_sharing_shared_by.dart';
import 'image_image_sharing_shared_with.dart';

class ImageImageSharing {
  /// Details about who the image is shared by.
  final ImageImageSharingSharedBy? sharedBy;
  /// Details about who the image is shared with.
  final ImageImageSharingSharedWith? sharedWith;

  /// Creates a new [ImageImageSharing].
  /// [sharedBy] Details about who the image is shared by.
  /// [sharedWith] Details about who the image is shared with.
  ImageImageSharing({
    this.sharedBy,
    this.sharedWith,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sharedBy': ?sharedBy == null ? null : sharedBy!.toMap(),
      'sharedWith': ?sharedWith == null ? null : sharedWith!.toMap(),
    };
  }

  factory ImageImageSharing.fromMap(Map<String, dynamic> map) {
    return ImageImageSharing(
      sharedBy: map['sharedBy'] == null ? null : ImageImageSharingSharedBy.fromMap((map['sharedBy'] as Map).cast<String, dynamic>()),
      sharedWith: map['sharedWith'] == null ? null : ImageImageSharingSharedWith.fromMap((map['sharedWith'] as Map).cast<String, dynamic>()),
    );
  }
}

