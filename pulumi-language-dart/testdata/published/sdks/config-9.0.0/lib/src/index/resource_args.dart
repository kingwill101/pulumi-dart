// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_resource_args_doc}
/// The set of arguments for Resource.
/// {@endtemplate}
/// {@macro pulumi_index_resource_args_doc}
class ResourceArgs {
  final pulumi.Input<String> text;

  /// Creates a new [ResourceArgs].
  /// [text] Required.
  const ResourceArgs({
    required this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'text': text,
    };
  }

  factory ResourceArgs.fromMap(Map<String, dynamic> map) {
    return ResourceArgs(
      text: pulumi.Input.fromValue(map['text'] as String),
    );
  }
}
