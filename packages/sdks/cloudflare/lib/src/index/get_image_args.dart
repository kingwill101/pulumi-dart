// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_image_get_image_args_doc}
/// Arguments for getImage.
/// {@endtemplate}
/// {@macro pulumi_index_get_image_get_image_args_doc}
class GetImageArgs {
  /// Account identifier tag.
  final pulumi.Input<String?>? accountId;
  /// Image unique identifier.
  final pulumi.Input<String> imageId;

  /// Creates a new [GetImageArgs].
  /// [accountId] Account identifier tag.
  /// [imageId] Image unique identifier.
  const GetImageArgs({
    this.accountId,
    required this.imageId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'imageId': imageId,
    };
  }

  factory GetImageArgs.fromMap(Map<String, dynamic> map) {
    return GetImageArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageId: pulumi.Input.fromValue(map['imageId'] as String),
    );
  }
}
