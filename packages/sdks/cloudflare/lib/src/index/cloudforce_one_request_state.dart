// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CloudforceOneRequest resources.
class CloudforceOneRequestState {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<String?>? completed;
  /// Request content.
  final pulumi.Input<String?>? content;
  final pulumi.Input<String?>? created;
  /// Tokens for the request messages.
  final pulumi.Input<int?>? messageTokens;
  /// Priority for analyzing the request.
  final pulumi.Input<String?>? priority;
  /// Readable Request ID.
  final pulumi.Input<String?>? readableId;
  /// Requested information from request.
  final pulumi.Input<String?>? request;
  /// Requested information from request.
  final pulumi.Input<String?>? requestType;
  /// Request Status.
  /// Available values: "open", "accepted", "reported", "approved", "completed", "declined".
  final pulumi.Input<String?>? status;
  /// Brief description of the request.
  final pulumi.Input<String?>? summary;
  /// The CISA defined Traffic Light Protocol (TLP).
  /// Available values: "clear", "amber", "amber-strict", "green", "red".
  final pulumi.Input<String?>? tlp;
  /// Tokens for the request.
  final pulumi.Input<int?>? tokens;
  final pulumi.Input<String?>? updated;

  /// Creates a new [CloudforceOneRequestState].
  /// [accountId] Identifier.
  /// [completed] Optional.
  /// [content] Request content.
  /// [created] Optional.
  /// [messageTokens] Tokens for the request messages.
  /// [priority] Priority for analyzing the request.
  /// [readableId] Readable Request ID.
  /// [request] Requested information from request.
  /// [requestType] Requested information from request.
  /// [status] Request Status.
  /// [summary] Brief description of the request.
  /// [tlp] The CISA defined Traffic Light Protocol (TLP).
  /// [tokens] Tokens for the request.
  /// [updated] Optional.
  const CloudforceOneRequestState({
    this.accountId,
    this.completed,
    this.content,
    this.created,
    this.messageTokens,
    this.priority,
    this.readableId,
    this.request,
    this.requestType,
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
      'messageTokens': ?messageTokens,
      'priority': ?priority,
      'readableId': ?readableId,
      'request': ?request,
      'requestType': ?requestType,
      'status': ?status,
      'summary': ?summary,
      'tlp': ?tlp,
      'tokens': ?tokens,
      'updated': ?updated,
    };
  }

  factory CloudforceOneRequestState.fromMap(Map<String, dynamic> map) {
    return CloudforceOneRequestState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      completed: (() { final guardedValue = map['completed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      messageTokens: (() { final guardedValue = map['messageTokens']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      readableId: (() { final guardedValue = map['readableId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      request: (() { final guardedValue = map['request']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestType: (() { final guardedValue = map['requestType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      summary: (() { final guardedValue = map['summary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tlp: (() { final guardedValue = map['tlp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tokens: (() { final guardedValue = map['tokens']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      updated: (() { final guardedValue = map['updated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
