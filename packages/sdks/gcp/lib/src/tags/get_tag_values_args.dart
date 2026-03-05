// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_tags_get_tag_values_get_tag_values_args_doc}
/// Arguments for getTagValues.
/// {@endtemplate}
/// {@macro pulumi_tags_get_tag_values_get_tag_values_args_doc}
class GetTagValuesArgs {
  /// The resource name of the parent tagKey in format `tagKey/{name}`.
  final pulumi.Input<String> parent;

  /// Creates a new [GetTagValuesArgs].
  /// [parent] The resource name of the parent tagKey in format `tagKey/{name}`.
  GetTagValuesArgs({
    required this.parent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parent': parent,
    };
  }

  factory GetTagValuesArgs.fromMap(Map<String, dynamic> map) {
    return GetTagValuesArgs(
      parent: pulumi.Input.fromValue(map['parent'] as String),
    );
  }
}

