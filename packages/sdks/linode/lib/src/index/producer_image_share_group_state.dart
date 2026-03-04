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
      'images':
          ?pulumi.Input.mapOptionalInputValue<
            List<ProducerImageShareGroupImage>,
            List<Map<String, dynamic>>
          >(
            images,
            (value) =>
                pulumi.Input.encodeList<
                  ProducerImageShareGroupImage,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
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
      created: (() {
        final guardedValue = map['created'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      expiry: (() {
        final guardedValue = map['expiry'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      images: (() {
        final guardedValue = map['images'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ProducerImageShareGroupImage>(
            guardedValue,
            (value) => ProducerImageShareGroupImage.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      imagesCount: (() {
        final guardedValue = map['imagesCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      isSuspended: (() {
        final guardedValue = map['isSuspended'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      label: (() {
        final guardedValue = map['label'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      membersCount: (() {
        final guardedValue = map['membersCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      updated: (() {
        final guardedValue = map['updated'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      uuid: (() {
        final guardedValue = map['uuid'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
