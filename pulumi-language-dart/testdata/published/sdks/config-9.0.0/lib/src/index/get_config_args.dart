// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_config_args_doc}
/// Arguments for getConfig.
/// {@endtemplate}
/// {@macro pulumi_index_get_config_args_doc}
class GetConfigArgs {
  final pulumi.Input<String> text;

  /// Creates a new [GetConfigArgs].
  /// [text] Required.
  const GetConfigArgs({
    required this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'text': text,
    };
  }

  factory GetConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetConfigArgs(
      text: pulumi.Input.fromValue(map['text'] as String),
    );
  }
}
