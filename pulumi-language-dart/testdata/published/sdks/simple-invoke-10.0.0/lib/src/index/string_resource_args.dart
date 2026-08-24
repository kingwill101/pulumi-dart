// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_string_resource_args_doc}
/// The set of arguments for StringResource.
/// {@endtemplate}
/// {@macro pulumi_index_string_resource_args_doc}
class StringResourceArgs {
  final pulumi.Input<String> text;

  /// Creates a new [StringResourceArgs].
  /// [text] Required.
  const StringResourceArgs({
    required this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'text': text,
    };
  }

  factory StringResourceArgs.fromMap(Map<String, dynamic> map) {
    return StringResourceArgs(
      text: pulumi.Input.fromValue(map['text'] as String),
    );
  }
}
