// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_text_args_doc}
/// Arguments for getText.
/// {@endtemplate}
/// {@macro pulumi_index_get_text_args_doc}
class GetTextArgs {
  final pulumi.Input<String> text;

  /// Creates a new [GetTextArgs].
  /// [text] Required.
  const GetTextArgs({
    required this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'text': text,
    };
  }

  factory GetTextArgs.fromMap(Map<String, dynamic> map) {
    return GetTextArgs(
      text: pulumi.Input.fromValue(map['text'] as String),
    );
  }
}
