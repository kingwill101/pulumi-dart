// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudresourcemanager_v3_get_tag_key_args_doc}
/// Arguments for getTagKey.
/// {@endtemplate}
/// {@macro pulumi_cloudresourcemanager_v3_get_tag_key_args_doc}
class GetTagKeyArgs {
  final pulumi.Input<String> tagKeyId;

  /// Creates a new [GetTagKeyArgs].
  /// [tagKeyId] Required.
  GetTagKeyArgs({
    required this.tagKeyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tagKeyId': tagKeyId,
    };
  }

  factory GetTagKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetTagKeyArgs(
      tagKeyId: (map['tagKeyId'] as String).input(),
    );
  }
}

