// ignore_for_file: unused_element, unnecessary_cast


class GetConsumerImageShareGroupImageSharesImageShareImageSharingSharedBy {
  /// The sharegroup_id from the im_ImageShare row.
  final int sharegroupId;
  /// The label from the associated im_ImageShareGroup row.
  final String sharegroupLabel;
  /// The sharegroup_uuid from the im_ImageShare row.
  final String sharegroupUuid;
  /// The image id of the base image (will only be shown to producers, will be null for consumers).
  final String sourceImageId;

  /// Creates a new [GetConsumerImageShareGroupImageSharesImageShareImageSharingSharedBy].
  /// [sharegroupId] The sharegroup_id from the im_ImageShare row.
  /// [sharegroupLabel] The label from the associated im_ImageShareGroup row.
  /// [sharegroupUuid] The sharegroup_uuid from the im_ImageShare row.
  /// [sourceImageId] The image id of the base image (will only be shown to producers, will be null for consumers).
  GetConsumerImageShareGroupImageSharesImageShareImageSharingSharedBy({
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

  factory GetConsumerImageShareGroupImageSharesImageShareImageSharingSharedBy.fromMap(Map<String, dynamic> map) {
    return GetConsumerImageShareGroupImageSharesImageShareImageSharingSharedBy(
      sharegroupId: map['sharegroupId'] as int,
      sharegroupLabel: map['sharegroupLabel'] as String,
      sharegroupUuid: map['sharegroupUuid'] as String,
      sourceImageId: map['sourceImageId'] as String,
    );
  }
}

