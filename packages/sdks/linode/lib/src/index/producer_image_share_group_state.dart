// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'producer_image_share_group_image.dart';

/// Input properties used for looking up and filtering ProducerImageShareGroup resources.
class ProducerImageShareGroupState {
  /// The date and time the Image Share Group was created.
  final pulumi.Input<String>? created;
  /// The description of the Image Share Group
  ///
  /// * `images` - (Optional) A list of Images to include in the Image Share Group.
  final pulumi.Input<String>? description;
  /// The date and time the Image Share Group will expire.
  final pulumi.Input<String>? expiry;
  /// The images to be shared using this Image Share Group.
  final pulumi.Input<List<ProducerImageShareGroupImage>>? images;
  /// The number of images in the Image Share Group.
  final pulumi.Input<int>? imagesCount;
  /// Whether the Image Share Group is suspended.
  final pulumi.Input<bool>? isSuspended;
  /// The label of the Image Share Group.
  final pulumi.Input<String>? label;
  /// The number of members in the Image Share Group.
  final pulumi.Input<int>? membersCount;
  /// The date and time the Image Share Group was last updated.
  final pulumi.Input<String>? updated;
  /// The UUID of the Image Share Group.
  final pulumi.Input<String>? uuid;

  /// Creates a new [ProducerImageShareGroupState].
  /// [created] The date and time the Image Share Group was created.
  /// [description] The description of the Image Share Group
  /// [expiry] The date and time the Image Share Group will expire.
  /// [images] The images to be shared using this Image Share Group.
  /// [imagesCount] The number of images in the Image Share Group.
  /// [isSuspended] Whether the Image Share Group is suspended.
  /// [label] The label of the Image Share Group.
  /// [membersCount] The number of members in the Image Share Group.
  /// [updated] The date and time the Image Share Group was last updated.
  /// [uuid] The UUID of the Image Share Group.
  ProducerImageShareGroupState({
    this.created,
    this.description,
    this.expiry,
    this.images,
    this.imagesCount,
    this.isSuspended,
    this.label,
    this.membersCount,
    this.updated,
    this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'created': ?created,
      'description': ?description,
      'expiry': ?expiry,
      'images': ?pulumi.Input.mapOptionalInputValue<List<ProducerImageShareGroupImage>, List<Map<String, dynamic>>>(images, (value) => pulumi.Input.encodeList<ProducerImageShareGroupImage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'imagesCount': ?imagesCount,
      'isSuspended': ?isSuspended,
      'label': ?label,
      'membersCount': ?membersCount,
      'updated': ?updated,
      'uuid': ?uuid,
    };
  }

  factory ProducerImageShareGroupState.fromMap(Map<String, dynamic> map) {
    return ProducerImageShareGroupState(
      created: map['created'] == null ? null : (map['created'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      expiry: map['expiry'] == null ? null : (map['expiry'] as String).input(),
      images: map['images'] == null ? null : (pulumi.Input.decodeList<ProducerImageShareGroupImage>(map['images'], (value) => ProducerImageShareGroupImage.fromMap((value as Map).cast<String, dynamic>()))).input(),
      imagesCount: map['imagesCount'] == null ? null : (map['imagesCount'] as int).input(),
      isSuspended: map['isSuspended'] == null ? null : (map['isSuspended'] as bool).input(),
      label: map['label'] == null ? null : (map['label'] as String).input(),
      membersCount: map['membersCount'] == null ? null : (map['membersCount'] as int).input(),
      updated: map['updated'] == null ? null : (map['updated'] as String).input(),
      uuid: map['uuid'] == null ? null : (map['uuid'] as String).input(),
    );
  }
}

