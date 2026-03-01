// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_api_access_key_api_access_key_args_doc}
/// The set of arguments for ApiAccessKey.
/// {@endtemplate}
/// {@macro pulumi_index_api_access_key_api_access_key_args_doc}
class ApiAccessKeyArgs {
  /// The New Relic account ID where the API access key will be created.
  final pulumi.Input<String>? accountId;
  /// Required if `key_type` is `INGEST`. Valid options are `BROWSER` or `LICENSE` (case-sensitive).
  final pulumi.Input<String>? ingestType;
  /// The type of API key to create. Valid options are `INGEST` or `USER` (case-sensitive).
  /// - If `key_type` is `INGEST`, then `ingest_type` must be specified.
  /// - If `key_type` is `USER`, then `user_id` must be specified.
  final pulumi.Input<String> keyType;
  /// The name of the API key.
  /// - **Note**: While `name` is optional, it is <b style="color:red;">\*\*strongly recommended\*\*</b> to provide a meaningful name for easier identification and management of keys. If a `name` is not provided, the API will assign a default name when processing the request to create the API key, which may cause unexpected drift in your Terraform state. To prevent this, it is best practice to always specify a `name`.
  final pulumi.Input<String>? name;
  /// Additional notes about the API access key.
  final pulumi.Input<String>? notes;
  /// Required if `key_type` is `USER`. The New Relic user ID for which the API access key will be created.
  final pulumi.Input<String>? userId;

  /// Creates a new [ApiAccessKeyArgs].
  /// [accountId] The New Relic account ID where the API access key will be created.
  /// [ingestType] Required if `key_type` is `INGEST`. Valid options are `BROWSER` or `LICENSE` (case-sensitive).
  /// [keyType] The type of API key to create. Valid options are `INGEST` or `USER` (case-sensitive).
  /// [name] The name of the API key.
  /// [notes] Additional notes about the API access key.
  /// [userId] Required if `key_type` is `USER`. The New Relic user ID for which the API access key will be created.
  ApiAccessKeyArgs({
    pulumi.Output<String>? accountId,
    pulumi.Output<String>? ingestType,
    required pulumi.Output<String> keyType,
    pulumi.Output<String>? name,
    pulumi.Output<String>? notes,
    pulumi.Output<String>? userId,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      ingestType = pulumi.Input.asOptionalInput<String>(ingestType),
      keyType = pulumi.Input.asInput<String>(keyType),
      name = pulumi.Input.asOptionalInput<String>(name),
      notes = pulumi.Input.asOptionalInput<String>(notes),
      userId = pulumi.Input.asOptionalInput<String>(userId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'ingestType': ?ingestType,
      'keyType': keyType,
      'name': ?name,
      'notes': ?notes,
      'userId': ?userId,
    };
  }

  factory ApiAccessKeyArgs.fromMap(Map<String, dynamic> map) {
    return ApiAccessKeyArgs(
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      ingestType: map['ingestType'] == null ? null : pulumi.Output.create<String>(map['ingestType'] as String),
      keyType: pulumi.Output.create<String>(map['keyType'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      notes: map['notes'] == null ? null : pulumi.Output.create<String>(map['notes'] as String),
      userId: map['userId'] == null ? null : pulumi.Output.create<String>(map['userId'] as String),
    );
  }
}

