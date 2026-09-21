// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_workers_kv_namespace_workers_kv_namespace_args_doc}
/// The set of arguments for WorkersKvNamespace.
/// {@endtemplate}
/// {@macro pulumi_index_workers_kv_namespace_workers_kv_namespace_args_doc}
class WorkersKvNamespaceArgs {
  /// Identifier.
  final pulumi.Input<String> accountId;
  /// Specify the jurisdiction to restrict the KV namespace to durably store data within. Can only be set at namespace creation time.
  /// Available values: "eu", "fedramp", "us".
  final pulumi.Input<String?>? jurisdiction;
  /// A human-readable string name for a Namespace.
  final pulumi.Input<String> title;

  /// Creates a new [WorkersKvNamespaceArgs].
  /// [accountId] Identifier.
  /// [jurisdiction] Specify the jurisdiction to restrict the KV namespace to durably store data within. Can only be set at namespace creation time.
  /// [title] A human-readable string name for a Namespace.
  const WorkersKvNamespaceArgs({
    required this.accountId,
    this.jurisdiction,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'jurisdiction': ?jurisdiction,
      'title': title,
    };
  }

  factory WorkersKvNamespaceArgs.fromMap(Map<String, dynamic> map) {
    return WorkersKvNamespaceArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      jurisdiction: (() { final guardedValue = map['jurisdiction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      title: pulumi.Input.fromValue(map['title'] as String),
    );
  }
}
