// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_workers_kv_namespace_workers_kv_namespace_args_doc}
/// The set of arguments for WorkersKvNamespace.
/// {@endtemplate}
/// {@macro pulumi_index_workers_kv_namespace_workers_kv_namespace_args_doc}
class WorkersKvNamespaceArgs {
  /// Identifier.
  final pulumi.Input<String> accountId;
  /// A human-readable string name for a Namespace.
  final pulumi.Input<String> title;

  /// Creates a new [WorkersKvNamespaceArgs].
  /// [accountId] Identifier.
  /// [title] A human-readable string name for a Namespace.
  const WorkersKvNamespaceArgs({
    required this.accountId,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'title': title,
    };
  }

  factory WorkersKvNamespaceArgs.fromMap(Map<String, dynamic> map) {
    return WorkersKvNamespaceArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      title: pulumi.Input.fromValue(map['title'] as String),
    );
  }
}
