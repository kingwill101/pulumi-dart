// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ImageImageSharingSharedBy {
  /// The sharegroup_id from the im_ImageShare row.
  final pulumi.Input<int>? sharegroupId;
  /// The label from the associated im_ImageShareGroup row.
  final pulumi.Input<String>? sharegroupLabel;
  /// The sharegroup_uuid from the im_ImageShare row.
  final pulumi.Input<String>? sharegroupUuid;
  /// The image id of the base image (will only be shown to producers, will be null for consumers).
  final pulumi.Input<String>? sourceImageId;

  /// Creates a new [ImageImageSharingSharedBy].
  /// [sharegroupId] The sharegroup_id from the im_ImageShare row.
  /// [sharegroupLabel] The label from the associated im_ImageShareGroup row.
  /// [sharegroupUuid] The sharegroup_uuid from the im_ImageShare row.
  /// [sourceImageId] The image id of the base image (will only be shown to producers, will be null for consumers).
  ImageImageSharingSharedBy({
    this.sharegroupId,
    this.sharegroupLabel,
    this.sharegroupUuid,
    this.sourceImageId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sharegroupId': ?sharegroupId,
      'sharegroupLabel': ?sharegroupLabel,
      'sharegroupUuid': ?sharegroupUuid,
      'sourceImageId': ?sourceImageId,
    };
  }

  factory ImageImageSharingSharedBy.fromMap(Map<String, dynamic> map) {
    return ImageImageSharingSharedBy(
      sharegroupId: map['sharegroupId'] == null ? null : (map['sharegroupId']! as int).input(),
      sharegroupLabel: map['sharegroupLabel'] == null ? null : (map['sharegroupLabel']! as String).input(),
      sharegroupUuid: map['sharegroupUuid'] == null ? null : (map['sharegroupUuid']! as String).input(),
      sourceImageId: map['sourceImageId'] == null ? null : (map['sourceImageId']! as String).input(),
    );
  }
}

