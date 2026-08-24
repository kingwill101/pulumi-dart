// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_workers_kv_workers_kv_args_doc}
/// The set of arguments for WorkersKv.
/// {@endtemplate}
/// {@macro pulumi_index_workers_kv_workers_kv_args_doc}
class WorkersKvArgs {
  /// Identifier.
  final pulumi.Input<String> accountId;
  /// A key's name. The name may be at most 512 bytes. All printable, non-whitespace characters are valid. Use percent-encoding to define key names as part of a URL.
  final pulumi.Input<String> keyName;
  /// Associates arbitrary JSON data with a key/value pair.
  final pulumi.Input<String?>? metadata;
  /// Namespace identifier tag.
  final pulumi.Input<String> namespaceId;
  /// A byte sequence to be stored, up to 25 MiB in length.
  final pulumi.Input<String> value;

  /// Creates a new [WorkersKvArgs].
  /// [accountId] Identifier.
  /// [keyName] A key's name. The name may be at most 512 bytes. All printable, non-whitespace characters are valid. Use percent-encoding to define key names as part of a URL.
  /// [metadata] Associates arbitrary JSON data with a key/value pair.
  /// [namespaceId] Namespace identifier tag.
  /// [value] A byte sequence to be stored, up to 25 MiB in length.
  const WorkersKvArgs({
    required this.accountId,
    required this.keyName,
    this.metadata,
    required this.namespaceId,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'keyName': keyName,
      'metadata': ?metadata,
      'namespaceId': namespaceId,
      'value': value,
    };
  }

  factory WorkersKvArgs.fromMap(Map<String, dynamic> map) {
    return WorkersKvArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      keyName: pulumi.Input.fromValue(map['keyName'] as String),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespaceId: pulumi.Input.fromValue(map['namespaceId'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
