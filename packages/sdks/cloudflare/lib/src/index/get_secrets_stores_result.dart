// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSecretsStoresResult {
  /// Account Identifier.
  final pulumi.Input<String> accountId;
  /// When the secret was created.
  final pulumi.Input<String> created;
  /// Store Identifier.
  final pulumi.Input<String> id;
  /// When the secret was modified.
  final pulumi.Input<String> modified;
  /// The name of the store.
  final pulumi.Input<String> name;

  /// Creates a new [GetSecretsStoresResult].
  /// [accountId] Account Identifier.
  /// [created] When the secret was created.
  /// [id] Store Identifier.
  /// [modified] When the secret was modified.
  /// [name] The name of the store.
  const GetSecretsStoresResult({
    required this.accountId,
    required this.created,
    required this.id,
    required this.modified,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'created': created,
      'id': id,
      'modified': modified,
      'name': name,
    };
  }

  factory GetSecretsStoresResult.fromMap(Map<String, dynamic> map) {
    return GetSecretsStoresResult(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      created: pulumi.Input.fromValue(map['created'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      modified: pulumi.Input.fromValue(map['modified'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
