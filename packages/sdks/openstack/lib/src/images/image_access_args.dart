// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_images_image_access_image_access_args_doc}
/// The set of arguments for ImageAccess.
/// {@endtemplate}
/// {@macro pulumi_images_image_access_image_access_args_doc}
class ImageAccessArgs {
  /// The image ID.
  final pulumi.Input<String> imageId;
  /// The member ID, e.g. the target project ID.
  final pulumi.Input<String> memberId;
  /// The region in which to obtain the V2 Glance client.
  /// A Glance client is needed to manage Image members. If omitted, the `region`
  /// argument of the provider is used. Changing this creates a new resource.
  final pulumi.Input<String>? region;
  /// The member proposal status. Optional if admin wants to
  /// force the member proposal acceptance. Can either be `accepted`, `rejected` or
  /// `pending`. Defaults to `pending`. Foridden for non-admin users.
  final pulumi.Input<String>? status;

  /// Creates a new [ImageAccessArgs].
  /// [imageId] The image ID.
  /// [memberId] The member ID, e.g. the target project ID.
  /// [region] The region in which to obtain the V2 Glance client.
  /// [status] The member proposal status. Optional if admin wants to
  ImageAccessArgs({
    required this.imageId,
    required this.memberId,
    this.region,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageId': imageId,
      'memberId': memberId,
      'region': ?region,
      'status': ?status,
    };
  }

  factory ImageAccessArgs.fromMap(Map<String, dynamic> map) {
    return ImageAccessArgs(
      imageId: pulumi.Input.fromValue(map['imageId'] as String),
      memberId: pulumi.Input.fromValue(map['memberId'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

