// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_image_image_sharing_shared_by.dart';
import 'get_image_image_sharing_shared_with.dart';

class GetImageImageSharing {
  /// Details about who the image is shared by.
  final pulumi.Input<GetImageImageSharingSharedBy> sharedBy;
  /// Details about who the image is shared with.
  final pulumi.Input<GetImageImageSharingSharedWith> sharedWith;

  /// Creates a new [GetImageImageSharing].
  /// [sharedBy] Details about who the image is shared by.
  /// [sharedWith] Details about who the image is shared with.
  GetImageImageSharing({
    required this.sharedBy,
    required this.sharedWith,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sharedBy': pulumi.Input.mapInputValue<GetImageImageSharingSharedBy, Map<String, dynamic>>(sharedBy, (value) => value.toMap()),
      'sharedWith': pulumi.Input.mapInputValue<GetImageImageSharingSharedWith, Map<String, dynamic>>(sharedWith, (value) => value.toMap()),
    };
  }

  factory GetImageImageSharing.fromMap(Map<String, dynamic> map) {
    return GetImageImageSharing(
      sharedBy: pulumi.Input.fromValue(GetImageImageSharingSharedBy.fromMap((map['sharedBy']! as Map).cast<String, dynamic>())),
      sharedWith: pulumi.Input.fromValue(GetImageImageSharingSharedWith.fromMap((map['sharedWith']! as Map).cast<String, dynamic>())),
    );
  }
}

