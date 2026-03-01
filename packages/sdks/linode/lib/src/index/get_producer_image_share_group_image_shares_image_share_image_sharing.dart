// ignore_for_file: unused_element, unnecessary_cast

import 'get_producer_image_share_group_image_shares_image_share_image_sharing_shared_by.dart';
import 'get_producer_image_share_group_image_shares_image_share_image_sharing_shared_with.dart';

class GetProducerImageShareGroupImageSharesImageShareImageSharing {
  /// Details about who the image is shared by.
  final GetProducerImageShareGroupImageSharesImageShareImageSharingSharedBy sharedBy;
  /// Details about who the image is shared with.
  final GetProducerImageShareGroupImageSharesImageShareImageSharingSharedWith sharedWith;

  /// Creates a new [GetProducerImageShareGroupImageSharesImageShareImageSharing].
  /// [sharedBy] Details about who the image is shared by.
  /// [sharedWith] Details about who the image is shared with.
  GetProducerImageShareGroupImageSharesImageShareImageSharing({
    required this.sharedBy,
    required this.sharedWith,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sharedBy': sharedBy.toMap(),
      'sharedWith': sharedWith.toMap(),
    };
  }

  factory GetProducerImageShareGroupImageSharesImageShareImageSharing.fromMap(Map<String, dynamic> map) {
    return GetProducerImageShareGroupImageSharesImageShareImageSharing(
      sharedBy: GetProducerImageShareGroupImageSharesImageShareImageSharingSharedBy.fromMap((map['sharedBy'] as Map).cast<String, dynamic>()),
      sharedWith: GetProducerImageShareGroupImageSharesImageShareImageSharingSharedWith.fromMap((map['sharedWith'] as Map).cast<String, dynamic>()),
    );
  }
}

