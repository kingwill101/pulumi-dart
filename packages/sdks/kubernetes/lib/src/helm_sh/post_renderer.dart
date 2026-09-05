// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specification defining the post-renderer to use.
class PostRenderer {
  /// Arguments to pass to the post-renderer command.
  final pulumi.Input<List<String>?>? args;
  /// Path to an executable to be used for post rendering.
  final pulumi.Input<String> command;

  /// Creates a new [PostRenderer].
  /// [args] Arguments to pass to the post-renderer command.
  /// [command] Path to an executable to be used for post rendering.
  const PostRenderer({
    this.args,
    required this.command,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?args,
      'command': command,
    };
  }

  factory PostRenderer.fromMap(Map<String, dynamic> map) {
    return PostRenderer(
      args: (() { final guardedValue = map['args']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      command: pulumi.Input.fromValue(map['command'] as String),
    );
  }
}
