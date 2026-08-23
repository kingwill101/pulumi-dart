// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_tags_get_tag_keys_get_tag_keys_args_doc}
/// Arguments for getTagKeys.
/// {@endtemplate}
/// {@macro pulumi_tags_get_tag_keys_get_tag_keys_args_doc}
class GetTagKeysArgs {
  /// The resource name of the parent organization or project. It can be in format `organizations/{org_id}` or `projects/{project_id_or_number}`.
  final pulumi.Input<String> parent;

  /// Creates a new [GetTagKeysArgs].
  /// [parent] The resource name of the parent organization or project. It can be in format `organizations/{org_id}` or `projects/{project_id_or_number}`.
  const GetTagKeysArgs({
    required this.parent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parent': parent,
    };
  }

  factory GetTagKeysArgs.fromMap(Map<String, dynamic> map) {
    return GetTagKeysArgs(
      parent: pulumi.Input.fromValue(map['parent'] as String),
    );
  }
}
