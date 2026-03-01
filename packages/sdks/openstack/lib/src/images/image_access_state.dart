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
    pulumi.Output<String>? createdAt,
    pulumi.Output<String>? imageId,
    pulumi.Output<String>? memberId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? schema,
    pulumi.Output<String>? status,
    pulumi.Output<String>? updatedAt,
  }) :
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      imageId = pulumi.Input.asOptionalInput<String>(imageId),
      memberId = pulumi.Input.asOptionalInput<String>(memberId),
      region = pulumi.Input.asOptionalInput<String>(region),
      schema = pulumi.Input.asOptionalInput<String>(schema),
      status = pulumi.Input.asOptionalInput<String>(status),
      updatedAt = pulumi.Input.asOptionalInput<String>(updatedAt);

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
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      imageId: map['imageId'] == null ? null : pulumi.Output.create<String>(map['imageId'] as String),
      memberId: map['memberId'] == null ? null : pulumi.Output.create<String>(map['memberId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      schema: map['schema'] == null ? null : pulumi.Output.create<String>(map['schema'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      updatedAt: map['updatedAt'] == null ? null : pulumi.Output.create<String>(map['updatedAt'] as String),
    );
  }
}

