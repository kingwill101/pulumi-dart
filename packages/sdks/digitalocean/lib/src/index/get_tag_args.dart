// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_tag_get_tag_args_doc}
/// Arguments for getTag.
/// {@endtemplate}
/// {@macro pulumi_index_get_tag_get_tag_args_doc}
class GetTagArgs {
  /// The name of the tag.
  final pulumi.Input<String> name;

  /// Creates a new [GetTagArgs].
  /// [name] The name of the tag.
  GetTagArgs({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetTagArgs.fromMap(Map<String, dynamic> map) {
    return GetTagArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

