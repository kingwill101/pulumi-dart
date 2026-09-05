// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SecretsStoreSecret resources.
class SecretsStoreSecretState {
  /// Account Identifier
  final pulumi.Input<String?>? accountId;
  /// Freeform text describing the secret
  final pulumi.Input<String?>? comment;
  /// When the secret was created.
  final pulumi.Input<String?>? created;
  /// When the secret was modified.
  final pulumi.Input<String?>? modified;
  /// The name of the secret
  final pulumi.Input<String?>? name;
  /// The list of services that can use this secret. Valid values are `workers`, `aiGateway`, `dex`, and `access`. Must be listed in alphabetical order.
  final pulumi.Input<List<String>?>? scopes;
  /// Available values: "pending", "active", "deleted".
  final pulumi.Input<String?>? status;
  /// Store Identifier
  final pulumi.Input<String?>? storeId;
  /// The value of the secret. Maximum 64 KiB (65,536 bytes). Note that this is 'write only' - no API response will provide this value, it is only used to create/modify secrets.
  final pulumi.Input<String?>? value;

  /// Creates a new [SecretsStoreSecretState].
  /// [accountId] Account Identifier
  /// [comment] Freeform text describing the secret
  /// [created] When the secret was created.
  /// [modified] When the secret was modified.
  /// [name] The name of the secret
  /// [scopes] The list of services that can use this secret. Valid values are `workers`, `aiGateway`, `dex`, and `access`. Must be listed in alphabetical order.
  /// [status] Available values: "pending", "active", "deleted".
  /// [storeId] Store Identifier
  /// [value] The value of the secret. Maximum 64 KiB (65,536 bytes). Note that this is 'write only' - no API response will provide this value, it is only used to create/modify secrets.
  const SecretsStoreSecretState({
    this.accountId,
    this.comment,
    this.created,
    this.modified,
    this.name,
    this.scopes,
    this.status,
    this.storeId,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'comment': ?comment,
      'created': ?created,
      'modified': ?modified,
      'name': ?name,
      'scopes': ?scopes,
      'status': ?status,
      'storeId': ?storeId,
      'value': ?value,
    };
  }

  factory SecretsStoreSecretState.fromMap(Map<String, dynamic> map) {
    return SecretsStoreSecretState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modified: (() { final guardedValue = map['modified']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scopes: (() { final guardedValue = map['scopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storeId: (() { final guardedValue = map['storeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
