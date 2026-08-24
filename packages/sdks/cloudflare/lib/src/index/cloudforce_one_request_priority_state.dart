// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CloudforceOneRequestPriority resources.
class CloudforceOneRequestPriorityState {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<String?>? completed;
  /// Request content.
  final pulumi.Input<String?>? content;
  final pulumi.Input<String?>? created;
  /// List of labels.
  final pulumi.Input<List<String>?>? labels;
  /// Tokens for the request messages.
  final pulumi.Input<int?>? messageTokens;
  /// Priority.
  final pulumi.Input<int?>? priority;
  /// Readable Request ID.
  final pulumi.Input<String?>? readableId;
  /// Requested information from request.
  final pulumi.Input<String?>? request;
  /// Requirement.
  final pulumi.Input<String?>? requirement;
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

  /// Creates a new [CloudforceOneRequestPriorityState].
  /// [accountId] Identifier.
  /// [completed] Optional.
  /// [content] Request content.
  /// [created] Optional.
  /// [labels] List of labels.
  /// [messageTokens] Tokens for the request messages.
  /// [priority] Priority.
  /// [readableId] Readable Request ID.
  /// [request] Requested information from request.
  /// [requirement] Requirement.
  /// [status] Request Status.
  /// [summary] Brief description of the request.
  /// [tlp] The CISA defined Traffic Light Protocol (TLP).
  /// [tokens] Tokens for the request.
  /// [updated] Optional.
  const CloudforceOneRequestPriorityState({
    this.accountId,
    this.completed,
    this.content,
    this.created,
    this.labels,
    this.messageTokens,
    this.priority,
    this.readableId,
    this.request,
    this.requirement,
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
      'labels': ?labels,
      'messageTokens': ?messageTokens,
      'priority': ?priority,
      'readableId': ?readableId,
      'request': ?request,
      'requirement': ?requirement,
      'status': ?status,
      'summary': ?summary,
      'tlp': ?tlp,
      'tokens': ?tokens,
      'updated': ?updated,
    };
  }

  factory CloudforceOneRequestPriorityState.fromMap(Map<String, dynamic> map) {
    return CloudforceOneRequestPriorityState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      completed: (() { final guardedValue = map['completed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      messageTokens: (() { final guardedValue = map['messageTokens']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      readableId: (() { final guardedValue = map['readableId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      request: (() { final guardedValue = map['request']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requirement: (() { final guardedValue = map['requirement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      summary: (() { final guardedValue = map['summary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tlp: (() { final guardedValue = map['tlp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tokens: (() { final guardedValue = map['tokens']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      updated: (() { final guardedValue = map['updated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
