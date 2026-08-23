// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMcpServerToolAnnotation {
  /// If true, the tool may perform destructive updates to its environment. If false, the tool performs only additive updates.
  final pulumi.Input<bool> destructiveHint;
  /// If true, calling the tool repeatedly with the same arguments will have no additional effect on the its environment.
  final pulumi.Input<bool> idempotentHint;
  /// If true, this tool may interact with an “open world” of external entities. If false, the tool’s domain of interaction is closed. For example, the world of a web search tool is open, whereas that of a memory tool is not
  final pulumi.Input<bool> openWorldHint;
  /// If true, the tool does not modify its environment.
  final pulumi.Input<bool> readOnlyHint;
  /// A human-readable title for the tool.
  final pulumi.Input<String> title;

  /// Creates a new [GetMcpServerToolAnnotation].
  /// [destructiveHint] If true, the tool may perform destructive updates to its environment. If false, the tool performs only additive updates.
  /// [idempotentHint] If true, calling the tool repeatedly with the same arguments will have no additional effect on the its environment.
  /// [openWorldHint] If true, this tool may interact with an “open world” of external entities. If false, the tool’s domain of interaction is closed. For example, the world of a web search tool is open, whereas that of a memory tool is not
  /// [readOnlyHint] If true, the tool does not modify its environment.
  /// [title] A human-readable title for the tool.
  const GetMcpServerToolAnnotation({
    required this.destructiveHint,
    required this.idempotentHint,
    required this.openWorldHint,
    required this.readOnlyHint,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destructiveHint': destructiveHint,
      'idempotentHint': idempotentHint,
      'openWorldHint': openWorldHint,
      'readOnlyHint': readOnlyHint,
      'title': title,
    };
  }

  factory GetMcpServerToolAnnotation.fromMap(Map<String, dynamic> map) {
    return GetMcpServerToolAnnotation(
      destructiveHint: pulumi.Input.fromValue(map['destructiveHint'] as bool),
      idempotentHint: pulumi.Input.fromValue(map['idempotentHint'] as bool),
      openWorldHint: pulumi.Input.fromValue(map['openWorldHint'] as bool),
      readOnlyHint: pulumi.Input.fromValue(map['readOnlyHint'] as bool),
      title: pulumi.Input.fromValue(map['title'] as String),
    );
  }
}
