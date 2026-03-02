// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ApiAccessKey resources.
class ApiAccessKeyState {
  /// The New Relic account ID where the API access key will be created.
  final pulumi.Input<String>? accountId;
  /// Required if `key_type` is `INGEST`. Valid options are `BROWSER` or `LICENSE` (case-sensitive).
  final pulumi.Input<String>? ingestType;
  /// The actual API key.
  /// - It is important to exercise caution when exporting the value of `key`, as it is sensitive information. Avoid logging or exposing it inappropriately.
  final pulumi.Input<String>? key;
  /// The type of API key to create. Valid options are `INGEST` or `USER` (case-sensitive).
  /// - If `key_type` is `INGEST`, then `ingest_type` must be specified.
  /// - If `key_type` is `USER`, then `user_id` must be specified.
  final pulumi.Input<String>? keyType;
  /// The name of the API key.
  /// - **Note**: While `name` is optional, it is <b style="color:red;">\*\*strongly recommended\*\*</b> to provide a meaningful name for easier identification and management of keys. If a `name` is not provided, the API will assign a default name when processing the request to create the API key, which may cause unexpected drift in your Terraform state. To prevent this, it is best practice to always specify a `name`.
  final pulumi.Input<String>? name;
  /// Additional notes about the API access key.
  final pulumi.Input<String>? notes;
  /// Required if `key_type` is `USER`. The New Relic user ID for which the API access key will be created.
  final pulumi.Input<String>? userId;

  /// Creates a new [ApiAccessKeyState].
  /// [accountId] The New Relic account ID where the API access key will be created.
  /// [ingestType] Required if `key_type` is `INGEST`. Valid options are `BROWSER` or `LICENSE` (case-sensitive).
  /// [key] The actual API key.
  /// [keyType] The type of API key to create. Valid options are `INGEST` or `USER` (case-sensitive).
  /// [name] The name of the API key.
  /// [notes] Additional notes about the API access key.
  /// [userId] Required if `key_type` is `USER`. The New Relic user ID for which the API access key will be created.
  ApiAccessKeyState({
    this.accountId,
    this.ingestType,
    this.key,
    this.keyType,
    this.name,
    this.notes,
    this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'ingestType': ?ingestType,
      'key': ?key,
      'keyType': ?keyType,
      'name': ?name,
      'notes': ?notes,
      'userId': ?userId,
    };
  }

  factory ApiAccessKeyState.fromMap(Map<String, dynamic> map) {
    return ApiAccessKeyState(
      accountId: map['accountId'] == null ? null : (map['accountId'] as String).input(),
      ingestType: map['ingestType'] == null ? null : (map['ingestType'] as String).input(),
      key: map['key'] == null ? null : (map['key'] as String).input(),
      keyType: map['keyType'] == null ? null : (map['keyType'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      notes: map['notes'] == null ? null : (map['notes'] as String).input(),
      userId: map['userId'] == null ? null : (map['userId'] as String).input(),
    );
  }
}

