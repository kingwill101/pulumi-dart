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
    required this.imageId,
    this.memberId,
    this.region,
    required this.status,
  });

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
      imageId: pulumi.Input.fromValue(map['imageId'] as String),
      memberId: (() { final guardedValue = map['memberId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

