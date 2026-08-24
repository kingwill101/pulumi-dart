// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSecretsStoreSecretsResult {
  /// Freeform text describing the secret.
  final pulumi.Input<String> comment;
  /// When the secret was created.
  final pulumi.Input<String> created;
  /// Secret identifier tag.
  final pulumi.Input<String> id;
  /// When the secret was modified.
  final pulumi.Input<String> modified;
  /// The name of the secret.
  final pulumi.Input<String> name;
  /// The list of services that can use this secret.
  final pulumi.Input<List<String>> scopes;
  /// Available values: "pending", "active", "deleted".
  final pulumi.Input<String> status;
  /// Store Identifier.
  final pulumi.Input<String> storeId;

  /// Creates a new [GetSecretsStoreSecretsResult].
  /// [comment] Freeform text describing the secret.
  /// [created] When the secret was created.
  /// [id] Secret identifier tag.
  /// [modified] When the secret was modified.
  /// [name] The name of the secret.
  /// [scopes] The list of services that can use this secret.
  /// [status] Available values: "pending", "active", "deleted".
  /// [storeId] Store Identifier.
  const GetSecretsStoreSecretsResult({
    required this.comment,
    required this.created,
    required this.id,
    required this.modified,
    required this.name,
    required this.scopes,
    required this.status,
    required this.storeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': comment,
      'created': created,
      'id': id,
      'modified': modified,
      'name': name,
      'scopes': scopes,
      'status': status,
      'storeId': storeId,
    };
  }

  factory GetSecretsStoreSecretsResult.fromMap(Map<String, dynamic> map) {
    return GetSecretsStoreSecretsResult(
      comment: pulumi.Input.fromValue(map['comment'] as String),
      created: pulumi.Input.fromValue(map['created'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      modified: pulumi.Input.fromValue(map['modified'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      scopes: pulumi.Input.fromValue((map['scopes'] as List).cast<String>()),
      status: pulumi.Input.fromValue(map['status'] as String),
      storeId: pulumi.Input.fromValue(map['storeId'] as String),
    );
  }
}
