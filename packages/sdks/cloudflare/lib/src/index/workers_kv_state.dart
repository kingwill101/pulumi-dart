// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering WorkersKv resources.
class WorkersKvState {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  /// A key's name. The name may be at most 512 bytes. All printable, non-whitespace characters are valid. Use percent-encoding to define key names as part of a URL.
  final pulumi.Input<String?>? keyName;
  /// Associates arbitrary JSON data with a key/value pair.
  final pulumi.Input<String?>? metadata;
  /// Namespace identifier tag.
  final pulumi.Input<String?>? namespaceId;
  /// A byte sequence to be stored, up to 25 MiB in length.
  final pulumi.Input<String?>? value;

  /// Creates a new [WorkersKvState].
  /// [accountId] Identifier.
  /// [keyName] A key's name. The name may be at most 512 bytes. All printable, non-whitespace characters are valid. Use percent-encoding to define key names as part of a URL.
  /// [metadata] Associates arbitrary JSON data with a key/value pair.
  /// [namespaceId] Namespace identifier tag.
  /// [value] A byte sequence to be stored, up to 25 MiB in length.
  const WorkersKvState({
    this.accountId,
    this.keyName,
    this.metadata,
    this.namespaceId,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'keyName': ?keyName,
      'metadata': ?metadata,
      'namespaceId': ?namespaceId,
      'value': ?value,
    };
  }

  factory WorkersKvState.fromMap(Map<String, dynamic> map) {
    return WorkersKvState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyName: (() { final guardedValue = map['keyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespaceId: (() { final guardedValue = map['namespaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
