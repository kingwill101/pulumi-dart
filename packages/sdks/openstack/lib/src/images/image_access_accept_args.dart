// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_images_image_access_accept_image_access_accept_args_doc}
/// The set of arguments for ImageAccessAccept.
/// {@endtemplate}
/// {@macro pulumi_images_image_access_accept_image_access_accept_args_doc}
class ImageAccessAcceptArgs {
  /// The proposed image ID.
  final pulumi.Input<String> imageId;
  /// The member ID, e.g. the target project ID. Optional
  /// for admin accounts. Defaults to the current scope project ID.
  final pulumi.Input<String>? memberId;
  /// The region in which to obtain the V2 Glance client.
  /// A Glance client is needed to manage Image memberships. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// membership.
  final pulumi.Input<String>? region;
  /// The membership proposal status. Can either be
  /// `accepted`, `rejected` or `pending`.
  final pulumi.Input<String> status;

  /// Creates a new [ImageAccessAcceptArgs].
  /// [imageId] The proposed image ID.
  /// [memberId] The member ID, e.g. the target project ID. Optional
  /// [region] The region in which to obtain the V2 Glance client.
  /// [status] The membership proposal status. Can either be
  ImageAccessAcceptArgs({
    required pulumi.Output<String> imageId,
    pulumi.Output<String>? memberId,
    pulumi.Output<String>? region,
    required pulumi.Output<String> status,
  }) :
      imageId = pulumi.Input.asInput<String>(imageId),
      memberId = pulumi.Input.asOptionalInput<String>(memberId),
      region = pulumi.Input.asOptionalInput<String>(region),
      status = pulumi.Input.asInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageId': imageId,
      'memberId': ?memberId,
      'region': ?region,
      'status': status,
    };
  }

  factory ImageAccessAcceptArgs.fromMap(Map<String, dynamic> map) {
    return ImageAccessAcceptArgs(
      imageId: pulumi.Output.create<String>(map['imageId'] as String),
      memberId: map['memberId'] == null ? null : pulumi.Output.create<String>(map['memberId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      status: pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

