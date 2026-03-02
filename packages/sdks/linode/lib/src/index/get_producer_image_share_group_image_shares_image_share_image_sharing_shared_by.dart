// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetProducerImageShareGroupImageSharesImageShareImageSharingSharedBy {
  /// The ID of the Image Share Group to list shared Images from.
  ///
  /// * `filter` - (Optional) A set of filters used to select Image Share Groups that meet certain requirements.
  final pulumi.Input<int> sharegroupId;
  /// The label from the associated im_ImageShareGroup row.
  final pulumi.Input<String> sharegroupLabel;
  /// The sharegroup_uuid from the im_ImageShare row.
  final pulumi.Input<String> sharegroupUuid;
  /// The image id of the base image (will only be shown to producers, will be null for consumers).
  final pulumi.Input<String> sourceImageId;

  /// Creates a new [GetProducerImageShareGroupImageSharesImageShareImageSharingSharedBy].
  /// [sharegroupId] The ID of the Image Share Group to list shared Images from.
  /// [sharegroupLabel] The label from the associated im_ImageShareGroup row.
  /// [sharegroupUuid] The sharegroup_uuid from the im_ImageShare row.
  /// [sourceImageId] The image id of the base image (will only be shown to producers, will be null for consumers).
  GetProducerImageShareGroupImageSharesImageShareImageSharingSharedBy({
    required this.sharegroupId,
    required this.sharegroupLabel,
    required this.sharegroupUuid,
    required this.sourceImageId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sharegroupId': sharegroupId,
      'sharegroupLabel': sharegroupLabel,
      'sharegroupUuid': sharegroupUuid,
      'sourceImageId': sourceImageId,
    };
  }

  factory GetProducerImageShareGroupImageSharesImageShareImageSharingSharedBy.fromMap(Map<String, dynamic> map) {
    return GetProducerImageShareGroupImageSharesImageShareImageSharingSharedBy(
      sharegroupId: (map['sharegroupId'] as int).input(),
      sharegroupLabel: (map['sharegroupLabel'] as String).input(),
      sharegroupUuid: (map['sharegroupUuid'] as String).input(),
      sourceImageId: (map['sourceImageId'] as String).input(),
    );
  }
}

