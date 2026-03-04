// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_image_get_image_args_doc}
/// Arguments for getImage.
/// {@endtemplate}
/// {@macro pulumi_index_get_image_get_image_args_doc}
class GetImageArgs {
  /// The unique ID of this Image.  The ID of private images begin with `private/` followed by the numeric identifier of the private image, for example `private/12345`.
  final pulumi.Input<String> id;

  /// Creates a new [GetImageArgs].
  /// [id] The unique ID of this Image.  The ID of private images begin with `private/` followed by the numeric identifier of the private image, for example `private/12345`.
  GetImageArgs({required this.id});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': id};
  }

  factory GetImageArgs.fromMap(Map<String, dynamic> map) {
    return GetImageArgs(id: pulumi.Input.fromValue(map['id'] as String));
  }
}
