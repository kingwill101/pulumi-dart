// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ImageAccessAccept resources.
class ImageAccessAcceptState {
  /// The date the image membership was created.
  final pulumi.Input<String>? createdAt;
  /// The proposed image ID.
  final pulumi.Input<String>? imageId;
  /// The member ID, e.g. the target project ID. Optional
  /// for admin accounts. Defaults to the current scope project ID.
  final pulumi.Input<String>? memberId;
  /// The region in which to obtain the V2 Glance client.
  /// A Glance client is needed to manage Image memberships. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// membership.
  final pulumi.Input<String>? region;
  /// The membership schema.
  final pulumi.Input<String>? schema;
  /// The membership proposal status. Can either be
  /// `accepted`, `rejected` or `pending`.
  final pulumi.Input<String>? status;
  /// The date the image membership was last updated.
  final pulumi.Input<String>? updatedAt;

  /// Creates a new [ImageAccessAcceptState].
  /// [createdAt] The date the image membership was created.
  /// [imageId] The proposed image ID.
  /// [memberId] The member ID, e.g. the target project ID. Optional
  /// [region] The region in which to obtain the V2 Glance client.
  /// [schema] The membership schema.
  /// [status] The membership proposal status. Can either be
  /// [updatedAt] The date the image membership was last updated.
  ImageAccessAcceptState({
    this.createdAt,
    this.imageId,
    this.memberId,
    this.region,
    this.schema,
    this.status,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'imageId': ?imageId,
      'memberId': ?memberId,
      'region': ?region,
      'schema': ?schema,
      'status': ?status,
      'updatedAt': ?updatedAt,
    };
  }

  factory ImageAccessAcceptState.fromMap(Map<String, dynamic> map) {
    return ImageAccessAcceptState(
      createdAt: map['createdAt'] == null ? null : (map['createdAt'] as String).input(),
      imageId: map['imageId'] == null ? null : (map['imageId'] as String).input(),
      memberId: map['memberId'] == null ? null : (map['memberId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      schema: map['schema'] == null ? null : (map['schema'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      updatedAt: map['updatedAt'] == null ? null : (map['updatedAt'] as String).input(),
    );
  }
}

