// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getCloudforceOneRequestPriority.
class GetCloudforceOneRequestPriorityResult {
  /// Identifier.
  final String? accountId;
  final String? completed;
  /// Request content.
  final String? content;
  final String? created;
  /// UUID.
  final String? id;
  /// Tokens for the request messages.
  final int? messageTokens;
  final String? priority;
  /// UUID.
  final String? priorityId;
  /// Readable Request ID.
  final String? readableId;
  /// Requested information from request.
  final String? request;
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

  /// Creates a new [GetCloudforceOneRequestPriorityResult].
  /// [accountId] Identifier.
  /// [completed] Optional.
  /// [content] Request content.
  /// [created] Optional.
  /// [id] UUID.
  /// [messageTokens] Tokens for the request messages.
  /// [priority] Optional.
  /// [priorityId] UUID.
  /// [readableId] Readable Request ID.
  /// [request] Requested information from request.
  /// [status] Request Status.
  /// [summary] Brief description of the request.
  /// [tlp] The CISA defined Traffic Light Protocol (TLP).
  /// [tokens] Tokens for the request.
  /// [updated] Optional.
  const GetCloudforceOneRequestPriorityResult({
    this.accountId,
    this.completed,
    this.content,
    this.created,
    this.id,
    this.messageTokens,
    this.priority,
    this.priorityId,
    this.readableId,
    this.request,
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
      'id': ?id,
      'messageTokens': ?messageTokens,
      'priority': ?priority,
      'priorityId': ?priorityId,
      'readableId': ?readableId,
      'request': ?request,
      'status': ?status,
      'summary': ?summary,
      'tlp': ?tlp,
      'tokens': ?tokens,
      'updated': ?updated,
    };
  }

  factory GetCloudforceOneRequestPriorityResult.fromMap(Map<String, dynamic> map) {
    return GetCloudforceOneRequestPriorityResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      completed: (() { final guardedValue = map['completed']; if (guardedValue == null) return null; return guardedValue as String; })(),
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return guardedValue as String; })(),
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      messageTokens: (() { final guardedValue = map['messageTokens']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return guardedValue as String; })(),
      priorityId: (() { final guardedValue = map['priorityId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      readableId: (() { final guardedValue = map['readableId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      request: (() { final guardedValue = map['request']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      summary: (() { final guardedValue = map['summary']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tlp: (() { final guardedValue = map['tlp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tokens: (() { final guardedValue = map['tokens']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      updated: (() { final guardedValue = map['updated']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
