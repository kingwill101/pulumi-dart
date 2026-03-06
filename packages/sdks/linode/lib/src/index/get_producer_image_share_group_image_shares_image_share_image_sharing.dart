// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_producer_image_share_group_image_shares_image_share_image_sharing_shared_by.dart';
import 'get_producer_image_share_group_image_shares_image_share_image_sharing_shared_with.dart';

class GetProducerImageShareGroupImageSharesImageShareImageSharing {
  /// Details about who the image is shared by.
  final pulumi.Input<GetProducerImageShareGroupImageSharesImageShareImageSharingSharedBy> sharedBy;
  /// Details about who the image is shared with.
  final pulumi.Input<GetProducerImageShareGroupImageSharesImageShareImageSharingSharedWith> sharedWith;

  /// Creates a new [GetProducerImageShareGroupImageSharesImageShareImageSharing].
  /// [sharedBy] Details about who the image is shared by.
  /// [sharedWith] Details about who the image is shared with.
  const GetProducerImageShareGroupImageSharesImageShareImageSharing({
    required this.sharedBy,
    required this.sharedWith,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sharedBy': pulumi.Input.mapInputValue<GetProducerImageShareGroupImageSharesImageShareImageSharingSharedBy, Map<String, dynamic>>(sharedBy, (value) => value.toMap()),
      'sharedWith': pulumi.Input.mapInputValue<GetProducerImageShareGroupImageSharesImageShareImageSharingSharedWith, Map<String, dynamic>>(sharedWith, (value) => value.toMap()),
    };
  }

  factory GetProducerImageShareGroupImageSharesImageShareImageSharing.fromMap(Map<String, dynamic> map) {
    return GetProducerImageShareGroupImageSharesImageShareImageSharing(
      sharedBy: pulumi.Input.fromValue(GetProducerImageShareGroupImageSharesImageShareImageSharingSharedBy.fromMap((map['sharedBy']! as Map).cast<String, dynamic>())),
      sharedWith: pulumi.Input.fromValue(GetProducerImageShareGroupImageSharesImageShareImageSharingSharedWith.fromMap((map['sharedWith']! as Map).cast<String, dynamic>())),
    );
  }
}

