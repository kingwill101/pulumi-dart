// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_tags_get_tag_value_get_tag_value_args_doc}
/// Arguments for getTagValue.
/// {@endtemplate}
/// {@macro pulumi_tags_get_tag_value_get_tag_value_args_doc}
class GetTagValueArgs {
  /// The resource name of the parent tagKey in format `tagKey/{name}`.
  final pulumi.Input<String> parent;
  /// The tag value's short_name.
  final pulumi.Input<String> shortName;

  /// Creates a new [GetTagValueArgs].
  /// [parent] The resource name of the parent tagKey in format `tagKey/{name}`.
  /// [shortName] The tag value's short_name.
  const GetTagValueArgs({
    required this.parent,
    required this.shortName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parent': parent,
      'shortName': shortName,
    };
  }

  factory GetTagValueArgs.fromMap(Map<String, dynamic> map) {
    return GetTagValueArgs(
      parent: pulumi.Input.fromValue(map['parent'] as String),
      shortName: pulumi.Input.fromValue(map['shortName'] as String),
    );
  }
}
