// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCloudforceOneRequestsResult {
  /// Request completion time.
  final pulumi.Input<String> completed;
  /// Request creation time.
  final pulumi.Input<String> created;
  /// UUID.
  final pulumi.Input<String> id;
  /// Tokens for the request messages.
  final pulumi.Input<int> messageTokens;
  /// Available values: "routine", "high", "urgent".
  final pulumi.Input<String> priority;
  /// Readable Request ID.
  final pulumi.Input<String> readableId;
  /// Requested information from request.
  final pulumi.Input<String> request;
  /// Request Status.
  /// Available values: "open", "accepted", "reported", "approved", "completed", "declined".
  final pulumi.Input<String> status;
  /// Brief description of the request.
  final pulumi.Input<String> summary;
  /// The CISA defined Traffic Light Protocol (TLP).
  /// Available values: "clear", "amber", "amber-strict", "green", "red".
  final pulumi.Input<String> tlp;
  /// Tokens for the request.
  final pulumi.Input<int> tokens;
  /// Request last updated time.
  final pulumi.Input<String> updated;

  /// Creates a new [GetCloudforceOneRequestsResult].
  /// [completed] Request completion time.
  /// [created] Request creation time.
  /// [id] UUID.
  /// [messageTokens] Tokens for the request messages.
  /// [priority] Available values: "routine", "high", "urgent".
  /// [readableId] Readable Request ID.
  /// [request] Requested information from request.
  /// [status] Request Status.
  /// [summary] Brief description of the request.
  /// [tlp] The CISA defined Traffic Light Protocol (TLP).
  /// [tokens] Tokens for the request.
  /// [updated] Request last updated time.
  const GetCloudforceOneRequestsResult({
    required this.completed,
    required this.created,
    required this.id,
    required this.messageTokens,
    required this.priority,
    required this.readableId,
    required this.request,
    required this.status,
    required this.summary,
    required this.tlp,
    required this.tokens,
    required this.updated,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'completed': completed,
      'created': created,
      'id': id,
      'messageTokens': messageTokens,
      'priority': priority,
      'readableId': readableId,
      'request': request,
      'status': status,
      'summary': summary,
      'tlp': tlp,
      'tokens': tokens,
      'updated': updated,
    };
  }

  factory GetCloudforceOneRequestsResult.fromMap(Map<String, dynamic> map) {
    return GetCloudforceOneRequestsResult(
      completed: pulumi.Input.fromValue(map['completed'] as String),
      created: pulumi.Input.fromValue(map['created'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      messageTokens: pulumi.Input.fromValue((map['messageTokens'] as num).toInt()),
      priority: pulumi.Input.fromValue(map['priority'] as String),
      readableId: pulumi.Input.fromValue(map['readableId'] as String),
      request: pulumi.Input.fromValue(map['request'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      summary: pulumi.Input.fromValue(map['summary'] as String),
      tlp: pulumi.Input.fromValue(map['tlp'] as String),
      tokens: pulumi.Input.fromValue((map['tokens'] as num).toInt()),
      updated: pulumi.Input.fromValue(map['updated'] as String),
    );
  }
}
