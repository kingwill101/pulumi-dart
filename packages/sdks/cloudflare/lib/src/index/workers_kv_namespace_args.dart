// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_workers_kv_namespace_workers_kv_namespace_args_doc}
/// The set of arguments for WorkersKvNamespace.
/// {@endtemplate}
/// {@macro pulumi_index_workers_kv_namespace_workers_kv_namespace_args_doc}
class WorkersKvNamespaceArgs {
  /// ID of the Cloudflare account that owns the Workers KV namespaces.
  final pulumi.Input<String> accountId;
  /// Specify the jurisdiction to restrict the KV namespace to durably store data within. Can only be set at namespace creation time.
  /// Available values: "eu", "fedramp", "us".
  final pulumi.Input<String?>? jurisdiction;
  /// The mode of the Workers KV namespace. Specify `instant` when creating a namespace to create a KV Instant namespace. Omit this field when creating a namespace to create a classic namespace. Currently, `instant` is the only supported explicit value.
  /// Available values: "instant".
  final pulumi.Input<String?>? mode;
  /// Human-readable string name for a Workers KV namespace.
  final pulumi.Input<String> title;

  /// Creates a new [WorkersKvNamespaceArgs].
  /// [accountId] ID of the Cloudflare account that owns the Workers KV namespaces.
  /// [jurisdiction] Specify the jurisdiction to restrict the KV namespace to durably store data within. Can only be set at namespace creation time.
  /// [mode] The mode of the Workers KV namespace. Specify `instant` when creating a namespace to create a KV Instant namespace. Omit this field when creating a namespace to create a classic namespace. Currently, `instant` is the only supported explicit value.
  /// [title] Human-readable string name for a Workers KV namespace.
  const WorkersKvNamespaceArgs({
    required this.accountId,
    this.jurisdiction,
    this.mode,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'jurisdiction': ?jurisdiction,
      'mode': ?mode,
      'title': title,
    };
  }

  factory WorkersKvNamespaceArgs.fromMap(Map<String, dynamic> map) {
    return WorkersKvNamespaceArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      jurisdiction: (() { final guardedValue = map['jurisdiction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      title: pulumi.Input.fromValue(map['title'] as String),
    );
  }
}
