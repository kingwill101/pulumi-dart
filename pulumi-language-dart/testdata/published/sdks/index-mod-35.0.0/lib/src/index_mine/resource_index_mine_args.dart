// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_mine_resource_index_mine_args_doc}
/// The set of arguments for Resource.
/// {@endtemplate}
/// {@macro pulumi_index_mine_resource_index_mine_args_doc}
class ResourceIndexMineArgs {
  final pulumi.Input<String> text;

  /// Creates a new [ResourceIndexMineArgs].
  /// [text] Required.
  const ResourceIndexMineArgs({
    required this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'text': text,
    };
  }

  factory ResourceIndexMineArgs.fromMap(Map<String, dynamic> map) {
    return ResourceIndexMineArgs(
      text: pulumi.Input.fromValue(map['text'] as String),
    );
  }
}
