// ignore_for_file: unused_element, unnecessary_cast

import 'get_consumer_image_share_group_image_shares_image_share_image_sharing_shared_by.dart';
import 'get_consumer_image_share_group_image_shares_image_share_image_sharing_shared_with.dart';

class GetConsumerImageShareGroupImageSharesImageShareImageSharing {
  /// Details about who the image is shared by.
  final GetConsumerImageShareGroupImageSharesImageShareImageSharingSharedBy sharedBy;
  /// Details about who the image is shared with.
  final GetConsumerImageShareGroupImageSharesImageShareImageSharingSharedWith sharedWith;

  /// Creates a new [GetConsumerImageShareGroupImageSharesImageShareImageSharing].
  /// [sharedBy] Details about who the image is shared by.
  /// [sharedWith] Details about who the image is shared with.
  GetConsumerImageShareGroupImageSharesImageShareImageSharing({
    required this.sharedBy,
    required this.sharedWith,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sharedBy': sharedBy.toMap(),
      'sharedWith': sharedWith.toMap(),
    };
  }

  factory GetConsumerImageShareGroupImageSharesImageShareImageSharing.fromMap(Map<String, dynamic> map) {
    return GetConsumerImageShareGroupImageSharesImageShareImageSharing(
      sharedBy: GetConsumerImageShareGroupImageSharesImageShareImageSharingSharedBy.fromMap((map['sharedBy'] as Map).cast<String, dynamic>()),
      sharedWith: GetConsumerImageShareGroupImageSharesImageShareImageSharingSharedWith.fromMap((map['sharedWith'] as Map).cast<String, dynamic>()),
    );
  }
}

