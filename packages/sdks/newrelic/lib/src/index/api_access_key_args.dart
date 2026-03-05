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
  /// - **Note**: While `name` is optional, it is &lt;b style="color:red;"&gt;\*\*strongly recommended\*\*&lt;/b&gt; to provide a meaningful name for easier identification and management of keys. If a `name` is not provided, the API will assign a default name when processing the request to create the API key, which may cause unexpected drift in your Terraform state. To prevent this, it is best practice to always specify a `name`.
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
    this.accountId,
    this.ingestType,
    required this.keyType,
    this.name,
    this.notes,
    this.userId,
  });

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
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ingestType: (() { final guardedValue = map['ingestType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyType: pulumi.Input.fromValue(map['keyType'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notes: (() { final guardedValue = map['notes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userId: (() { final guardedValue = map['userId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

