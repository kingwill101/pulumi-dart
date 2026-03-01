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
    pulumi.Output<String>? created,
    pulumi.Output<String>? description,
    pulumi.Output<String>? expiry,
    pulumi.Output<List<ProducerImageShareGroupImage>>? images,
    pulumi.Output<int>? imagesCount,
    pulumi.Output<bool>? isSuspended,
    pulumi.Output<String>? label,
    pulumi.Output<int>? membersCount,
    pulumi.Output<String>? updated,
    pulumi.Output<String>? uuid,
  }) :
      created = pulumi.Input.asOptionalInput<String>(created),
      description = pulumi.Input.asOptionalInput<String>(description),
      expiry = pulumi.Input.asOptionalInput<String>(expiry),
      images = pulumi.Input.asOptionalInput<List<ProducerImageShareGroupImage>>(images),
      imagesCount = pulumi.Input.asOptionalInput<int>(imagesCount),
      isSuspended = pulumi.Input.asOptionalInput<bool>(isSuspended),
      label = pulumi.Input.asOptionalInput<String>(label),
      membersCount = pulumi.Input.asOptionalInput<int>(membersCount),
      updated = pulumi.Input.asOptionalInput<String>(updated),
      uuid = pulumi.Input.asOptionalInput<String>(uuid);

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
      created: map['created'] == null ? null : pulumi.Output.create<String>(map['created'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      expiry: map['expiry'] == null ? null : pulumi.Output.create<String>(map['expiry'] as String),
      images: map['images'] == null ? null : pulumi.Output.create<List<ProducerImageShareGroupImage>>(pulumi.Input.decodeList<ProducerImageShareGroupImage>(map['images'], (value) => ProducerImageShareGroupImage.fromMap((value as Map).cast<String, dynamic>()))),
      imagesCount: map['imagesCount'] == null ? null : pulumi.Output.create<int>(map['imagesCount'] as int),
      isSuspended: map['isSuspended'] == null ? null : pulumi.Output.create<bool>(map['isSuspended'] as bool),
      label: map['label'] == null ? null : pulumi.Output.create<String>(map['label'] as String),
      membersCount: map['membersCount'] == null ? null : pulumi.Output.create<int>(map['membersCount'] as int),
      updated: map['updated'] == null ? null : pulumi.Output.create<String>(map['updated'] as String),
      uuid: map['uuid'] == null ? null : pulumi.Output.create<String>(map['uuid'] as String),
    );
  }
}

