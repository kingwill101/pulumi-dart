// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_workers_kv_workers_kv_args_doc}
/// The set of arguments for WorkersKv.
/// {@endtemplate}
/// {@macro pulumi_index_workers_kv_workers_kv_args_doc}
class WorkersKvArgs {
  /// ID of the Cloudflare account that owns the Workers KV namespaces.
  final pulumi.Input<String> accountId;
  /// Expires the key at a certain time, measured in number of seconds since the UNIX epoch.
  final pulumi.Input<double?>? expiration;
  /// Expires the key after a number of seconds. Must be at least 60.
  final pulumi.Input<double?>? expirationTtl;
  /// A key's name. The name may be at most 512 bytes. All printable, non-whitespace characters are valid. Use percent-encoding to define key names as part of a URL.
  final pulumi.Input<String> keyName;
  /// Associates arbitrary JSON data with a key/value pair.
  final pulumi.Input<String?>? metadata;
  /// ID of the Workers KV namespace.
  final pulumi.Input<String> namespaceId;
  /// A byte sequence to be stored, up to 25 MiB in length.
  final pulumi.Input<String> value;

  /// Creates a new [WorkersKvArgs].
  /// [accountId] ID of the Cloudflare account that owns the Workers KV namespaces.
  /// [expiration] Expires the key at a certain time, measured in number of seconds since the UNIX epoch.
  /// [expirationTtl] Expires the key after a number of seconds. Must be at least 60.
  /// [keyName] A key's name. The name may be at most 512 bytes. All printable, non-whitespace characters are valid. Use percent-encoding to define key names as part of a URL.
  /// [metadata] Associates arbitrary JSON data with a key/value pair.
  /// [namespaceId] ID of the Workers KV namespace.
  /// [value] A byte sequence to be stored, up to 25 MiB in length.
  const WorkersKvArgs({
    required this.accountId,
    this.expiration,
    this.expirationTtl,
    required this.keyName,
    this.metadata,
    required this.namespaceId,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'expiration': ?expiration,
      'expirationTtl': ?expirationTtl,
      'keyName': keyName,
      'metadata': ?metadata,
      'namespaceId': namespaceId,
      'value': value,
    };
  }

  factory WorkersKvArgs.fromMap(Map<String, dynamic> map) {
    return WorkersKvArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      expiration: (() { final guardedValue = map['expiration']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      expirationTtl: (() { final guardedValue = map['expirationTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      keyName: pulumi.Input.fromValue(map['keyName'] as String),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespaceId: pulumi.Input.fromValue(map['namespaceId'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
