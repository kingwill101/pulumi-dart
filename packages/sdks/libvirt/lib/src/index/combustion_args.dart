// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_combustion_combustion_args_doc}
/// The set of arguments for Combustion.
/// {@endtemplate}
/// {@macro pulumi_index_combustion_combustion_args_doc}
class CombustionArgs {
  /// Combustion script content (shell script)
  final pulumi.Input<String> content;
  /// Name for this combustion resource
  final pulumi.Input<String>? name;

  /// Creates a new [CombustionArgs].
  /// [content] Combustion script content (shell script)
  /// [name] Name for this combustion resource
  CombustionArgs({
    required this.content,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'name': ?name,
    };
  }

  factory CombustionArgs.fromMap(Map<String, dynamic> map) {
    return CombustionArgs(
      content: pulumi.Input.fromValue(map['content'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

