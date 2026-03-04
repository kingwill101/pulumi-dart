// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_fast_application_fast_application_args_doc}
/// The set of arguments for FastApplication.
/// {@endtemplate}
/// {@macro pulumi_index_fast_application_fast_application_args_doc}
class FastApplicationArgs {
  /// Path/Filename of Declarative FAST JSON which is a json file used with builtin ```file``` function
  final pulumi.Input<String> fastJson;

  /// Name of installed FAST template used to create FAST application. This parameter is required when creating new resource.
  final pulumi.Input<String>? template;

  /// Creates a new [FastApplicationArgs].
  /// [fastJson] Path/Filename of Declarative FAST JSON which is a json file used with builtin ```file``` function
  /// [template] Name of installed FAST template used to create FAST application. This parameter is required when creating new resource.
  FastApplicationArgs({required this.fastJson, this.template});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'fastJson': fastJson, 'template': ?template};
  }

  factory FastApplicationArgs.fromMap(Map<String, dynamic> map) {
    return FastApplicationArgs(
      fastJson: pulumi.Input.fromValue(map['fastJson'] as String),
      template: (() {
        final guardedValue = map['template'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
