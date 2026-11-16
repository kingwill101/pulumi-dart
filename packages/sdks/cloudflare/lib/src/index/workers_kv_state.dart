// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering WorkersKv resources.
class WorkersKvState {
  /// ID of the Cloudflare account that owns the Workers KV namespaces.
  final pulumi.Input<String?>? accountId;
  /// Expires the key at a certain time, measured in number of seconds since the UNIX epoch.
  final pulumi.Input<double?>? expiration;
  /// Number of seconds until the key expires. Must be at least 60. Takes precedence over `expiration` when both are specified.
  final pulumi.Input<double?>? expirationTtl;
  /// A key's name. The name may be at most 512 bytes. All printable, non-whitespace characters are valid. Use percent-encoding to define key names as part of a URL.
  final pulumi.Input<String?>? keyName;
  /// Associates arbitrary JSON data with a key/value pair.
  final pulumi.Input<String?>? metadata;
  /// ID of the Workers KV namespace.
  final pulumi.Input<String?>? namespaceId;
  /// A byte sequence to be stored, up to 25 MiB in length.
  final pulumi.Input<String?>? value;

  /// Creates a new [WorkersKvState].
  /// [accountId] ID of the Cloudflare account that owns the Workers KV namespaces.
  /// [expiration] Expires the key at a certain time, measured in number of seconds since the UNIX epoch.
  /// [expirationTtl] Number of seconds until the key expires. Must be at least 60. Takes precedence over `expiration` when both are specified.
  /// [keyName] A key's name. The name may be at most 512 bytes. All printable, non-whitespace characters are valid. Use percent-encoding to define key names as part of a URL.
  /// [metadata] Associates arbitrary JSON data with a key/value pair.
  /// [namespaceId] ID of the Workers KV namespace.
  /// [value] A byte sequence to be stored, up to 25 MiB in length.
  const WorkersKvState({
    this.accountId,
    this.expiration,
    this.expirationTtl,
    this.keyName,
    this.metadata,
    this.namespaceId,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'expiration': ?expiration,
      'expirationTtl': ?expirationTtl,
      'keyName': ?keyName,
      'metadata': ?metadata,
      'namespaceId': ?namespaceId,
      'value': ?value,
    };
  }

  factory WorkersKvState.fromMap(Map<String, dynamic> map) {
    return WorkersKvState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expiration: (() { final guardedValue = map['expiration']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      expirationTtl: (() { final guardedValue = map['expirationTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      keyName: (() { final guardedValue = map['keyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespaceId: (() { final guardedValue = map['namespaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
