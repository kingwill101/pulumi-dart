// ignore_for_file: unused_element, unnecessary_cast

import 'get_image_image_sharing_shared_by.dart';
import 'get_image_image_sharing_shared_with.dart';

class GetImageImageSharing {
  /// Details about who the image is shared by.
  final GetImageImageSharingSharedBy sharedBy;
  /// Details about who the image is shared with.
  final GetImageImageSharingSharedWith sharedWith;

  /// Creates a new [GetImageImageSharing].
  /// [sharedBy] Details about who the image is shared by.
  /// [sharedWith] Details about who the image is shared with.
  GetImageImageSharing({
    required this.sharedBy,
    required this.sharedWith,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sharedBy': sharedBy.toMap(),
      'sharedWith': sharedWith.toMap(),
    };
  }

  factory GetImageImageSharing.fromMap(Map<String, dynamic> map) {
    return GetImageImageSharing(
      sharedBy: GetImageImageSharingSharedBy.fromMap((map['sharedBy'] as Map).cast<String, dynamic>()),
      sharedWith: GetImageImageSharingSharedWith.fromMap((map['sharedWith'] as Map).cast<String, dynamic>()),
    );
  }
}

