// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_workers_kv_get_workers_kv_args_doc}
/// Arguments for getWorkersKv.
/// {@endtemplate}
/// {@macro pulumi_index_get_workers_kv_get_workers_kv_args_doc}
class GetWorkersKvArgs {
  /// ID of the Cloudflare account that owns the Workers KV namespaces.
  final pulumi.Input<String> accountId;
  /// A key's name. The name may be at most 512 bytes. All printable, non-whitespace characters are valid. Use percent-encoding to define key names as part of a URL.
  final pulumi.Input<String> keyName;
  /// ID of the Workers KV namespace.
  final pulumi.Input<String> namespaceId;

  /// Creates a new [GetWorkersKvArgs].
  /// [accountId] ID of the Cloudflare account that owns the Workers KV namespaces.
  /// [keyName] A key's name. The name may be at most 512 bytes. All printable, non-whitespace characters are valid. Use percent-encoding to define key names as part of a URL.
  /// [namespaceId] ID of the Workers KV namespace.
  const GetWorkersKvArgs({
    required this.accountId,
    required this.keyName,
    required this.namespaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'keyName': keyName,
      'namespaceId': namespaceId,
    };
  }

  factory GetWorkersKvArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkersKvArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      keyName: pulumi.Input.fromValue(map['keyName'] as String),
      namespaceId: pulumi.Input.fromValue(map['namespaceId'] as String),
    );
  }
}
