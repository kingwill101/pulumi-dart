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
    pulumi.Output<String>? accountId,
    pulumi.Output<String>? ingestType,
    pulumi.Output<String>? key,
    pulumi.Output<String>? keyType,
    pulumi.Output<String>? name,
    pulumi.Output<String>? notes,
    pulumi.Output<String>? userId,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      ingestType = pulumi.Input.asOptionalInput<String>(ingestType),
      key = pulumi.Input.asOptionalInput<String>(key),
      keyType = pulumi.Input.asOptionalInput<String>(keyType),
      name = pulumi.Input.asOptionalInput<String>(name),
      notes = pulumi.Input.asOptionalInput<String>(notes),
      userId = pulumi.Input.asOptionalInput<String>(userId);

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
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      ingestType: map['ingestType'] == null ? null : pulumi.Output.create<String>(map['ingestType'] as String),
      key: map['key'] == null ? null : pulumi.Output.create<String>(map['key'] as String),
      keyType: map['keyType'] == null ? null : pulumi.Output.create<String>(map['keyType'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      notes: map['notes'] == null ? null : pulumi.Output.create<String>(map['notes'] as String),
      userId: map['userId'] == null ? null : pulumi.Output.create<String>(map['userId'] as String),
    );
  }
}

