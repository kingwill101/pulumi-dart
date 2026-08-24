// ignore_for_file: unused_element, unnecessary_cast

import 'get_cloudforce_one_request_filter.dart';

/// Result data returned by getCloudforceOneRequest.
class GetCloudforceOneRequestResult {
  /// Identifier.
  final String? accountId;
  final String? completed;
  /// Request content.
  final String? content;
  final String? created;
  final GetCloudforceOneRequestFilter? filter;
  /// UUID.
  final String? id;
  /// Tokens for the request messages.
  final int? messageTokens;
  final String? priority;
  /// Readable Request ID.
  final String? readableId;
  /// Requested information from request.
  final String? request;
  /// UUID.
  final String? requestId;
  /// Request Status.
  /// Available values: "open", "accepted", "reported", "approved", "completed", "declined".
  final String? status;
  /// Brief description of the request.
  final String? summary;
  /// The CISA defined Traffic Light Protocol (TLP).
  /// Available values: "clear", "amber", "amber-strict", "green", "red".
  final String? tlp;
  /// Tokens for the request.
  final int? tokens;
  final String? updated;

  /// Creates a new [GetCloudforceOneRequestResult].
  /// [accountId] Identifier.
  /// [completed] Optional.
  /// [content] Request content.
  /// [created] Optional.
  /// [filter] Optional.
  /// [id] UUID.
  /// [messageTokens] Tokens for the request messages.
  /// [priority] Optional.
  /// [readableId] Readable Request ID.
  /// [request] Requested information from request.
  /// [requestId] UUID.
  /// [status] Request Status.
  /// [summary] Brief description of the request.
  /// [tlp] The CISA defined Traffic Light Protocol (TLP).
  /// [tokens] Tokens for the request.
  /// [updated] Optional.
  const GetCloudforceOneRequestResult({
    this.accountId,
    this.completed,
    this.content,
    this.created,
    this.filter,
    this.id,
    this.messageTokens,
    this.priority,
    this.readableId,
    this.request,
    this.requestId,
    this.status,
    this.summary,
    this.tlp,
    this.tokens,
    this.updated,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'completed': ?completed,
      'content': ?content,
      'created': ?created,
      'filter': ?filter?.toMap(),
      'id': ?id,
      'messageTokens': ?messageTokens,
      'priority': ?priority,
      'readableId': ?readableId,
      'request': ?request,
      'requestId': ?requestId,
      'status': ?status,
      'summary': ?summary,
      'tlp': ?tlp,
      'tokens': ?tokens,
      'updated': ?updated,
    };
  }

  factory GetCloudforceOneRequestResult.fromMap(Map<String, dynamic> map) {
    return GetCloudforceOneRequestResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      completed: (() { final guardedValue = map['completed']; if (guardedValue == null) return null; return guardedValue as String; })(),
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return guardedValue as String; })(),
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetCloudforceOneRequestFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      messageTokens: (() { final guardedValue = map['messageTokens']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return guardedValue as String; })(),
      readableId: (() { final guardedValue = map['readableId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      request: (() { final guardedValue = map['request']; if (guardedValue == null) return null; return guardedValue as String; })(),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      summary: (() { final guardedValue = map['summary']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tlp: (() { final guardedValue = map['tlp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tokens: (() { final guardedValue = map['tokens']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      updated: (() { final guardedValue = map['updated']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
