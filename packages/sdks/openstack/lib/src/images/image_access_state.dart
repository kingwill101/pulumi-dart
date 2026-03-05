// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ImageAccess resources.
class ImageAccessState {
  /// The date the image access was created.
  final pulumi.Input<String>? createdAt;
  /// The image ID.
  final pulumi.Input<String>? imageId;
  /// The member ID, e.g. the target project ID.
  final pulumi.Input<String>? memberId;
  /// The region in which to obtain the V2 Glance client.
  /// A Glance client is needed to manage Image members. If omitted, the `region`
  /// argument of the provider is used. Changing this creates a new resource.
  final pulumi.Input<String>? region;
  /// The member schema.
  final pulumi.Input<String>? schema;
  /// The member proposal status. Optional if admin wants to
  /// force the member proposal acceptance. Can either be `accepted`, `rejected` or
  /// `pending`. Defaults to `pending`. Foridden for non-admin users.
  final pulumi.Input<String>? status;
  /// The date the image access was last updated.
  final pulumi.Input<String>? updatedAt;

  /// Creates a new [ImageAccessState].
  /// [createdAt] The date the image access was created.
  /// [imageId] The image ID.
  /// [memberId] The member ID, e.g. the target project ID.
  /// [region] The region in which to obtain the V2 Glance client.
  /// [schema] The member schema.
  /// [status] The member proposal status. Optional if admin wants to
  /// [updatedAt] The date the image access was last updated.
  ImageAccessState({
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

  factory ImageAccessState.fromMap(Map<String, dynamic> map) {
    return ImageAccessState(
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageId: (() { final guardedValue = map['imageId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      memberId: (() { final guardedValue = map['memberId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schema: (() { final guardedValue = map['schema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

